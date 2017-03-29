/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*-    */
/* ex: set filetype=cpp softtabstop=4 shiftwidth=4 tabstop=4 cindent expandtab: */

/*
  Author(s):  Zihan Chen, Anton Deguet
  Created on: 2013-02-20
  (C) Copyright 2013-2016 Johns Hopkins University (JHU), All Rights Reserved.
--- begin cisst license - do not edit ---
This software is provided "as is" under an open source license, with
no warranty.  The complete license can be found in license.txt and
http://www.cisst.org/cisst/license.txt.
--- end cisst license ---
*/


// system include
#include <iostream>
#include <fstream>
#include <time.h>
#include <string>
// cisst
#include <sawIntuitiveResearchKit/mtsTeleOperationPSM.h>
#include <cisstMultiTask/mtsInterfaceProvided.h>
#include <cisstMultiTask/mtsInterfaceRequired.h>
#include <cisstParameterTypes/prmForceCartesianSet.h>
#include <queue> 
#include <chrono>

using namespace std::chrono;

std::string filename;
bool first=true;
CMN_IMPLEMENT_SERVICES_DERIVED_ONEARG(mtsTeleOperationPSM, mtsTaskPeriodic, mtsTaskPeriodicConstructorArg);
std::ofstream myfile;
std::string extension(".txt");
mtsTeleOperationPSM::mtsTeleOperationPSM(const std::string & componentName, const double periodInSeconds):
mtsTaskPeriodic(componentName, periodInSeconds),
mMTM(0),
mPSM(0),
mTeleopState("DISABLED")
{
	Init();
}

mtsTeleOperationPSM::mtsTeleOperationPSM(const mtsTaskPeriodicConstructorArg & arg):
mtsTaskPeriodic(arg),
mMTM(0),
mPSM(0),
mTeleopState("DISABLED")
{
	Init();
}

mtsTeleOperationPSM::~mtsTeleOperationPSM()
{
	if (mMTM) {
		delete mMTM;
	}
	if (mPSM) {
		delete mPSM;
	}
}

void mtsTeleOperationPSM::Init(void)
{
	if (!mMTM) {
		mMTM = new RobotMTM;
	}
	if (!mPSM) {
		mPSM = new RobotPSM;
	}
}

