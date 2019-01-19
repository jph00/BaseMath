
#ifdef __cplusplus
extern "C" {
#endif

#define OVERLOADABLE __attribute__((overloadable))
#include <stdbool.h>
#include "CDistribution.h"

OVERLOADABLE float smSum(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE float smSum_sqr(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE float smSum_abs(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_abs(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_sqrt(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sqrt(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_acos(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_acos(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_acosh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_acosh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_asin(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_asin(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_asinh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_asinh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_atan(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_atan(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_atanh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_atanh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_cbrt(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cbrt(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_cos(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cos(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_cosh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cosh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_erf(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_erf(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_erfc(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_erfc(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_exp(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_exp(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_exp2(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_exp2(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_expm1(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_expm1(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_log(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_log10(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log10(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_log1p(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log1p(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_log2(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log2(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_logb(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_logb(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_nearbyint(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_nearbyint(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_rint(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_rint(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_sin(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sin(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_sinh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sinh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_tan(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tan(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_tanh(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tanh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE float smSum_tgamma(const float* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tgamma(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE double smSum_sqr(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE double smSum_abs(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_abs(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_sqrt(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sqrt(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_acos(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_acos(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_acosh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_acosh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_asin(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_asin(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_asinh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_asinh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_atan(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_atan(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_atanh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_atanh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_cbrt(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cbrt(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_cos(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cos(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_cosh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_cosh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_erf(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_erf(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_erfc(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_erfc(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_exp(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_exp(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_exp2(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_exp2(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_expm1(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_expm1(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_log(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_log10(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log10(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_log1p(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log1p(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_log2(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_log2(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_logb(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_logb(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_nearbyint(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_nearbyint(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_rint(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_rint(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_sin(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sin(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_sinh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_sinh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_tan(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tan(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_tanh(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tanh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
OVERLOADABLE double smSum_tgamma(const double* __restrict__ pSrc, const int len) ;
OVERLOADABLE void sm_tgamma(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;

#ifdef __cplusplus
}
#endif

