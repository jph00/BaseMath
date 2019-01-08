#include "include/CBaseMath.h"
#include <math.h>


float smSum_float(const float* restrict pSrc, const int len) {
  float r = 0;
  #pragma clang loop vectorize(enable) interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}


double smSum_double(const double* restrict pSrc, const int len) {
  double r = 0;
  #pragma clang loop vectorize(enable) interleave_count(8)
  for (int i=0; i<len; ++i) { r += pSrc[i]; }
  return r;
}