void mtsTeleOperationPSM::Configure(const std::string & CMN_UNUSED(filename))
{
	
	
	// myfile << "This is the first cell in the first column.\n";
	// myfile.close();
    // configure state machine0
	mTeleopState.AddState("DISABLED");
	mTeleopState.AddState("SETTING_PSM_STATE");
	mTeleopState.AddState("SETTING_MTM_STATE");
	mTeleopState.AddState("ALIGNING_MTM");
	mTeleopState.AddState("ENABLED");
	mTeleopState.AddAllowedDesiredState("ENABLED");
	mTeleopState.AddAllowedDesiredState("ALIGNING_MTM");
	mTeleopState.AddAllowedDesiredState("DISABLED");

    // state change, to convert to string events for users (Qt, ROS)
	mTeleopState.SetStateChangedCallback(&mtsTeleOperationPSM::StateChanged,
		this);

    // run for all states
	mTeleopState.SetRunCallback(&mtsTeleOperationPSM::RunAllStates,
		this);

    // disabled
	mTeleopState.SetTransitionCallback("DISABLED",
		&mtsTeleOperationPSM::TransitionDisabled,
		this);

    // setting ECM state
	mTeleopState.SetEnterCallback("SETTING_PSM_STATE",
		&mtsTeleOperationPSM::EnterSettingPSMState,
		this);
	mTeleopState.SetTransitionCallback("SETTING_PSM_STATE",
		&mtsTeleOperationPSM::TransitionSettingPSMState,
		this);

    // setting MTM state
	mTeleopState.SetEnterCallback("SETTING_MTM_STATE",
		&mtsTeleOperationPSM::EnterSettingMTMState,
		this);
	mTeleopState.SetTransitionCallback("SETTING_MTM_STATE",
		&mtsTeleOperationPSM::TransitionSettingMTMState,
		this);

    // aligning MTM
	mTeleopState.SetEnterCallback("ALIGNING_MTM",
		&mtsTeleOperationPSM::EnterAligningMTM,
		this);
	mTeleopState.SetTransitionCallback("ALIGNING_MTM",
		&mtsTeleOperationPSM::TransitionAligningMTM,
		this);

    // enabled
	mTeleopState.SetEnterCallback("ENABLED",
		&mtsTeleOperationPSM::EnterEnabled,
		this);
	mTeleopState.SetRunCallback("ENABLED",
		&mtsTeleOperationPSM::RunEnabled,
		this);
	mTeleopState.SetTransitionCallback("ENABLED",
		&mtsTeleOperationPSM::TransitionEnabled,
		this);

	mScale = 0.2;
	mIsClutched = false;

	mRotationLocked = false;
	mTranslationLocked = false;

	this->StateTable.AddData(mMTM->PositionCartesianCurrent, "MTMCartesianPositionCurrent");
	this->StateTable.AddData(mMTM->PositionCartesianDesired, "MTMCartesianPositionDesired");
	this->StateTable.AddData(mPSM->PositionCartesianCurrent, "PSMCartesianPosition");

	mConfigurationStateTable = new mtsStateTable(100, "Configuration");
	mConfigurationStateTable->SetAutomaticAdvance(false);
	this->AddStateTable(mConfigurationStateTable);
	mConfigurationStateTable->AddData(mScale, "Scale");
	mConfigurationStateTable->AddData(mRegistrationRotation, "RegistrationRotation");
	mConfigurationStateTable->AddData(mRotationLocked, "RotationLocked");
	mConfigurationStateTable->AddData(mTranslationLocked, "TranslationLocked");

    // setup cisst interfaces
	mtsInterfaceRequired * interfaceRequired = AddInterfaceRequired("MTM");
	if (interfaceRequired) {
		interfaceRequired->AddFunction("GetPositionCartesian", mMTM->GetPositionCartesian);
		interfaceRequired->AddFunction("GetPositionCartesianDesired", mMTM->GetPositionCartesianDesired);
		interfaceRequired->AddFunction("SetPositionCartesian", mMTM->SetPositionCartesian);
		interfaceRequired->AddFunction("SetPositionGoalCartesian", mMTM->SetPositionGoalCartesian);
		interfaceRequired->AddFunction("GetGripperPosition", mMTM->GetGripperPosition);
		interfaceRequired->AddFunction("LockOrientation", mMTM->LockOrientation);
		interfaceRequired->AddFunction("UnlockOrientation", mMTM->UnlockOrientation);
		interfaceRequired->AddFunction("SetWrenchBody", mMTM->SetWrenchBody);
		interfaceRequired->AddFunction("SetGravityCompensation", mMTM->SetGravityCompensation);
		interfaceRequired->AddFunction("GetRobotControlState", mMTM->GetRobotControlState);
		interfaceRequired->AddFunction("SetRobotControlState", mMTM->SetRobotControlState);
		interfaceRequired->AddEventHandlerWrite(&mtsTeleOperationPSM::MTMErrorEventHandler,
			this, "Error");
	}

	interfaceRequired = AddInterfaceRequired("PSM");
	if (interfaceRequired) {
		interfaceRequired->AddFunction("GetPositionCartesian", mPSM->GetPositionCartesian);
		interfaceRequired->AddFunction("SetPositionCartesian", mPSM->SetPositionCartesian);
		interfaceRequired->AddFunction("SetJawPosition", mPSM->SetJawPosition);
		interfaceRequired->AddFunction("GetRobotControlState", mPSM->GetRobotControlState);
		interfaceRequired->AddFunction("SetRobotControlState", mPSM->SetRobotControlState);
		interfaceRequired->AddEventHandlerWrite(&mtsTeleOperationPSM::PSMErrorEventHandler,
			this, "Error");
	}

    // footpedal events
	interfaceRequired = AddInterfaceRequired("Clutch");
	if (interfaceRequired) {
		interfaceRequired->AddEventHandlerWrite(&mtsTeleOperationPSM::ClutchEventHandler, this, "Button");
	}

	mtsInterfaceProvided * interfaceProvided = AddInterfaceProvided("Setting");
	if (interfaceProvided) {
        // commands
		interfaceProvided->AddCommandReadState(StateTable, StateTable.PeriodStats,
                                               "GetPeriodStatistics"); // mtsIntervalStatistics

		interfaceProvided->AddCommandWrite(&mtsTeleOperationPSM::SetDesiredState, this,
			"SetDesiredState", std::string("DISABLED"));
		interfaceProvided->AddCommandWrite(&mtsTeleOperationPSM::SetScale, this,
			"SetScale", 0.5);
		interfaceProvided->AddCommandWrite(&mtsTeleOperationPSM::SetRegistrationRotation, this,
			"SetRegistrationRotation", vctMatRot3());
		interfaceProvided->AddCommandWrite(&mtsTeleOperationPSM::LockRotation, this,
			"LockRotation", false);
		interfaceProvided->AddCommandWrite(&mtsTeleOperationPSM::LockTranslation, this,
			"LockTranslation", false);
		interfaceProvided->AddCommandReadState(*(mConfigurationStateTable),
			mScale,
			"GetScale");
		interfaceProvided->AddCommandReadState(*(mConfigurationStateTable),
			mRegistrationRotation,
			"GetRegistrationRotation");
		interfaceProvided->AddCommandReadState(*(mConfigurationStateTable),
			mRotationLocked, "GetRotationLocked");
		interfaceProvided->AddCommandReadState(*(mConfigurationStateTable),
			mTranslationLocked, "GetTranslationLocked");
		interfaceProvided->AddCommandReadState(this->StateTable,
			mMTM->PositionCartesianCurrent,
			"GetPositionCartesianMTM");
		interfaceProvided->AddCommandReadState(this->StateTable,
			mPSM->PositionCartesianCurrent,
			"GetPositionCartesianPSM");
        // events
		interfaceProvided->AddEventWrite(MessageEvents.Status,
			"Status", std::string(""));
		interfaceProvided->AddEventWrite(MessageEvents.Warning,
			"Warning", std::string(""));
		interfaceProvided->AddEventWrite(MessageEvents.Error,
			"Error", std::string(""));
		interfaceProvided->AddEventWrite(MessageEvents.DesiredState,
			"DesiredState", std::string(""));
		interfaceProvided->AddEventWrite(MessageEvents.CurrentState,
			"CurrentState", std::string(""));
        // configuration
		interfaceProvided->AddEventWrite(ConfigurationEvents.Scale,
			"Scale", 0.5);
		interfaceProvided->AddEventWrite(ConfigurationEvents.RotationLocked,
			"RotationLocked", false);
		interfaceProvided->AddEventWrite(ConfigurationEvents.TranslationLocked,
			"TranslationLocked", false);
	}
}

