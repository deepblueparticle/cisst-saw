// file automatically generated, do not modify
// cisst version: 1.0.8
// source file: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstCommon/tests/cmnDataGeneratorTestTypes.cdg

#include <cmnDataGeneratorTestTypes.h>
#include <cisstCommon/cmnDataFunctionsMacros.h>
#include <cisstCommon/cmnDataFunctionsEnumMacros.h>
#include <cisstCommon/cmnDataFunctionsString.h>
#include <cisstCommon/cmnDataFunctionsVector.h>

/* source line: 1 */

/* source line: 23 */
cmnDataGeneratorTestB::cmnDataGeneratorTestB(void):
      cmnDataGeneratorTestA()
    , mStringA("DefaultA")
{}

cmnDataGeneratorTestB::cmnDataGeneratorTestB(const cmnDataGeneratorTestB & other):
      cmnDataGeneratorTestA(other)
    , mStringA(other.mStringA)
{}

cmnDataGeneratorTestB::~cmnDataGeneratorTestB(void){}


void cmnDataGeneratorTestB::SerializeRaw(std::ostream & outputStream) const
{
    cmnSerializeRaw(outputStream, this->mStringA);
}


void cmnDataGeneratorTestB::DeSerializeRaw(std::istream & inputStream)
{
    cmnDeSerializeRaw(inputStream, this->mStringA);
}


void cmnDataGeneratorTestB::ToStream(std::ostream & outputStream) const
{
    outputStream << this->HumanReadable();
}

void cmnDataGeneratorTestB::ToStreamRaw(std::ostream & outputStream, const char delimiter, bool headerOnly, const std::string & headerPrefix) const
{
    if (headerOnly) {
        outputStream << cmnData<cmnDataGeneratorTestB >::SerializeDescription(*this, delimiter, headerPrefix);
    } else {
        cmnData<cmnDataGeneratorTestB >::SerializeText(*this, outputStream, delimiter);
    }
}
/* source line: 32 */

/* accessors is set to: all */
void cmnDataGeneratorTestB::GetStringA(std::string & placeHolder) const
{
    placeHolder = this->mStringA;
}

void cmnDataGeneratorTestB::SetStringA(const std::string & newValue)
{
    this->mStringA = newValue;
}


/* accessors is set to: all */
const std::string & cmnDataGeneratorTestB::StringA(void) const
{
    return this->mStringA;
}

std::string & cmnDataGeneratorTestB::StringA(void)
{
    return this->mStringA;
}

