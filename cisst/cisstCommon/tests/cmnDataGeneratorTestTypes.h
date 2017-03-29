// file automatically generated, do not modify
// cisst version: 1.0.8
// source file: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstCommon/tests/cmnDataGeneratorTestTypes.cdg

#pragma once
#ifndef _cmnDataGeneratorTestTypes_h
#define _cmnDataGeneratorTestTypes_h

#include <cisstCommon/cmnDataFunctions.h>
#include <cisstCommon/cmnDataFunctionsEnumMacros.h>
#if CISST_HAS_JSON
#include <cisstCommon/cmnDataFunctionsJSON.h>
#endif // CISST_HAS_JSON

/* source line: 1 */

/* source line: 23 */

/* source line: 43 */



/* source line: 1 */
/* source line: 4 */


#include <cisstCommon/cmnGenericObject.h>
#include <cisstCommon/cmnSerializer.h>
#include <cisstCommon/cmnDeSerializer.h>
#include <cisstCommon/cmnDataFunctionsArray.h>
#include <cisstCommon/cmnDataFunctionsVector.h>
#include <cisstCommon/cmnDataFunctionsString.h>
#include <vector>
typedef std::vector<int> StdVectorType;

class cmnDataGeneratorTestA
{
public:
    virtual void PureVirtualA(void) const = 0;
};


/* source line: 23 */
class  cmnDataGeneratorTestB: public cmnDataGeneratorTestA
{
 /* default constructors and destructors. */
 public:
    cmnDataGeneratorTestB(void);
    cmnDataGeneratorTestB(const cmnDataGeneratorTestB & other);
    ~cmnDataGeneratorTestB();

/* source line: 32 */
 protected:
    std::string mStringA; // StringA
 public:
    /* accessors is set to: all */
    void GetStringA(std::string & placeHolder) const;
    void SetStringA(const std::string & newValue);
    /* accessors is set to: all */
    const std::string & StringA(void) const;
    std::string & StringA(void);
/* source line: 38 */

        virtual void PureVirtualB(void) const = 0;
        /* default methods */
 public:
    void SerializeRaw(std::ostream & outputStream) const;
    void DeSerializeRaw(std::istream & inputStream);
    void ToStream(std::ostream & outputStream) const;
    void ToStreamRaw(std::ostream & outputStream, const char delimiter = ' ',
                     bool headerOnly = false, const std::string & headerPrefix = "") const;
    /* default data methods */
 public:
    void Copy(const cmnDataGeneratorTestB & source);
    void SerializeBinary(std::ostream & outputStream) const throw (std::runtime_error);
    void DeSerializeBinary(std::istream & inputStream, const cmnDataFormat & localFormat, const cmnDataFormat & remoteFormat) throw (std::runtime_error);
    void SerializeText(std::ostream & outputStream, const char delimiter = ',') const throw (std::runtime_error);
    std::string SerializeDescription(const char delimiter = ',', const std::string & userDescription = "") const;
    void DeSerializeText(std::istream & inputStream, const char delimiter = ',') throw (std::runtime_error);
    std::string HumanReadable(void) const;
    bool ScalarNumberIsFixed(void) const;
    size_t ScalarNumber(void) const;
    double Scalar(const size_t index) const throw (std::out_of_range);
    std::string ScalarDescription(const size_t index, const std::string & userDescription = "") const throw (std::out_of_range);
#if CISST_HAS_JSON
    void SerializeTextJSON(Json::Value & jsonValue) const;
    void DeSerializeTextJSON(const Json::Value & jsonValue) throw (std::runtime_error);
#endif // CISST_HAS_JSON

}; // cmnDataGeneratorTestB
/* default functions */
void  cmnSerializeRaw(std::ostream & outputStream, const cmnDataGeneratorTestB & object);
void  cmnDeSerializeRaw(std::istream & inputStream, cmnDataGeneratorTestB & placeHolder);
/* data functions */
template <> class cmnData<cmnDataGeneratorTestB > {
public: 
    enum {IS_SPECIALIZED = 1};
    typedef cmnDataGeneratorTestB DataType;
    static void Copy(DataType & data, const DataType & source) {
        data.Copy(source);
    }
    static std::string SerializeDescription(const DataType & data, const char delimiter, const std::string & userDescription) {
        return data.SerializeDescription(delimiter, userDescription);
    }
    static void SerializeBinary(const DataType & data, std::ostream & outputStream) throw (std::runtime_error) {
        data.SerializeBinary(outputStream);
    }
    static void DeSerializeBinary(DataType & data, std::istream & inputStream, const cmnDataFormat & localFormat, const cmnDataFormat & remoteFormat) throw (std::runtime_error) {
        data.DeSerializeBinary(inputStream, localFormat, remoteFormat);
    }
    static void SerializeText(const DataType & data, std::ostream & outputStream, const char delimiter = ',') throw (std::runtime_error) {
        data.SerializeText(outputStream, delimiter);
    }
    static void DeSerializeText(DataType & data, std::istream & inputStream, const char delimiter = ',') throw (std::runtime_error) {
        data.DeSerializeText(inputStream, delimiter);
    }
    static std::string HumanReadable(const DataType & data) {
        return data.HumanReadable();
    }
    static bool ScalarNumberIsFixed(const DataType & data) {
        return data.ScalarNumberIsFixed();
    }
    static size_t ScalarNumber(const DataType & data) {
        return data.ScalarNumber();
    }
    static std::string ScalarDescription(const DataType & data, const size_t index, const std::string & userDescription = "") throw (std::out_of_range) {
        return data.ScalarDescription(index, userDescription);
    }
    static double Scalar(const DataType & data, const size_t index) throw (std::out_of_range) {
        return data.Scalar(index);
    }
};
inline std::ostream & operator << (std::ostream & outputStream, const cmnDataGeneratorTestB & data) {
    outputStream << cmnData<cmnDataGeneratorTestB >::HumanReadable(data);
    return outputStream;
}
#if CISST_HAS_JSON
template <> void  cmnDataJSON<cmnDataGeneratorTestB >::SerializeText(const cmnDataGeneratorTestB & data, Json::Value & jsonValue);
template <> void  cmnDataJSON<cmnDataGeneratorTestB >::DeSerializeText(cmnDataGeneratorTestB & data, const Json::Value & jsonValue) throw (std::runtime_error);
#endif // CISST_HAS_JSON