void mtsTeleOperationPSM::Startup(void)
{
	CMN_LOG_CLASS_INIT_VERBOSE << "Startup" << std::endl;
}

void mtsTeleOperationPSM::Run(void)
{
	ProcessQueuedCommands();
	ProcessQueuedEvents();
    // run based on state

	mTeleopState.Run();
}

void mtsTeleOperationPSM::Cleanup(void)
{
	CMN_LOG_CLASS_INIT_VERBOSE << "Cleanup" << std::endl;
}

void mtsTeleOperationPSM::MTMErrorEventHandler(const std::string & message)
{
	mTeleopState.SetDesiredState("DISABLED");
	MessageEvents.Error(this->GetName() + ": received from master [" + message + "]");
}

void mtsTeleOperationPSM::PSMErrorEventHandler(const std::string & message)
{
	mTeleopState.SetDesiredState("DISABLED");
	MessageEvents.Error(this->GetName() + ": received from slave [" + message + "]");
}

void mtsTeleOperationPSM::ClutchEventHandler(const prmEventButton & button)
{
	if (button.Type() == prmEventButton::PRESSED) {
		mIsClutched = true;
	} else {
		mIsClutched = false;
	}

    // if the teleoperation is activated
	if (mTeleopState.DesiredState() == "ENABLED") {
		Clutch(mIsClutched);
	}
}

