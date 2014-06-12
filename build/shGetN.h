//
// MATLAB コンパイラー:5.1 (R2014a)
// 日付:Tue Jun 10 12:10:37 2014
// 引数: "-B" "macro_default" "-B" "cpplib:shGetN" "-W" "cpplib:shGetN" "-T"
// "link:lib" "-d" "shGetN" "shGetNeuron.m" 
//

#ifndef __shGetN_h
#define __shGetN_h 1

#if defined(__cplusplus) && !defined(mclmcrrt_h) && defined(__linux__)
#  pragma implementation "mclmcrrt.h"
#endif
#include "mclmcrrt.h"
#include "mclcppclass.h"
#ifdef __cplusplus
extern "C" {
#endif

#if defined(__SUNPRO_CC)
/* Solaris shared libraries use __global, rather than mapfiles
 * to define the API exported from a shared library. __global is
 * only necessary when building the library -- files including
 * this header file to use the library do not need the __global
 * declaration; hence the EXPORTING_<library> logic.
 */

#ifdef EXPORTING_shGetN
#define PUBLIC_shGetN_C_API __global
#else
#define PUBLIC_shGetN_C_API /* No import statement needed. */
#endif

#define LIB_shGetN_C_API PUBLIC_shGetN_C_API

#elif defined(_HPUX_SOURCE)

#ifdef EXPORTING_shGetN
#define PUBLIC_shGetN_C_API __declspec(dllexport)
#else
#define PUBLIC_shGetN_C_API __declspec(dllimport)
#endif

#define LIB_shGetN_C_API PUBLIC_shGetN_C_API


#else

#define LIB_shGetN_C_API

#endif

/* This symbol is defined in shared libraries. Define it here
 * (to nothing) in case this isn't a shared library. 
 */
#ifndef LIB_shGetN_C_API 
#define LIB_shGetN_C_API /* No special import/export declaration */
#endif

extern LIB_shGetN_C_API 
bool MW_CALL_CONV shGetNInitializeWithHandlers(
       mclOutputHandlerFcn error_handler, 
       mclOutputHandlerFcn print_handler);

extern LIB_shGetN_C_API 
bool MW_CALL_CONV shGetNInitialize(void);

extern LIB_shGetN_C_API 
void MW_CALL_CONV shGetNTerminate(void);



extern LIB_shGetN_C_API 
void MW_CALL_CONV shGetNPrintStackTrace(void);

extern LIB_shGetN_C_API 
bool MW_CALL_CONV mlxShGetNeuron(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[]);


#ifdef __cplusplus
}
#endif

#ifdef __cplusplus

/* On Windows, use __declspec to control the exported API */
#if defined(_MSC_VER) || defined(__BORLANDC__)

#ifdef EXPORTING_shGetN
#define PUBLIC_shGetN_CPP_API __declspec(dllexport)
#else
#define PUBLIC_shGetN_CPP_API __declspec(dllimport)
#endif

#define LIB_shGetN_CPP_API PUBLIC_shGetN_CPP_API

#else

#if !defined(LIB_shGetN_CPP_API)
#if defined(LIB_shGetN_C_API)
#define LIB_shGetN_CPP_API LIB_shGetN_C_API
#else
#define LIB_shGetN_CPP_API /* empty! */ 
#endif
#endif

#endif

extern LIB_shGetN_CPP_API void MW_CALL_CONV shGetNeuron(int nargout, mwArray& res, const mwArray& varargin);

extern LIB_shGetN_CPP_API void MW_CALL_CONV shGetNeuron(int nargout, mwArray& res);

#endif
#endif