/* source line: 43 */
class  cmnDataGeneratorTestC: public cmnGenericObject, public cmnDataGeneratorTestB
{
 /* default constructors and destructors. */
 public:
    cmnDataGeneratorTestC(void);
    cmnDataGeneratorTestC(const cmnDataGeneratorTestC & other);
    ~cmnDataGeneratorTestC();

/* source line: 58 */

        // to test inheritance using dynamic cast
        inline void PureVirtualA(void) const {}
        inline void PureVirtualB(void) const {}
    /* source line: 64 */
 public:
    StdVectorType StdVector; // std vector
/* source line: 71 */
public:
    enum ArraySizeType {SIZE = 3 };
    static std::string ArraySizeTypeToString(const ArraySizeType & value) throw (std::runtime_error);
    static ArraySizeType ArraySizeTypeFromString(const std::string & value) throw (std::runtime_error);
    static const std::vector<int> & ArraySizeTypeVectorInt(void);
    static const std::vector<std::string> & ArraySizeTypeVectorString(void);
/* source line: 79 */
 public:
    double CArray[SIZE]; // CArray
/* source line: 85 */
public:
    enum Array2DSizeType {ROW = 3, COL = 4 };
    static std::string Array2DSizeTypeToString(const Array2DSizeType & value) throw (std::runtime_error);
    static Array2DSizeType Array2DSizeTypeFromString(const std::string & value) throw (std::runtime_error);
    static const std::vector<int> & Array2DSizeTypeVectorInt(void);
    static const std::vector<std::string> & Array2DSizeTypeVectorString(void);
/* source line: 97 */
 public:
    size_t CArray2D[ROW][COL]; // CArray2D
/* source line: 103 */
 protected:
    std::string mdummyString; // dummyString
 public:
    /* accessors is set to: all */
    void GetdummyString(std::string & placeHolder) const;
    void SetdummyString(const std::string & newValue);
    /* accessors is set to: all */
    const std::string & dummyString(void) const;
    std::string & dummyString(void);
/* source line: 109 */