void mtsTeleOperationPSM::Clutch(const bool & clutch)
{
    // if the teleoperation is activated
	if (clutch) {
		mMTM->PositionCartesianSet.Goal().Rotation().FromNormalized(mPSM->PositionCartesianCurrent.Position().Rotation());
		mMTM->PositionCartesianSet.Goal().Translation().Assign(mMTM->PositionCartesianCurrent.Position().Translation());
		MessageEvents.Status(this->GetName() + ": console clutch pressed");
		double gripperPosition;
		mMTM->GetGripperPosition(gripperPosition);

		vctFrm4x4 masterPosition(mMTM->PositionCartesianSet.Goal());
		myfile<<"MTM";
		for (int i=0; i<=3;++i){
			for(int j=0; j<=3;++j){
				myfile<<", ";
				myfile<<masterPosition(i,j);

			}
		}
		myfile<<", "<<gripperPosition;
		myfile<<", "<<"clutched"<<std::endl;
		vctFrm4x4 slavePosition(mPSM->PositionCartesianCurrent.Position());
		myfile<<"PSM";

		for (int i=0; i<=3;++i){
			for(int j=0; j<=3;++j){
				myfile<<", ";
				myfile<<slavePosition(i,j);

			}
			// myfile<<slaveTranslation(i);
		}
		myfile<<", "<<"clutched"<<std::endl;

        // set MTM in effort mode, no force applied but gravity and locked orientation 
		mMTM->SetRobotControlState(mtsStdString("DVRK_EFFORT_CARTESIAN"));
		prmForceCartesianSet wrench;
		mMTM->SetWrenchBody(wrench);
		mMTM->SetGravityCompensation(true);
		mMTM->LockOrientation(mMTM->PositionCartesianCurrent.Position().Rotation());
	} else {
		MessageEvents.Status(this->GetName() + ": console clutch released");
		mTeleopState.SetCurrentState("SETTING_MTM_STATE");
	}
}

void mtsTeleOperationPSM::SetDesiredState(const std::string & state)
{
    // try to find the state in state machine
	if (!mTeleopState.StateExists(state)) {
		MessageEvents.Error(this->GetName() + ": unsupported state " + state);
		return;
	}
    // if state is same as current, return
	if (mTeleopState.CurrentState() == state) {
		return;
	}
    // try to set the desired state
	if (!mTeleopState.SetDesiredState(state)) {
		MessageEvents.Error(this->GetName() + ": " + state + " is not an allowed desired state");
		return;
	}
	MessageEvents.DesiredState(state);
	MessageEvents.Status(this->GetName() + ": set desired state to " + state);
}

void mtsTeleOperationPSM::SetScale(const double & scale)
{
	mConfigurationStateTable->Start();
	mScale = scale;
	mConfigurationStateTable->Advance();
	ConfigurationEvents.Scale(mScale);
}

void mtsTeleOperationPSM::SetRegistrationRotation(const vctMatRot3 & rotation)
{
	mConfigurationStateTable->Start();
	mRegistrationRotation = rotation;
	mConfigurationStateTable->Advance();
}

void mtsTeleOperationPSM::LockRotation(const bool & lock)
{
	mConfigurationStateTable->Start();
	mRotationLocked = lock;
	mConfigurationStateTable->Advance();
	ConfigurationEvents.RotationLocked(mRotationLocked);
    // when releasing the orientation, master orientation is likely off
    // so force re-align
	if (lock == false) {
		mTeleopState.SetCurrentState("DISABLED");
	} else {
        // update MTM/PSM previous position
		mMTM->CartesianPrevious.From(mMTM->PositionCartesianDesired.Position());
		mPSM->CartesianPrevious.From(mPSM->PositionCartesianCurrent.Position());
        // lock orientation is the arm is running
		if (mTeleopState.CurrentState() == "ENABLED") {
			mMTM->LockOrientation(mMTM->PositionCartesianCurrent.Position().Rotation());
		}
	}
}

