#include "include/CBaseMath.h"


#include <cmath>

using namespace std; 


OVERLOADABLE float smSum(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}

OVERLOADABLE float smSum_sqr(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]*pSrc[i]; }
  return r;
}

OVERLOADABLE float smSum_abs(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += abs(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_abs(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = abs(pSrc[i]); }
}
OVERLOADABLE float smSum_sqrt(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sqrt(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sqrt(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sqrt(pSrc[i]); }
}
OVERLOADABLE float smSum_acos(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acos(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_acos(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = acos(pSrc[i]); }
}
OVERLOADABLE float smSum_acosh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acosh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_acosh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = acosh(pSrc[i]); }
}
OVERLOADABLE float smSum_asin(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asin(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_asin(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = asin(pSrc[i]); }
}
OVERLOADABLE float smSum_asinh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asinh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_asinh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = asinh(pSrc[i]); }
}
OVERLOADABLE float smSum_atan(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atan(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_atan(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = atan(pSrc[i]); }
}
OVERLOADABLE float smSum_atanh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atanh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_atanh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = atanh(pSrc[i]); }
}
OVERLOADABLE float smSum_cbrt(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cbrt(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cbrt(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cbrt(pSrc[i]); }
}
OVERLOADABLE float smSum_cos(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cos(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cos(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cos(pSrc[i]); }
}
OVERLOADABLE float smSum_cosh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cosh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cosh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cosh(pSrc[i]); }
}
OVERLOADABLE float smSum_erf(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erf(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_erf(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = erf(pSrc[i]); }
}
OVERLOADABLE float smSum_erfc(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erfc(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_erfc(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = erfc(pSrc[i]); }
}
OVERLOADABLE float smSum_exp(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_exp(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = exp(pSrc[i]); }
}
OVERLOADABLE float smSum_exp2(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp2(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_exp2(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = exp2(pSrc[i]); }
}
OVERLOADABLE float smSum_expm1(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += expm1(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_expm1(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = expm1(pSrc[i]); }
}
OVERLOADABLE float smSum_log(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log(pSrc[i]); }
}
OVERLOADABLE float smSum_log10(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log10(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log10(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log10(pSrc[i]); }
}
OVERLOADABLE float smSum_log1p(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log1p(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log1p(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log1p(pSrc[i]); }
}
OVERLOADABLE float smSum_log2(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log2(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log2(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log2(pSrc[i]); }
}
OVERLOADABLE float smSum_logb(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += logb(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_logb(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = logb(pSrc[i]); }
}
OVERLOADABLE float smSum_nearbyint(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += nearbyint(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_nearbyint(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = nearbyint(pSrc[i]); }
}
OVERLOADABLE float smSum_rint(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += rint(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_rint(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = rint(pSrc[i]); }
}
OVERLOADABLE float smSum_sin(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sin(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sin(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sin(pSrc[i]); }
}
OVERLOADABLE float smSum_sinh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sinh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sinh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sinh(pSrc[i]); }
}
OVERLOADABLE float smSum_tan(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tan(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tan(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tan(pSrc[i]); }
}
OVERLOADABLE float smSum_tanh(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tanh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tanh(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tanh(pSrc[i]); }
}
OVERLOADABLE float smSum_tgamma(const float* __restrict__ pSrc, const int len) {
  float r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tgamma(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tgamma(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tgamma(pSrc[i]); }
}


OVERLOADABLE double smSum(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}

OVERLOADABLE double smSum_sqr(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]*pSrc[i]; }
  return r;
}

OVERLOADABLE double smSum_abs(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += abs(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_abs(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = abs(pSrc[i]); }
}
OVERLOADABLE double smSum_sqrt(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sqrt(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sqrt(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sqrt(pSrc[i]); }
}
OVERLOADABLE double smSum_acos(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acos(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_acos(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = acos(pSrc[i]); }
}
OVERLOADABLE double smSum_acosh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += acosh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_acosh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = acosh(pSrc[i]); }
}
OVERLOADABLE double smSum_asin(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asin(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_asin(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = asin(pSrc[i]); }
}
OVERLOADABLE double smSum_asinh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += asinh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_asinh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = asinh(pSrc[i]); }
}
OVERLOADABLE double smSum_atan(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atan(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_atan(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = atan(pSrc[i]); }
}
OVERLOADABLE double smSum_atanh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += atanh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_atanh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = atanh(pSrc[i]); }
}
OVERLOADABLE double smSum_cbrt(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cbrt(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cbrt(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cbrt(pSrc[i]); }
}
OVERLOADABLE double smSum_cos(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cos(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cos(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cos(pSrc[i]); }
}
OVERLOADABLE double smSum_cosh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += cosh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_cosh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = cosh(pSrc[i]); }
}
OVERLOADABLE double smSum_erf(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erf(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_erf(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = erf(pSrc[i]); }
}
OVERLOADABLE double smSum_erfc(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += erfc(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_erfc(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = erfc(pSrc[i]); }
}
OVERLOADABLE double smSum_exp(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_exp(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = exp(pSrc[i]); }
}
OVERLOADABLE double smSum_exp2(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += exp2(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_exp2(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = exp2(pSrc[i]); }
}
OVERLOADABLE double smSum_expm1(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += expm1(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_expm1(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = expm1(pSrc[i]); }
}
OVERLOADABLE double smSum_log(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log(pSrc[i]); }
}
OVERLOADABLE double smSum_log10(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log10(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log10(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log10(pSrc[i]); }
}
OVERLOADABLE double smSum_log1p(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log1p(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log1p(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log1p(pSrc[i]); }
}
OVERLOADABLE double smSum_log2(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += log2(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_log2(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = log2(pSrc[i]); }
}
OVERLOADABLE double smSum_logb(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += logb(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_logb(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = logb(pSrc[i]); }
}
OVERLOADABLE double smSum_nearbyint(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += nearbyint(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_nearbyint(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = nearbyint(pSrc[i]); }
}
OVERLOADABLE double smSum_rint(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += rint(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_rint(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = rint(pSrc[i]); }
}
OVERLOADABLE double smSum_sin(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sin(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sin(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sin(pSrc[i]); }
}
OVERLOADABLE double smSum_sinh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += sinh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_sinh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = sinh(pSrc[i]); }
}
OVERLOADABLE double smSum_tan(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tan(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tan(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tan(pSrc[i]); }
}
OVERLOADABLE double smSum_tanh(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tanh(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tanh(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tanh(pSrc[i]); }
}
OVERLOADABLE double smSum_tgamma(const double* __restrict__ pSrc, const int len) {
  double r = 0;
  #pragma ivdep
  #pragma clang loop interleave_count(8)
  for (int i=0; i<len; ++i) { r += tgamma(pSrc[i]); }
  return r;
}

OVERLOADABLE void sm_tgamma(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) {
  #pragma ivdep
  for (int i=0; i<len; ++i) { pDst[i] = tgamma(pSrc[i]); }
}