/* default functions */
void cmnSerializeRaw(std::ostream & outputStream, const cmnDataGeneratorTestB & object)
{
    object.SerializeRaw(outputStream);
}
void cmnDeSerializeRaw(std::istream & inputStream, cmnDataGeneratorTestB & placeHolder)
{
    placeHolder.DeSerializeRaw(inputStream);
}
/* data functions */
void cmnDataGeneratorTestB::Copy(const cmnDataGeneratorTestB & source) {
    cmnData<std::string >::Copy(this->mStringA, source.mStringA);
}
void cmnDataGeneratorTestB::SerializeBinary(std::ostream & outputStream) const throw (std::runtime_error) {
    cmnData<std::string >::SerializeBinary(this->mStringA, outputStream);
}
void cmnDataGeneratorTestB::DeSerializeBinary(std::istream & inputStream,
                                            const cmnDataFormat & localFormat,
                                            const cmnDataFormat & remoteFormat) throw (std::runtime_error) {
    cmnData<std::string >::DeSerializeBinary(this->mStringA, inputStream, localFormat, remoteFormat);
}
void cmnDataGeneratorTestB::SerializeText(std::ostream & outputStream, const char delimiter) const throw (std::runtime_error) {
    bool someData = false;
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<std::string >::SerializeText(this->mStringA, outputStream, delimiter);
}
std::string cmnDataGeneratorTestB::SerializeDescription(const char delimiter, const std::string & userDescription) const {
    bool someData = false;
    const std::string prefix = (userDescription == "") ? "" : (userDescription + ".");
    std::stringstream description;
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<std::string >::SerializeDescription(this->mStringA, delimiter, prefix + "StringA");
    return description.str();
}
void cmnDataGeneratorTestB::DeSerializeText(std::istream & inputStream,
                                          const char delimiter) throw (std::runtime_error) {
    bool someData = false;
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestB");
    }
    someData = true;
    cmnData<std::string >::DeSerializeText(this->mStringA, inputStream, delimiter);
}
std::string cmnDataGeneratorTestB::HumanReadable(void) const {
    std::stringstream description;
    description << "cmnDataGeneratorTestB" << std::endl;
    description << "  StringA:" << cmnData<std::string >::HumanReadable(this->mStringA);
    return description.str();
}
bool cmnDataGeneratorTestB::ScalarNumberIsFixed(void) const {
    return true
           && cmnData<std::string >::ScalarNumberIsFixed(this->mStringA)
    ;
}
size_t cmnDataGeneratorTestB::ScalarNumber(void) const {
    return 0
           + cmnData<std::string >::ScalarNumber(this->mStringA)
    ;
}
std::string cmnDataGeneratorTestB::ScalarDescription(const size_t index, const std::string & userDescription) const throw (std::out_of_range) {
    std::string prefix = (userDescription == "") ? "" : (userDescription + ".");
    size_t baseIndex = 0;
    size_t currentMaxIndex = 0;
    currentMaxIndex += cmnData<std::string >::ScalarNumber(this->mStringA);
    if (index < currentMaxIndex) {
        return cmnData<std::string >::ScalarDescription(this->mStringA, index - baseIndex, prefix + "StringA");
    }
    baseIndex = currentMaxIndex;
    cmnThrow(std::out_of_range("cmnDataScalarDescription: cmnDataGeneratorTestB index out of range"));
    return "";
}
double cmnDataGeneratorTestB::Scalar(const size_t index) const throw (std::out_of_range) {
    size_t baseIndex = 0;
    size_t currentMaxIndex = 0;
    currentMaxIndex += cmnData<std::string >::ScalarNumber(this->mStringA);
    if (index < currentMaxIndex) {
        return cmnData<std::string >::Scalar(this->mStringA, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    cmnThrow(std::out_of_range("cmnDataScalar: cmnDataGeneratorTestB index out of range"));
    return 1.2345;
}
#if CISST_HAS_JSON
template <>
void cmnDataJSON<cmnDataGeneratorTestB >::SerializeText(const cmnDataGeneratorTestB & data, Json::Value & jsonValue) {
    data.SerializeTextJSON(jsonValue);
}
void cmnDataGeneratorTestB::SerializeTextJSON(Json::Value & jsonValue) const {
    cmnDataJSON<std::string >::SerializeText(this->mStringA, jsonValue["StringA"]);
}
template<>
void cmnDataJSON<cmnDataGeneratorTestB >::DeSerializeText(cmnDataGeneratorTestB & data, const Json::Value & jsonValue) throw (std::runtime_error) {
    data.DeSerializeTextJSON(jsonValue);
}
void cmnDataGeneratorTestB::DeSerializeTextJSON(const Json::Value & jsonValue) throw (std::runtime_error) {
    cmnDataJSON<std::string >::DeSerializeText(this->mStringA, jsonValue["StringA"]);
}
#endif // CISST_HAS_JSON

/* source line: 43 */
cmnDataGeneratorTestC::cmnDataGeneratorTestC(void):
      cmnGenericObject()
    , cmnDataGeneratorTestB()
    , StdVector()
    , mdummyString("Make sure the string parser doesn't fail if there is no comma at the end.")
{}

cmnDataGeneratorTestC::cmnDataGeneratorTestC(const cmnDataGeneratorTestC & other):
      cmnGenericObject(other)
    , cmnDataGeneratorTestB(other)
    , StdVector(other.StdVector)
    , mdummyString(other.mdummyString)
{}

cmnDataGeneratorTestC::~cmnDataGeneratorTestC(void){}


void cmnDataGeneratorTestC::SerializeRaw(std::ostream & outputStream) const
{
    cmnDataGeneratorTestB::SerializeRaw(outputStream);
    cmnSerializeRaw(outputStream, this->StdVector);
    cmnSerializeRaw(outputStream, this->CArray);
    cmnSerializeRaw(outputStream, this->CArray2D);
    cmnSerializeRaw(outputStream, this->mdummyString);
}


void cmnDataGeneratorTestC::DeSerializeRaw(std::istream & inputStream)
{
    cmnDataGeneratorTestB::DeSerializeRaw(inputStream);
    cmnDeSerializeRaw(inputStream, this->StdVector);
    cmnDeSerializeRaw(inputStream, this->CArray);
    cmnDeSerializeRaw(inputStream, this->CArray2D);
    cmnDeSerializeRaw(inputStream, this->mdummyString);
}


void cmnDataGeneratorTestC::ToStream(std::ostream & outputStream) const
{
    outputStream << this->HumanReadable();
}

void cmnDataGeneratorTestC::ToStreamRaw(std::ostream & outputStream, const char delimiter, bool headerOnly, const std::string & headerPrefix) const
{
    if (headerOnly) {
        outputStream << cmnData<cmnDataGeneratorTestC >::SerializeDescription(*this, delimiter, headerPrefix);
    } else {
        cmnData<cmnDataGeneratorTestC >::SerializeText(*this, outputStream, delimiter);
    }
}
/* source line: 64 */
/* source line: 79 */
/* source line: 97 */
/* source line: 103 */

/* accessors is set to: all */
void cmnDataGeneratorTestC::GetdummyString(std::string & placeHolder) const
{
    placeHolder = this->mdummyString;
}

void cmnDataGeneratorTestC::SetdummyString(const std::string & newValue)
{
    this->mdummyString = newValue;
}


/* accessors is set to: all */
const std::string & cmnDataGeneratorTestC::dummyString(void) const
{
    return this->mdummyString;
}

std::string & cmnDataGeneratorTestC::dummyString(void)
{
    return this->mdummyString;
}

/* default functions */
void cmnSerializeRaw(std::ostream & outputStream, const cmnDataGeneratorTestC & object)
{
    object.SerializeRaw(outputStream);
}
void cmnDeSerializeRaw(std::istream & inputStream, cmnDataGeneratorTestC & placeHolder)
{
    placeHolder.DeSerializeRaw(inputStream);
}
/* data functions */
void cmnDataGeneratorTestC::Copy(const cmnDataGeneratorTestC & source) {
    cmnData<cmnDataGeneratorTestB >::Copy(*this, source);
    cmnData<StdVectorType >::Copy(this->StdVector, source.StdVector);
    cmnData<double[SIZE] >::Copy(this->CArray, source.CArray);
    cmnData<size_t[ROW][COL] >::Copy(this->CArray2D, source.CArray2D);
    cmnData<std::string >::Copy(this->mdummyString, source.mdummyString);
}
void cmnDataGeneratorTestC::SerializeBinary(std::ostream & outputStream) const throw (std::runtime_error) {
    cmnData<cmnDataGeneratorTestB >::SerializeBinary(*this, outputStream);
    cmnData<StdVectorType >::SerializeBinary(this->StdVector, outputStream);
    cmnData<double[SIZE] >::SerializeBinary(this->CArray, outputStream);
    cmnData<size_t[ROW][COL] >::SerializeBinary(this->CArray2D, outputStream);
    cmnData<std::string >::SerializeBinary(this->mdummyString, outputStream);
}
void cmnDataGeneratorTestC::DeSerializeBinary(std::istream & inputStream,
                                            const cmnDataFormat & localFormat,
                                            const cmnDataFormat & remoteFormat) throw (std::runtime_error) {
    cmnData<cmnDataGeneratorTestB >::DeSerializeBinary(*this, inputStream, localFormat, remoteFormat);
    cmnData<StdVectorType >::DeSerializeBinary(this->StdVector, inputStream, localFormat, remoteFormat);
    cmnData<double[SIZE] >::DeSerializeBinary(this->CArray, inputStream, localFormat, remoteFormat);
    cmnData<size_t[ROW][COL] >::DeSerializeBinary(this->CArray2D, inputStream, localFormat, remoteFormat);
    cmnData<std::string >::DeSerializeBinary(this->mdummyString, inputStream, localFormat, remoteFormat);
}
void cmnDataGeneratorTestC::SerializeText(std::ostream & outputStream, const char delimiter) const throw (std::runtime_error) {
    bool someData = false;
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<cmnDataGeneratorTestB >::SerializeText(*this, outputStream, delimiter);
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<StdVectorType >::SerializeText(this->StdVector, outputStream, delimiter);
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<double[SIZE] >::SerializeText(this->CArray, outputStream, delimiter);
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<size_t[ROW][COL] >::SerializeText(this->CArray2D, outputStream, delimiter);
    if (someData) {
        outputStream << delimiter;
    }
    someData = true;
    cmnData<std::string >::SerializeText(this->mdummyString, outputStream, delimiter);
}
std::string cmnDataGeneratorTestC::SerializeDescription(const char delimiter, const std::string & userDescription) const {
    bool someData = false;
    const std::string prefix = (userDescription == "") ? "" : (userDescription + ".");
    std::stringstream description;
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<cmnDataGeneratorTestB >::SerializeDescription(*this, delimiter, userDescription);
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<StdVectorType >::SerializeDescription(this->StdVector, delimiter, prefix + "StdVector");
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<double[SIZE] >::SerializeDescription(this->CArray, delimiter, prefix + "CArray");
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<size_t[ROW][COL] >::SerializeDescription(this->CArray2D, delimiter, prefix + "CArray2D");
    if (someData) {
        description << delimiter;
    }
    someData = true;
    description << cmnData<std::string >::SerializeDescription(this->mdummyString, delimiter, prefix + "dummyString");
    return description.str();
}
void cmnDataGeneratorTestC::DeSerializeText(std::istream & inputStream,
                                          const char delimiter) throw (std::runtime_error) {
    bool someData = false;
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestC");
    }
    someData = true;
    cmnData<cmnDataGeneratorTestB >::DeSerializeText(*this, inputStream, delimiter);
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestC");
    }
    someData = true;
    cmnData<StdVectorType >::DeSerializeText(this->StdVector, inputStream, delimiter);
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestC");
    }
    someData = true;
    cmnData<double[SIZE] >::DeSerializeText(this->CArray, inputStream, delimiter);
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestC");
    }
    someData = true;
    cmnData<size_t[ROW][COL] >::DeSerializeText(this->CArray2D, inputStream, delimiter);
    if (someData) {
        cmnDataDeSerializeTextDelimiter(inputStream, delimiter, "cmnDataGeneratorTestC");
    }
    someData = true;
    cmnData<std::string >::DeSerializeText(this->mdummyString, inputStream, delimiter);
}
std::string cmnDataGeneratorTestC::HumanReadable(void) const {
    std::stringstream description;
    description << "cmnDataGeneratorTestC" << std::endl;
    description << cmnData< cmnDataGeneratorTestB >::HumanReadable(*this) << std::endl;
    description << "  std vector:" << cmnData<StdVectorType >::HumanReadable(this->StdVector);
    description << "  CArray:" << cmnData<double[SIZE] >::HumanReadable(this->CArray);
    description << "  CArray2D:" << cmnData<size_t[ROW][COL] >::HumanReadable(this->CArray2D);
    description << "  dummyString:" << cmnData<std::string >::HumanReadable(this->mdummyString);
    return description.str();
}
bool cmnDataGeneratorTestC::ScalarNumberIsFixed(void) const {
    return true
           && cmnData<cmnDataGeneratorTestB >::ScalarNumberIsFixed(*this)
           && cmnData<StdVectorType >::ScalarNumberIsFixed(this->StdVector)
           && cmnData<double[SIZE] >::ScalarNumberIsFixed(this->CArray)
           && cmnData<size_t[ROW][COL] >::ScalarNumberIsFixed(this->CArray2D)
           && cmnData<std::string >::ScalarNumberIsFixed(this->mdummyString)
    ;
}
size_t cmnDataGeneratorTestC::ScalarNumber(void) const {
    return 0
           + cmnData< cmnDataGeneratorTestB >::ScalarNumber(*this)
           + cmnData<StdVectorType >::ScalarNumber(this->StdVector)
           + cmnData<double[SIZE] >::ScalarNumber(this->CArray)
           + cmnData<size_t[ROW][COL] >::ScalarNumber(this->CArray2D)
           + cmnData<std::string >::ScalarNumber(this->mdummyString)
    ;
}
std::string cmnDataGeneratorTestC::ScalarDescription(const size_t index, const std::string & userDescription) const throw (std::out_of_range) {
    std::string prefix = (userDescription == "") ? "" : (userDescription + ".");
    size_t baseIndex = 0;
    size_t currentMaxIndex = 0;
    currentMaxIndex += cmnData<cmnDataGeneratorTestB >::ScalarNumber(*this);
    if (index < currentMaxIndex) {
        return cmnData<cmnDataGeneratorTestB >::ScalarDescription(*this, index - baseIndex, prefix);
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<StdVectorType >::ScalarNumber(this->StdVector);
    if (index < currentMaxIndex) {
        return cmnData<StdVectorType >::ScalarDescription(this->StdVector, index - baseIndex, prefix + "StdVector");
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<double[SIZE] >::ScalarNumber(this->CArray);
    if (index < currentMaxIndex) {
        return cmnData<double[SIZE] >::ScalarDescription(this->CArray, index - baseIndex, prefix + "CArray");
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<size_t[ROW][COL] >::ScalarNumber(this->CArray2D);
    if (index < currentMaxIndex) {
        return cmnData<size_t[ROW][COL] >::ScalarDescription(this->CArray2D, index - baseIndex, prefix + "CArray2D");
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<std::string >::ScalarNumber(this->mdummyString);
    if (index < currentMaxIndex) {
        return cmnData<std::string >::ScalarDescription(this->mdummyString, index - baseIndex, prefix + "dummyString");
    }
    baseIndex = currentMaxIndex;
    cmnThrow(std::out_of_range("cmnDataScalarDescription: cmnDataGeneratorTestC index out of range"));
    return "";
}
double cmnDataGeneratorTestC::Scalar(const size_t index) const throw (std::out_of_range) {
    size_t baseIndex = 0;
    size_t currentMaxIndex = 0;
    currentMaxIndex += cmnData<cmnDataGeneratorTestB >::ScalarNumber(*this);
    if (index < currentMaxIndex) {
        return cmnData<cmnDataGeneratorTestB >::Scalar(*this, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<StdVectorType >::ScalarNumber(this->StdVector);
    if (index < currentMaxIndex) {
        return cmnData<StdVectorType >::Scalar(this->StdVector, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<double[SIZE] >::ScalarNumber(this->CArray);
    if (index < currentMaxIndex) {
        return cmnData<double[SIZE] >::Scalar(this->CArray, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<size_t[ROW][COL] >::ScalarNumber(this->CArray2D);
    if (index < currentMaxIndex) {
        return cmnData<size_t[ROW][COL] >::Scalar(this->CArray2D, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    currentMaxIndex += cmnData<std::string >::ScalarNumber(this->mdummyString);
    if (index < currentMaxIndex) {
        return cmnData<std::string >::Scalar(this->mdummyString, index - baseIndex);
    }
    baseIndex = currentMaxIndex;
    cmnThrow(std::out_of_range("cmnDataScalar: cmnDataGeneratorTestC index out of range"));
    return 1.2345;
}
#if CISST_HAS_JSON
template <>
void cmnDataJSON<cmnDataGeneratorTestC >::SerializeText(const cmnDataGeneratorTestC & data, Json::Value & jsonValue) {
    data.SerializeTextJSON(jsonValue);
}
void cmnDataGeneratorTestC::SerializeTextJSON(Json::Value & jsonValue) const {
    cmnDataJSON<cmnDataGeneratorTestB >::SerializeText(*(dynamic_cast<const cmnDataGeneratorTestB*>(this)), jsonValue);
    cmnDataJSON<StdVectorType >::SerializeText(this->StdVector, jsonValue["StdVector"]);
    cmnDataJSON<double[SIZE] >::SerializeText(this->CArray, jsonValue["CArray"]);
    cmnDataJSON<size_t[ROW][COL] >::SerializeText(this->CArray2D, jsonValue["CArray2D"]);
    cmnDataJSON<std::string >::SerializeText(this->mdummyString, jsonValue["dummyString"]);
}
template<>
void cmnDataJSON<cmnDataGeneratorTestC >::DeSerializeText(cmnDataGeneratorTestC & data, const Json::Value & jsonValue) throw (std::runtime_error) {
    data.DeSerializeTextJSON(jsonValue);
}
void cmnDataGeneratorTestC::DeSerializeTextJSON(const Json::Value & jsonValue) throw (std::runtime_error) {
    cmnDataJSON<cmnDataGeneratorTestB >::DeSerializeText(*(dynamic_cast<cmnDataGeneratorTestB*>(this)), jsonValue);
    cmnDataJSON<StdVectorType >::DeSerializeText(this->StdVector, jsonValue["StdVector"]);
    cmnDataJSON<double[SIZE] >::DeSerializeText(this->CArray, jsonValue["CArray"]);
    cmnDataJSON<size_t[ROW][COL] >::DeSerializeText(this->CArray2D, jsonValue["CArray2D"]);
    cmnDataJSON<std::string >::DeSerializeText(this->mdummyString, jsonValue["dummyString"]);
}
#endif // CISST_HAS_JSON
std::string cmnDataHumanReadable_cmnDataGeneratorTestC_ArraySizeType(const cmnDataGeneratorTestC::ArraySizeType & data) {
    switch (data) {
        case cmnDataGeneratorTestC::SIZE:
            return "SIZE";
            break;
        default: return "undefined enum cmnDataGeneratorTestC::ArraySizeType";
            break;
    }
}

std::string cmnDataGeneratorTestC::ArraySizeTypeToString(const cmnDataGeneratorTestC::ArraySizeType & data) throw (std::runtime_error) {
    switch (data) {
        case cmnDataGeneratorTestC::SIZE:
            return "SIZE";
            break;
        default:
            break;
    }
    cmnThrow("cmnDataGeneratorTestC::ArraySizeTypeToString called with invalid enum");
    return "";
}

cmnDataGeneratorTestC::ArraySizeType cmnDataGeneratorTestC::ArraySizeTypeFromString(const std::string & value) throw (std::runtime_error) {
    if (value == "SIZE") {
        return cmnDataGeneratorTestC::SIZE;
    };
    cmnThrow("cmnDataGeneratorTestC::ArraySizeTypeFromString can't find matching enum for " + value);
    return static_cast<cmnDataGeneratorTestC::ArraySizeType >(0);
}

const std::vector<int> & cmnDataGeneratorTestC::ArraySizeTypeVectorInt(void) {
    static std::vector<int> vectorInt;
    if (vectorInt.empty()) {
        vectorInt.push_back(static_cast<int>(SIZE));
    }
    return vectorInt;
}

const std::vector<std::string> & cmnDataGeneratorTestC::ArraySizeTypeVectorString(void) {
    static std::vector<std::string> vectorString;
    if (vectorString.empty()) {
        vectorString.push_back("SIZE");
    }
    return vectorString;
}

#if CISST_HAS_JSON
  CMN_IMPLEMENT_DATA_FUNCTIONS_JSON_FOR_ENUM(cmnDataGeneratorTestC::ArraySizeType, int);
#endif // CISST_HAS_JSON
std::string cmnDataHumanReadable_cmnDataGeneratorTestC_Array2DSizeType(const cmnDataGeneratorTestC::Array2DSizeType & data) {
    switch (data) {
        case cmnDataGeneratorTestC::ROW:
            return "ROW";
            break;
        case cmnDataGeneratorTestC::COL:
            return "COL";
            break;
        default: return "undefined enum cmnDataGeneratorTestC::Array2DSizeType";
            break;
    }
}

std::string cmnDataGeneratorTestC::Array2DSizeTypeToString(const cmnDataGeneratorTestC::Array2DSizeType & data) throw (std::runtime_error) {
    switch (data) {
        case cmnDataGeneratorTestC::ROW:
            return "ROW";
            break;
        case cmnDataGeneratorTestC::COL:
            return "COL";
            break;
        default:
            break;
    }
    cmnThrow("cmnDataGeneratorTestC::Array2DSizeTypeToString called with invalid enum");
    return "";
}

cmnDataGeneratorTestC::Array2DSizeType cmnDataGeneratorTestC::Array2DSizeTypeFromString(const std::string & value) throw (std::runtime_error) {
    if (value == "ROW") {
        return cmnDataGeneratorTestC::ROW;
    };
    if (value == "COL") {
        return cmnDataGeneratorTestC::COL;
    };
    cmnThrow("cmnDataGeneratorTestC::Array2DSizeTypeFromString can't find matching enum for " + value);
    return static_cast<cmnDataGeneratorTestC::Array2DSizeType >(0);
}

const std::vector<int> & cmnDataGeneratorTestC::Array2DSizeTypeVectorInt(void) {
    static std::vector<int> vectorInt;
    if (vectorInt.empty()) {
        vectorInt.push_back(static_cast<int>(ROW));
        vectorInt.push_back(static_cast<int>(COL));
    }
    return vectorInt;
}

const std::vector<std::string> & cmnDataGeneratorTestC::Array2DSizeTypeVectorString(void) {
    static std::vector<std::string> vectorString;
    if (vectorString.empty()) {
        vectorString.push_back("ROW");
        vectorString.push_back("COL");
    }
    return vectorString;
}

#if CISST_HAS_JSON
  CMN_IMPLEMENT_DATA_FUNCTIONS_JSON_FOR_ENUM(cmnDataGeneratorTestC::Array2DSizeType, int);
#endif // CISST_HAS_JSON


/* source line: 119 */

    CMN_IMPLEMENT_SERVICES(cmnDataGeneratorTestC);