void mtsTeleOperationPSM::LockTranslation(const bool & lock)
{
	mConfigurationStateTable->Start();
	mTranslationLocked = lock;
	mConfigurationStateTable->Advance();
	ConfigurationEvents.TranslationLocked(mTranslationLocked);
    // update MTM/PSM previous position
	mMTM->CartesianPrevious.From(mMTM->PositionCartesianDesired.Position());
	mPSM->CartesianPrevious.From(mPSM->PositionCartesianCurrent.Position());
}

void mtsTeleOperationPSM::StateChanged(void)
{
	const std::string newState = mTeleopState.CurrentState();
	MessageEvents.CurrentState(newState);
	MessageEvents.Status(this->GetName() + ", current state " + newState);
}

void mtsTeleOperationPSM::RunAllStates(void)
{
	mtsExecutionResult executionResult;

    // get master Cartesian position
	executionResult = mMTM->GetPositionCartesian(mMTM->PositionCartesianCurrent);
	if (!executionResult.IsOK()) {
		CMN_LOG_CLASS_RUN_ERROR << "Run: call to MTM.GetPositionCartesian failed \""
		<< executionResult << "\"" << std::endl;
		MessageEvents.Error(this->GetName() + ": unable to get cartesian position from master");
		mTeleopState.SetDesiredState("DISABLED");
	}
	executionResult = mMTM->GetPositionCartesianDesired(mMTM->PositionCartesianDesired);
	if (!executionResult.IsOK()) {
		CMN_LOG_CLASS_RUN_ERROR << "Run: call to MTM.GetPositionCartesianDesired failed \""
		<< executionResult << "\"" << std::endl;
	}

    // get slave Cartesian position
	executionResult = mPSM->GetPositionCartesian(mPSM->PositionCartesianCurrent);
	if (!executionResult.IsOK()) {
		CMN_LOG_CLASS_RUN_ERROR << "Run: call to PSM.GetPositionCartesian failed \""
		<< executionResult << "\"" << std::endl;
		MessageEvents.Error(this->GetName() + ": unable to get cartesian position from slave");
		mTeleopState.SetDesiredState("DISABLED");
	}

    // check if anyone wanted to disable anyway
	if ((mTeleopState.DesiredState() == "DISABLED")
		&& (mTeleopState.CurrentState() != "DISABLED")) {
		mTeleopState.SetCurrentState("DISABLED");
	myfile.close();
	std::cout<<"file is saved"<<std::endl;
	return;
}
}

void mtsTeleOperationPSM::TransitionDisabled(void)
{
	if (mTeleopState.DesiredState() != mTeleopState.CurrentState()) {
		mTeleopState.SetCurrentState("SETTING_PSM_STATE");
	}
	
}

void mtsTeleOperationPSM::EnterSettingPSMState(void)
{
    // reset timer
	mInStateTimer = StateTable.GetTic();

    // request state if needed
	mtsStdString armState;
	mPSM->GetRobotControlState(armState);
	if (armState.Data != "DVRK_POSITION_CARTESIAN") {
		mPSM->SetRobotControlState(mtsStdString("DVRK_POSITION_CARTESIAN"));
	}
}

void mtsTeleOperationPSM::TransitionSettingPSMState(void)
{
    // check state
	mtsStdString armState;
	mPSM->GetRobotControlState(armState);
	if (armState.Data == "DVRK_POSITION_CARTESIAN") {
		mTeleopState.SetCurrentState("SETTING_MTM_STATE");
		return;
	}
    // check timer
	if ((StateTable.GetTic() - mInStateTimer) > 60.0 * cmn_s) {
		MessageEvents.Error(this->GetName() + ": timed out while setting up PSM state");
		mTeleopState.SetDesiredState("DISABLED");
	}
}

void mtsTeleOperationPSM::EnterSettingMTMState(void)
{
    // reset timer
	mInStateTimer = StateTable.GetTic();

    // request state if needed
	mtsStdString armState;
	mMTM->GetRobotControlState(armState);
	if (armState.Data != "DVRK_POSITION_GOAL_CARTESIAN") {
		mMTM->SetRobotControlState(mtsStdString("DVRK_POSITION_GOAL_CARTESIAN"));
	}
}