    private:
        CMN_DECLARE_SERVICES(CMN_DYNAMIC_CREATION, CMN_LOG_ALLOW_DEFAULT);
        /* default methods */
 public:
    void SerializeRaw(std::ostream & outputStream) const;
    void DeSerializeRaw(std::istream & inputStream);
    void ToStream(std::ostream & outputStream) const;
    void ToStreamRaw(std::ostream & outputStream, const char delimiter = ' ',
                     bool headerOnly = false, const std::string & headerPrefix = "") const;
    /* default data methods */
 public:
    void Copy(const cmnDataGeneratorTestC & source);
    void SerializeBinary(std::ostream & outputStream) const throw (std::runtime_error);
    void DeSerializeBinary(std::istream & inputStream, const cmnDataFormat & localFormat, const cmnDataFormat & remoteFormat) throw (std::runtime_error);
    void SerializeText(std::ostream & outputStream, const char delimiter = ',') const throw (std::runtime_error);
    std::string SerializeDescription(const char delimiter = ',', const std::string & userDescription = "") const;
    void DeSerializeText(std::istream & inputStream, const char delimiter = ',') throw (std::runtime_error);
    std::string HumanReadable(void) const;
    bool ScalarNumberIsFixed(void) const;
    size_t ScalarNumber(void) const;
    double Scalar(const size_t index) const throw (std::out_of_range);
    std::string ScalarDescription(const size_t index, const std::string & userDescription = "") const throw (std::out_of_range);
#if CISST_HAS_JSON
    void SerializeTextJSON(Json::Value & jsonValue) const;
    void DeSerializeTextJSON(const Json::Value & jsonValue) throw (std::runtime_error);
#endif // CISST_HAS_JSON

}; // cmnDataGeneratorTestC
/* default functions */
void  cmnSerializeRaw(std::ostream & outputStream, const cmnDataGeneratorTestC & object);
void  cmnDeSerializeRaw(std::istream & inputStream, cmnDataGeneratorTestC & placeHolder);
/* data functions */
template <> class cmnData<cmnDataGeneratorTestC > {
public: 
    enum {IS_SPECIALIZED = 1};
    typedef cmnDataGeneratorTestC DataType;
    static void Copy(DataType & data, const DataType & source) {
        data.Copy(source);
    }
    static std::string SerializeDescription(const DataType & data, const char delimiter, const std::string & userDescription) {
        return data.SerializeDescription(delimiter, userDescription);
    }
    static void SerializeBinary(const DataType & data, std::ostream & outputStream) throw (std::runtime_error) {
        data.SerializeBinary(outputStream);
    }
    static void DeSerializeBinary(DataType & data, std::istream & inputStream, const cmnDataFormat & localFormat, const cmnDataFormat & remoteFormat) throw (std::runtime_error) {
        data.DeSerializeBinary(inputStream, localFormat, remoteFormat);
    }
    static void SerializeText(const DataType & data, std::ostream & outputStream, const char delimiter = ',') throw (std::runtime_error) {
        data.SerializeText(outputStream, delimiter);
    }
    static void DeSerializeText(DataType & data, std::istream & inputStream, const char delimiter = ',') throw (std::runtime_error) {
        data.DeSerializeText(inputStream, delimiter);
    }
    static std::string HumanReadable(const DataType & data) {
        return data.HumanReadable();
    }
    static bool ScalarNumberIsFixed(const DataType & data) {
        return data.ScalarNumberIsFixed();
    }
    static size_t ScalarNumber(const DataType & data) {
        return data.ScalarNumber();
    }
    static std::string ScalarDescription(const DataType & data, const size_t index, const std::string & userDescription = "") throw (std::out_of_range) {
        return data.ScalarDescription(index, userDescription);
    }
    static double Scalar(const DataType & data, const size_t index) throw (std::out_of_range) {
        return data.Scalar(index);
    }
};
inline std::ostream & operator << (std::ostream & outputStream, const cmnDataGeneratorTestC & data) {
    outputStream << cmnData<cmnDataGeneratorTestC >::HumanReadable(data);
    return outputStream;
}
#if CISST_HAS_JSON
template <> void  cmnDataJSON<cmnDataGeneratorTestC >::SerializeText(const cmnDataGeneratorTestC & data, Json::Value & jsonValue);
template <> void  cmnDataJSON<cmnDataGeneratorTestC >::DeSerializeText(cmnDataGeneratorTestC & data, const Json::Value & jsonValue) throw (std::runtime_error);
#endif // CISST_HAS_JSON
std::string  cmnDataHumanReadable_cmnDataGeneratorTestC_ArraySizeType(const cmnDataGeneratorTestC::ArraySizeType & data);
CMN_DATA_SPECIALIZATION_FOR_ENUM_USER_HUMAN_READABLE(cmnDataGeneratorTestC::ArraySizeType, int, cmnDataHumanReadable_cmnDataGeneratorTestC_ArraySizeType);
#if CISST_HAS_JSON
  CMN_DECLARE_DATA_FUNCTIONS_JSON_FOR_ENUM(cmnDataGeneratorTestC::ArraySizeType);
#endif // CISST_HAS_JSON
std::string  cmnDataHumanReadable_cmnDataGeneratorTestC_Array2DSizeType(const cmnDataGeneratorTestC::Array2DSizeType & data);
CMN_DATA_SPECIALIZATION_FOR_ENUM_USER_HUMAN_READABLE(cmnDataGeneratorTestC::Array2DSizeType, int, cmnDataHumanReadable_cmnDataGeneratorTestC_Array2DSizeType);
#if CISST_HAS_JSON
  CMN_DECLARE_DATA_FUNCTIONS_JSON_FOR_ENUM(cmnDataGeneratorTestC::Array2DSizeType);
#endif // CISST_HAS_JSON

/* source line: 115 */

CMN_DECLARE_SERVICES_INSTANTIATION(cmnDataGeneratorTestC);



#endif // _cmnDataGeneratorTestTypes_h
