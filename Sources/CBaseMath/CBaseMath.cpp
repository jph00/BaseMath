#include "include/CBaseMath.h"


#include <cmath>

using namespace std; 


void sm_add_float(const float* __restrict__ pSrc, const float val, float* __restrict__ pDst, const int len) {
  for (int i=0; i<len; ++i) { pDst[i] = pSrc[i]+val; }
}

float smSum_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}

float smSum_sqr_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]*pSrc[i]; }
  return r;
}

float smSum_abs_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += abs(pSrc[i]); }
  return r;
}

void sm_abs_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = abs(pSrc[i]); }
}
float smSum_sqrt_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sqrt(pSrc[i]); }
  return r;
}

void sm_sqrt_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sqrt(pSrc[i]); }
}
float smSum_acos_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acos(pSrc[i]); }
  return r;
}

void sm_acos_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = acos(pSrc[i]); }
}
float smSum_acosh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acosh(pSrc[i]); }
  return r;
}

void sm_acosh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = acosh(pSrc[i]); }
}
float smSum_asin_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asin(pSrc[i]); }
  return r;
}

void sm_asin_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = asin(pSrc[i]); }
}
float smSum_asinh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asinh(pSrc[i]); }
  return r;
}

void sm_asinh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = asinh(pSrc[i]); }
}
float smSum_atan_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atan(pSrc[i]); }
  return r;
}

void sm_atan_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = atan(pSrc[i]); }
}
float smSum_atanh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atanh(pSrc[i]); }
  return r;
}

void sm_atanh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = atanh(pSrc[i]); }
}
float smSum_cbrt_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cbrt(pSrc[i]); }
  return r;
}

void sm_cbrt_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cbrt(pSrc[i]); }
}
float smSum_cos_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cos(pSrc[i]); }
  return r;
}

void sm_cos_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cos(pSrc[i]); }
}
float smSum_cosh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cosh(pSrc[i]); }
  return r;
}

void sm_cosh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cosh(pSrc[i]); }
}
float smSum_erf_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erf(pSrc[i]); }
  return r;
}

void sm_erf_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = erf(pSrc[i]); }
}
float smSum_erfc_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erfc(pSrc[i]); }
  return r;
}

void sm_erfc_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = erfc(pSrc[i]); }
}
float smSum_exp_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp(pSrc[i]); }
  return r;
}

void sm_exp_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = exp(pSrc[i]); }
}
float smSum_exp2_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp2(pSrc[i]); }
  return r;
}

void sm_exp2_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = exp2(pSrc[i]); }
}
float smSum_expm1_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += expm1(pSrc[i]); }
  return r;
}

void sm_expm1_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = expm1(pSrc[i]); }
}
float smSum_log_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log(pSrc[i]); }
  return r;
}

void sm_log_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log(pSrc[i]); }
}
float smSum_log10_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log10(pSrc[i]); }
  return r;
}

void sm_log10_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log10(pSrc[i]); }
}
float smSum_log1p_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log1p(pSrc[i]); }
  return r;
}

void sm_log1p_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log1p(pSrc[i]); }
}
float smSum_log2_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log2(pSrc[i]); }
  return r;
}

void sm_log2_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log2(pSrc[i]); }
}
float smSum_logb_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += logb(pSrc[i]); }
  return r;
}

void sm_logb_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = logb(pSrc[i]); }
}
float smSum_nearbyint_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += nearbyint(pSrc[i]); }
  return r;
}

void sm_nearbyint_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = nearbyint(pSrc[i]); }
}
float smSum_rint_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += rint(pSrc[i]); }
  return r;
}

void sm_rint_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = rint(pSrc[i]); }
}
float smSum_sin_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sin(pSrc[i]); }
  return r;
}

void sm_sin_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sin(pSrc[i]); }
}
float smSum_sinh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sinh(pSrc[i]); }
  return r;
}

void sm_sinh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sinh(pSrc[i]); }
}
float smSum_tan_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tan(pSrc[i]); }
  return r;
}

void sm_tan_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tan(pSrc[i]); }
}
float smSum_tanh_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tanh(pSrc[i]); }
  return r;
}

void sm_tanh_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tanh(pSrc[i]); }
}
float smSum_tgamma_float(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tgamma(pSrc[i]); }
  return r;
}