void mtsTeleOperationPSM::TransitionSettingMTMState(void)
{
    // check state
	mtsStdString armState;
	mMTM->GetRobotControlState(armState);
	if (armState.Data == "DVRK_POSITION_GOAL_CARTESIAN") {
		mTeleopState.SetCurrentState("ALIGNING_MTM");
		if(!myfile.is_open()){
			time_t now;
			char the_date[12];
			char the_time[80];
			the_date[0] = '\0';
			
			now = time(NULL);

			if (now != -1)
			{
				strftime(the_date, 12, "%d_%m_%Y_", gmtime(&now));
				strftime(the_time, 80, "%I_%M_%S_%p", localtime(&now));
			}
			
			filename=(std::string)the_date+(std::string)the_time+extension;
			myfile.open(filename.c_str());
		}
		return;
	}
    // check timer
	if ((StateTable.GetTic() - mInStateTimer) > 60.0 * cmn_s) {
		MessageEvents.Error(this->GetName() + ": timed out while setting up MTM state");
		mTeleopState.SetDesiredState("DISABLED");

	}
}

void mtsTeleOperationPSM::EnterAligningMTM(void)
{
	

    // reset timer
	mInStateTimer = StateTable.GetTic();

    // Send MTM command position
	mMTM->SetRobotControlState(mtsStdString("DVRK_POSITION_GOAL_CARTESIAN"));

    // Orientate MTM with PSM
	vctFrm4x4 masterCartesianGoal;
	masterCartesianGoal.Translation().Assign(mMTM->PositionCartesianDesired.Position().Translation());
	vctMatRot3 masterRotation;
	masterRotation = mRegistrationRotation.Inverse() * mPSM->PositionCartesianCurrent.Position().Rotation();
	masterCartesianGoal.Rotation().FromNormalized(masterRotation);
    // convert to prm type
	mMTM->PositionCartesianSet.Goal().From(masterCartesianGoal);
	mMTM->SetPositionGoalCartesian(mMTM->PositionCartesianSet);
}

void mtsTeleOperationPSM::TransitionAligningMTM(void)
{
    // if the desired state is aligning MTM, just stay here
	if (mTeleopState.DesiredState() == mTeleopState.CurrentState()) {
		return;
	}

    // check difference of orientation between master and slave to enable

	vctMatRot3 desiredOrientation, difference;
	mRegistrationRotation.ApplyInverseTo(mPSM->PositionCartesianCurrent.Position().Rotation(),
		desiredOrientation);
	mMTM->PositionCartesianCurrent.Position().Rotation().ApplyInverseTo(desiredOrientation, difference);
	vctAxAnRot3 axisAngle(difference);
	const double angleInDegrees = axisAngle.Angle() * 180.0 / cmnPI;
	if (angleInDegrees <= 5.0) {
		mTeleopState.SetCurrentState("ENABLED");
	} else {
        // check timer and issue a message
		if ((StateTable.GetTic() - mInStateTimer) > 2.0 * cmn_s) {
			std::stringstream message;
			message << this->GetName() + ": unable to align master, current angle error is " << angleInDegrees;
			MessageEvents.Warning(message.str());
			mInStateTimer = StateTable.GetTic();
		}
	}
}


void mtsTeleOperationPSM::EnterEnabled(void)
{
    // update MTM/PSM previous position
	mMTM->CartesianPrevious.From(mMTM->PositionCartesianCurrent.Position());
	mPSM->CartesianPrevious.From(mPSM->PositionCartesianCurrent.Position());

    // set MTM/PSM to Teleop (Cartesian Position Mode)
	mMTM->SetRobotControlState(mtsStdString("DVRK_EFFORT_CARTESIAN"));
	mMTM->SetGravityCompensation(true);
    // set forces to zero and lock/unlock orientation as needed
	prmForceCartesianSet wrench;
	mMTM->SetWrenchBody(wrench);
	if (mRotationLocked) {
		mMTM->LockOrientation(mMTM->PositionCartesianCurrent.Position().Rotation());
	} else {
		mMTM->UnlockOrientation();
	}
    // check if by any chance the clutch pedal is pressed
	if (mIsClutched) {
		Clutch(true);
	}
}

