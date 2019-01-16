
#ifdef __cplusplus
extern "C" {
#endif

#define OVERLOADABLE __attribute__((overloadable))
#include <stdbool.h>
#include "CDistribution.h"

void sm_add_float(const float* __restrict__ pSrc, const float val, float* __restrict__ pDst, const int len) ;
float smSum_float(const float* __restrict__ pSrc, const int len) ;
float smSum_sqr_float(const float* __restrict__ pSrc, const int len) ;
float smSum_abs_float(const float* __restrict__ pSrc, const int len) ;
void sm_abs_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_sqrt_float(const float* __restrict__ pSrc, const int len) ;
void sm_sqrt_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_acos_float(const float* __restrict__ pSrc, const int len) ;
void sm_acos_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_acosh_float(const float* __restrict__ pSrc, const int len) ;
void sm_acosh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_asin_float(const float* __restrict__ pSrc, const int len) ;
void sm_asin_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_asinh_float(const float* __restrict__ pSrc, const int len) ;
void sm_asinh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_atan_float(const float* __restrict__ pSrc, const int len) ;
void sm_atan_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_atanh_float(const float* __restrict__ pSrc, const int len) ;
void sm_atanh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_cbrt_float(const float* __restrict__ pSrc, const int len) ;
void sm_cbrt_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_cos_float(const float* __restrict__ pSrc, const int len) ;
void sm_cos_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_cosh_float(const float* __restrict__ pSrc, const int len) ;
void sm_cosh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_erf_float(const float* __restrict__ pSrc, const int len) ;
void sm_erf_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_erfc_float(const float* __restrict__ pSrc, const int len) ;
void sm_erfc_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_exp_float(const float* __restrict__ pSrc, const int len) ;
void sm_exp_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_exp2_float(const float* __restrict__ pSrc, const int len) ;
void sm_exp2_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_expm1_float(const float* __restrict__ pSrc, const int len) ;
void sm_expm1_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_log_float(const float* __restrict__ pSrc, const int len) ;
void sm_log_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_log10_float(const float* __restrict__ pSrc, const int len) ;
void sm_log10_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_log1p_float(const float* __restrict__ pSrc, const int len) ;
void sm_log1p_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_log2_float(const float* __restrict__ pSrc, const int len) ;
void sm_log2_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_logb_float(const float* __restrict__ pSrc, const int len) ;
void sm_logb_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_nearbyint_float(const float* __restrict__ pSrc, const int len) ;
void sm_nearbyint_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_rint_float(const float* __restrict__ pSrc, const int len) ;
void sm_rint_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_sin_float(const float* __restrict__ pSrc, const int len) ;
void sm_sin_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_sinh_float(const float* __restrict__ pSrc, const int len) ;
void sm_sinh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_tan_float(const float* __restrict__ pSrc, const int len) ;
void sm_tan_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_tanh_float(const float* __restrict__ pSrc, const int len) ;
void sm_tanh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_tgamma_float(const float* __restrict__ pSrc, const int len) ;
void sm_tgamma_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
void sm_add_double(const double* __restrict__ pSrc, const double val, double* __restrict__ pDst, const int len) ;
double smSum_double(const double* __restrict__ pSrc, const int len) ;
double smSum_sqr_double(const double* __restrict__ pSrc, const int len) ;
double smSum_abs_double(const double* __restrict__ pSrc, const int len) ;
void sm_abs_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_sqrt_double(const double* __restrict__ pSrc, const int len) ;
void sm_sqrt_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_acos_double(const double* __restrict__ pSrc, const int len) ;
void sm_acos_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_acosh_double(const double* __restrict__ pSrc, const int len) ;
void sm_acosh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_asin_double(const double* __restrict__ pSrc, const int len) ;
void sm_asin_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_asinh_double(const double* __restrict__ pSrc, const int len) ;
void sm_asinh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_atan_double(const double* __restrict__ pSrc, const int len) ;
void sm_atan_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_atanh_double(const double* __restrict__ pSrc, const int len) ;
void sm_atanh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_cbrt_double(const double* __restrict__ pSrc, const int len) ;
void sm_cbrt_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_cos_double(const double* __restrict__ pSrc, const int len) ;
void sm_cos_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_cosh_double(const double* __restrict__ pSrc, const int len) ;
void sm_cosh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_erf_double(const double* __restrict__ pSrc, const int len) ;
void sm_erf_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_erfc_double(const double* __restrict__ pSrc, const int len) ;
void sm_erfc_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_exp_double(const double* __restrict__ pSrc, const int len) ;
void sm_exp_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_exp2_double(const double* __restrict__ pSrc, const int len) ;
void sm_exp2_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_expm1_double(const double* __restrict__ pSrc, const int len) ;
void sm_expm1_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_log_double(const double* __restrict__ pSrc, const int len) ;
void sm_log_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_log10_double(const double* __restrict__ pSrc, const int len) ;
void sm_log10_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_log1p_double(const double* __restrict__ pSrc, const int len) ;
void sm_log1p_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_log2_double(const double* __restrict__ pSrc, const int len) ;
void sm_log2_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_logb_double(const double* __restrict__ pSrc, const int len) ;
void sm_logb_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_nearbyint_double(const double* __restrict__ pSrc, const int len) ;
void sm_nearbyint_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_rint_double(const double* __restrict__ pSrc, const int len) ;
void sm_rint_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_sin_double(const double* __restrict__ pSrc, const int len) ;
void sm_sin_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_sinh_double(const double* __restrict__ pSrc, const int len) ;
void sm_sinh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_tan_double(const double* __restrict__ pSrc, const int len) ;
void sm_tan_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_tanh_double(const double* __restrict__ pSrc, const int len) ;
void sm_tanh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_tgamma_double(const double* __restrict__ pSrc, const int len) ;
void sm_tgamma_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;

#ifdef __cplusplus
}
#endif