void sm_tgamma_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tgamma(pSrc[i]); }
}


void sm_add_double(const double* __restrict__ pSrc, const double val, double* __restrict__ pDst, const int len) {
  for (int i=0; i<len; ++i) { pDst[i] = pSrc[i]+val; }
}

double smSum_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}

double smSum_sqr_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]*pSrc[i]; }
  return r;
}

double smSum_abs_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += abs(pSrc[i]); }
  return r;
}

void sm_abs_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = abs(pSrc[i]); }
}
double smSum_sqrt_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sqrt(pSrc[i]); }
  return r;
}

void sm_sqrt_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sqrt(pSrc[i]); }
}
double smSum_acos_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acos(pSrc[i]); }
  return r;
}

void sm_acos_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = acos(pSrc[i]); }
}
double smSum_acosh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acosh(pSrc[i]); }
  return r;
}

void sm_acosh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = acosh(pSrc[i]); }
}
double smSum_asin_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asin(pSrc[i]); }
  return r;
}

void sm_asin_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = asin(pSrc[i]); }
}
double smSum_asinh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asinh(pSrc[i]); }
  return r;
}

void sm_asinh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = asinh(pSrc[i]); }
}
double smSum_atan_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atan(pSrc[i]); }
  return r;
}

void sm_atan_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = atan(pSrc[i]); }
}
double smSum_atanh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atanh(pSrc[i]); }
  return r;
}

void sm_atanh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = atanh(pSrc[i]); }
}
double smSum_cbrt_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cbrt(pSrc[i]); }
  return r;
}

void sm_cbrt_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cbrt(pSrc[i]); }
}
double smSum_cos_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cos(pSrc[i]); }
  return r;
}

void sm_cos_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cos(pSrc[i]); }
}
double smSum_cosh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cosh(pSrc[i]); }
  return r;
}

void sm_cosh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = cosh(pSrc[i]); }
}
double smSum_erf_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erf(pSrc[i]); }
  return r;
}

void sm_erf_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = erf(pSrc[i]); }
}
double smSum_erfc_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erfc(pSrc[i]); }
  return r;
}

void sm_erfc_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = erfc(pSrc[i]); }
}
double smSum_exp_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp(pSrc[i]); }
  return r;
}

void sm_exp_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = exp(pSrc[i]); }
}
double smSum_exp2_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp2(pSrc[i]); }
  return r;
}

void sm_exp2_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = exp2(pSrc[i]); }
}
double smSum_expm1_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += expm1(pSrc[i]); }
  return r;
}

void sm_expm1_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = expm1(pSrc[i]); }
}
double smSum_log_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log(pSrc[i]); }
  return r;
}

void sm_log_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log(pSrc[i]); }
}
double smSum_log10_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log10(pSrc[i]); }
  return r;
}

void sm_log10_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log10(pSrc[i]); }
}
double smSum_log1p_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log1p(pSrc[i]); }
  return r;
}

void sm_log1p_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log1p(pSrc[i]); }
}
double smSum_log2_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log2(pSrc[i]); }
  return r;
}

void sm_log2_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = log2(pSrc[i]); }
}
double smSum_logb_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += logb(pSrc[i]); }
  return r;
}

void sm_logb_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = logb(pSrc[i]); }
}
double smSum_nearbyint_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += nearbyint(pSrc[i]); }
  return r;
}

void sm_nearbyint_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = nearbyint(pSrc[i]); }
}
double smSum_rint_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += rint(pSrc[i]); }
  return r;
}

void sm_rint_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = rint(pSrc[i]); }
}
double smSum_sin_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sin(pSrc[i]); }
  return r;
}

void sm_sin_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sin(pSrc[i]); }
}
double smSum_sinh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sinh(pSrc[i]); }
  return r;
}

void sm_sinh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = sinh(pSrc[i]); }
}
double smSum_tan_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tan(pSrc[i]); }
  return r;
}

void sm_tan_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tan(pSrc[i]); }
}
double smSum_tanh_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tanh(pSrc[i]); }
  return r;
}

void sm_tanh_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tanh(pSrc[i]); }
}
double smSum_tgamma_double(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tgamma(pSrc[i]); }
  return r;
}

void sm_tgamma_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { pDst[i] = tgamma(pSrc[i]); }
}