void mtsTeleOperationPSM::RunEnabled(void)
{

	if (mMTM->PositionCartesianCurrent.Valid()
		&& mPSM->PositionCartesianCurrent.Valid()) {
        // follow mode
		if (!mIsClutched) {
			auto ms=std::chrono::duration_cast<std::chrono::milliseconds>(system_clock::now().time_since_epoch());
			// std::chrono::duration_cast<std::chrono::microseconds>(ms).count()
            		// compute master Cartesian motion
			vctFrm4x4 masterCartesianMotion;
			vctFrm4x4 masterPosition(mMTM->PositionCartesianCurrent.Position());
			masterCartesianMotion = mMTM->CartesianPrevious.Inverse() * masterPosition;


			// myfile.close();
			// myfile<<"hello";
            		// translation
			vct3 masterTranslation;
			vct3 slaveTranslation;
			if (mTranslationLocked) {
				slaveTranslation = mPSM->CartesianPrevious.Translation();
			} else {
				masterTranslation = (masterPosition.Translation() - mMTM->CartesianPrevious.Translation());
				slaveTranslation = masterTranslation * mScale;
				slaveTranslation = mRegistrationRotation * slaveTranslation + mPSM->CartesianPrevious.Translation();
			}
            // rotation
			vctMatRot3 slaveRotation;
			if (mRotationLocked) {
				slaveRotation.From(mPSM->CartesianPrevious.Rotation());
			} else {
				slaveRotation = mRegistrationRotation * masterPosition.Rotation();
			}

            // compute desired slave position
			vctFrm4x4 slaveCartesianGoal;
			slaveCartesianGoal.Translation().Assign(slaveTranslation);
			slaveCartesianGoal.Rotation().FromNormalized(slaveRotation);
			mPSM->PositionCartesianSet.Goal().FromNormalized(slaveCartesianGoal);
            // PSM go this cartesian position
  //           mPSM->position_buffer.push(mPSM->PositionCartesianSet);
  //           if(mPSM->position_buffer.size()>=1000){
 	// 	mPSM->SetPositionCartesian(mPSM->position_buffer.front());
		// mPSM->position_buffer.pop();
  //           }
  //           else{
			mPSM->SetPositionCartesian(mPSM->PositionCartesianSet);
           	// }		

            // Gripper
            double gripperPosition;
            mMTM->GetGripperPosition(gripperPosition);
			if (mMTM->GetGripperPosition.IsValid()) {
				
				
                	//buffer
   //              	mMTM->gripper_buffer.push(gripperPosition);
   //          	if(mMTM->gripper_buffer.size()>=1000){
   //           		mPSM->SetJawPosition(mMTM->gripper_buffer.front());
			// mMTM->gripper_buffer.pop();
   //          	}
   //          	else{
				mPSM->SetJawPosition(gripperPosition);
				// std::cout<<"gripperPosition: "<<gripperPosition<<std::endl;
        		// }
        		//buffer end
			} 
			else {
				mPSM->SetJawPosition(45.0 * cmnPI_180);
			}
			myfile<<"MTM";
			for (int i=0; i<=3;++i){
				for(int j=0; j<=3;++j){
					myfile<<", ";
					myfile<<masterPosition(i,j);

				}
			}
			myfile<<", "<<gripperPosition;
			myfile<<", "<<ms.count();
			myfile<<", "<<"COAG"<<std::endl;
			myfile<<"PSM";
			for (int i=0; i<=2;++i){
				for(int j=0; j<=2;++j){
					myfile<<", ";
					myfile<<slaveRotation(i,j);

				}
				myfile<<slaveTranslation(i);
			}
			myfile<<", "<<ms.count();
			myfile<<", "<<"COAG"<<std::endl;

		}
	}
}

void mtsTeleOperationPSM::TransitionEnabled(void)
{
	if (mTeleopState.DesiredState() != mTeleopState.CurrentState()) {
		mTeleopState.SetCurrentState(mTeleopState.DesiredState());
	}
}