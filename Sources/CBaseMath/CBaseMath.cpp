#include "include/CBaseMath.h"


#include <random>
#include <cmath>

using namespace std; 

extern "C" {

struct RandGenC:mt19937 {}; 
typedef struct RandGenC RandGenC;
RandGenC* RandGen_create() { return (RandGenC*)(new mt19937(random_device()())); }
void RandGen_destroy(RandGenC* v) { delete(v); }



struct uniform_int_distribution_intC:uniform_int_distribution<int> {};
typedef struct uniform_int_distribution_intC uniform_int_distribution_intC;
uniform_int_distribution_intC* uniform_int_distribution_int_create(int a,int b) { return (uniform_int_distribution_intC*)(new uniform_int_distribution<int>(a,b)); }
void uniform_int_distribution_int_destroy(uniform_int_distribution_intC* v) { delete(v); }
int uniform_int_distribution_int_call(uniform_int_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct uniform_int_distribution_longC:uniform_int_distribution<long> {};
typedef struct uniform_int_distribution_longC uniform_int_distribution_longC;
uniform_int_distribution_longC* uniform_int_distribution_long_create(long a,long b) { return (uniform_int_distribution_longC*)(new uniform_int_distribution<long>(a,b)); }
void uniform_int_distribution_long_destroy(uniform_int_distribution_longC* v) { delete(v); }
long uniform_int_distribution_long_call(uniform_int_distribution_longC* p, RandGenC* g) {return (*p)(*g);}


struct binomial_distribution_intC:binomial_distribution<int> {};
typedef struct binomial_distribution_intC binomial_distribution_intC;
binomial_distribution_intC* binomial_distribution_int_create(int t, double p) { return (binomial_distribution_intC*)(new binomial_distribution<int>(t,p)); }
void binomial_distribution_int_destroy(binomial_distribution_intC* v) { delete(v); }
int binomial_distribution_int_call(binomial_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct binomial_distribution_longC:binomial_distribution<long> {};
typedef struct binomial_distribution_longC binomial_distribution_longC;
binomial_distribution_longC* binomial_distribution_long_create(long t, double p) { return (binomial_distribution_longC*)(new binomial_distribution<long>(t,p)); }
void binomial_distribution_long_destroy(binomial_distribution_longC* v) { delete(v); }
long binomial_distribution_long_call(binomial_distribution_longC* p, RandGenC* g) {return (*p)(*g);}


struct negative_binomial_distribution_intC:negative_binomial_distribution<int> {};
typedef struct negative_binomial_distribution_intC negative_binomial_distribution_intC;
negative_binomial_distribution_intC* negative_binomial_distribution_int_create(int k, double p) { return (negative_binomial_distribution_intC*)(new negative_binomial_distribution<int>(k,p)); }
void negative_binomial_distribution_int_destroy(negative_binomial_distribution_intC* v) { delete(v); }
int negative_binomial_distribution_int_call(negative_binomial_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct negative_binomial_distribution_longC:negative_binomial_distribution<long> {};
typedef struct negative_binomial_distribution_longC negative_binomial_distribution_longC;
negative_binomial_distribution_longC* negative_binomial_distribution_long_create(long k, double p) { return (negative_binomial_distribution_longC*)(new negative_binomial_distribution<long>(k,p)); }
void negative_binomial_distribution_long_destroy(negative_binomial_distribution_longC* v) { delete(v); }
long negative_binomial_distribution_long_call(negative_binomial_distribution_longC* p, RandGenC* g) {return (*p)(*g);}


struct geometric_distribution_intC:geometric_distribution<int> {};
typedef struct geometric_distribution_intC geometric_distribution_intC;
geometric_distribution_intC* geometric_distribution_int_create(double p) { return (geometric_distribution_intC*)(new geometric_distribution<int>(p)); }
void geometric_distribution_int_destroy(geometric_distribution_intC* v) { delete(v); }
int geometric_distribution_int_call(geometric_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct geometric_distribution_longC:geometric_distribution<long> {};
typedef struct geometric_distribution_longC geometric_distribution_longC;
geometric_distribution_longC* geometric_distribution_long_create(double p) { return (geometric_distribution_longC*)(new geometric_distribution<long>(p)); }
void geometric_distribution_long_destroy(geometric_distribution_longC* v) { delete(v); }
long geometric_distribution_long_call(geometric_distribution_longC* p, RandGenC* g) {return (*p)(*g);}


struct poisson_distribution_intC:poisson_distribution<int> {};
typedef struct poisson_distribution_intC poisson_distribution_intC;
poisson_distribution_intC* poisson_distribution_int_create(double mean) { return (poisson_distribution_intC*)(new poisson_distribution<int>(mean)); }
void poisson_distribution_int_destroy(poisson_distribution_intC* v) { delete(v); }
int poisson_distribution_int_call(poisson_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct poisson_distribution_longC:poisson_distribution<long> {};
typedef struct poisson_distribution_longC poisson_distribution_longC;
poisson_distribution_longC* poisson_distribution_long_create(double mean) { return (poisson_distribution_longC*)(new poisson_distribution<long>(mean)); }
void poisson_distribution_long_destroy(poisson_distribution_longC* v) { delete(v); }
long poisson_distribution_long_call(poisson_distribution_longC* p, RandGenC* g) {return (*p)(*g);}


struct uniform_real_distribution_floatC:uniform_real_distribution<float> {};
typedef struct uniform_real_distribution_floatC uniform_real_distribution_floatC;
uniform_real_distribution_floatC* uniform_real_distribution_float_create(float a,float b) { return (uniform_real_distribution_floatC*)(new uniform_real_distribution<float>(a,b)); }
void uniform_real_distribution_float_destroy(uniform_real_distribution_floatC* v) { delete(v); }
float uniform_real_distribution_float_call(uniform_real_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct uniform_real_distribution_doubleC:uniform_real_distribution<double> {};
typedef struct uniform_real_distribution_doubleC uniform_real_distribution_doubleC;
uniform_real_distribution_doubleC* uniform_real_distribution_double_create(double a,double b) { return (uniform_real_distribution_doubleC*)(new uniform_real_distribution<double>(a,b)); }
void uniform_real_distribution_double_destroy(uniform_real_distribution_doubleC* v) { delete(v); }
double uniform_real_distribution_double_call(uniform_real_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct exponential_distribution_floatC:exponential_distribution<float> {};
typedef struct exponential_distribution_floatC exponential_distribution_floatC;
exponential_distribution_floatC* exponential_distribution_float_create(float l) { return (exponential_distribution_floatC*)(new exponential_distribution<float>(l)); }
void exponential_distribution_float_destroy(exponential_distribution_floatC* v) { delete(v); }
float exponential_distribution_float_call(exponential_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct exponential_distribution_doubleC:exponential_distribution<double> {};
typedef struct exponential_distribution_doubleC exponential_distribution_doubleC;
exponential_distribution_doubleC* exponential_distribution_double_create(double l) { return (exponential_distribution_doubleC*)(new exponential_distribution<double>(l)); }
void exponential_distribution_double_destroy(exponential_distribution_doubleC* v) { delete(v); }
double exponential_distribution_double_call(exponential_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct gamma_distribution_floatC:gamma_distribution<float> {};
typedef struct gamma_distribution_floatC gamma_distribution_floatC;
gamma_distribution_floatC* gamma_distribution_float_create(float a,float b) { return (gamma_distribution_floatC*)(new gamma_distribution<float>(a,b)); }
void gamma_distribution_float_destroy(gamma_distribution_floatC* v) { delete(v); }
float gamma_distribution_float_call(gamma_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct gamma_distribution_doubleC:gamma_distribution<double> {};
typedef struct gamma_distribution_doubleC gamma_distribution_doubleC;
gamma_distribution_doubleC* gamma_distribution_double_create(double a,double b) { return (gamma_distribution_doubleC*)(new gamma_distribution<double>(a,b)); }
void gamma_distribution_double_destroy(gamma_distribution_doubleC* v) { delete(v); }
double gamma_distribution_double_call(gamma_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct weibull_distribution_floatC:weibull_distribution<float> {};
typedef struct weibull_distribution_floatC weibull_distribution_floatC;
weibull_distribution_floatC* weibull_distribution_float_create(float a,float b) { return (weibull_distribution_floatC*)(new weibull_distribution<float>(a,b)); }
void weibull_distribution_float_destroy(weibull_distribution_floatC* v) { delete(v); }
float weibull_distribution_float_call(weibull_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct weibull_distribution_doubleC:weibull_distribution<double> {};
typedef struct weibull_distribution_doubleC weibull_distribution_doubleC;
weibull_distribution_doubleC* weibull_distribution_double_create(double a,double b) { return (weibull_distribution_doubleC*)(new weibull_distribution<double>(a,b)); }
void weibull_distribution_double_destroy(weibull_distribution_doubleC* v) { delete(v); }
double weibull_distribution_double_call(weibull_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct normal_distribution_floatC:normal_distribution<float> {};
typedef struct normal_distribution_floatC normal_distribution_floatC;
normal_distribution_floatC* normal_distribution_float_create(float mean,float stddev) { return (normal_distribution_floatC*)(new normal_distribution<float>(mean,stddev)); }
void normal_distribution_float_destroy(normal_distribution_floatC* v) { delete(v); }
float normal_distribution_float_call(normal_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct normal_distribution_doubleC:normal_distribution<double> {};
typedef struct normal_distribution_doubleC normal_distribution_doubleC;
normal_distribution_doubleC* normal_distribution_double_create(double mean,double stddev) { return (normal_distribution_doubleC*)(new normal_distribution<double>(mean,stddev)); }
void normal_distribution_double_destroy(normal_distribution_doubleC* v) { delete(v); }
double normal_distribution_double_call(normal_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct lognormal_distribution_floatC:lognormal_distribution<float> {};
typedef struct lognormal_distribution_floatC lognormal_distribution_floatC;
lognormal_distribution_floatC* lognormal_distribution_float_create(float m,float s) { return (lognormal_distribution_floatC*)(new lognormal_distribution<float>(m,s)); }
void lognormal_distribution_float_destroy(lognormal_distribution_floatC* v) { delete(v); }
float lognormal_distribution_float_call(lognormal_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct lognormal_distribution_doubleC:lognormal_distribution<double> {};
typedef struct lognormal_distribution_doubleC lognormal_distribution_doubleC;
lognormal_distribution_doubleC* lognormal_distribution_double_create(double m,double s) { return (lognormal_distribution_doubleC*)(new lognormal_distribution<double>(m,s)); }
void lognormal_distribution_double_destroy(lognormal_distribution_doubleC* v) { delete(v); }
double lognormal_distribution_double_call(lognormal_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct chi_squared_distribution_floatC:chi_squared_distribution<float> {};
typedef struct chi_squared_distribution_floatC chi_squared_distribution_floatC;
chi_squared_distribution_floatC* chi_squared_distribution_float_create(float n) { return (chi_squared_distribution_floatC*)(new chi_squared_distribution<float>(n)); }
void chi_squared_distribution_float_destroy(chi_squared_distribution_floatC* v) { delete(v); }
float chi_squared_distribution_float_call(chi_squared_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct chi_squared_distribution_doubleC:chi_squared_distribution<double> {};
typedef struct chi_squared_distribution_doubleC chi_squared_distribution_doubleC;
chi_squared_distribution_doubleC* chi_squared_distribution_double_create(double n) { return (chi_squared_distribution_doubleC*)(new chi_squared_distribution<double>(n)); }
void chi_squared_distribution_double_destroy(chi_squared_distribution_doubleC* v) { delete(v); }
double chi_squared_distribution_double_call(chi_squared_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct cauchy_distribution_floatC:cauchy_distribution<float> {};
typedef struct cauchy_distribution_floatC cauchy_distribution_floatC;
cauchy_distribution_floatC* cauchy_distribution_float_create(float a,float b) { return (cauchy_distribution_floatC*)(new cauchy_distribution<float>(a,b)); }
void cauchy_distribution_float_destroy(cauchy_distribution_floatC* v) { delete(v); }
float cauchy_distribution_float_call(cauchy_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct cauchy_distribution_doubleC:cauchy_distribution<double> {};
typedef struct cauchy_distribution_doubleC cauchy_distribution_doubleC;
cauchy_distribution_doubleC* cauchy_distribution_double_create(double a,double b) { return (cauchy_distribution_doubleC*)(new cauchy_distribution<double>(a,b)); }
void cauchy_distribution_double_destroy(cauchy_distribution_doubleC* v) { delete(v); }
double cauchy_distribution_double_call(cauchy_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct fisher_f_distribution_floatC:fisher_f_distribution<float> {};
typedef struct fisher_f_distribution_floatC fisher_f_distribution_floatC;
fisher_f_distribution_floatC* fisher_f_distribution_float_create(float m,float n) { return (fisher_f_distribution_floatC*)(new fisher_f_distribution<float>(m,n)); }
void fisher_f_distribution_float_destroy(fisher_f_distribution_floatC* v) { delete(v); }
float fisher_f_distribution_float_call(fisher_f_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct fisher_f_distribution_doubleC:fisher_f_distribution<double> {};
typedef struct fisher_f_distribution_doubleC fisher_f_distribution_doubleC;
fisher_f_distribution_doubleC* fisher_f_distribution_double_create(double m,double n) { return (fisher_f_distribution_doubleC*)(new fisher_f_distribution<double>(m,n)); }
void fisher_f_distribution_double_destroy(fisher_f_distribution_doubleC* v) { delete(v); }
double fisher_f_distribution_double_call(fisher_f_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct student_t_distribution_floatC:student_t_distribution<float> {};
typedef struct student_t_distribution_floatC student_t_distribution_floatC;
student_t_distribution_floatC* student_t_distribution_float_create(float n) { return (student_t_distribution_floatC*)(new student_t_distribution<float>(n)); }
void student_t_distribution_float_destroy(student_t_distribution_floatC* v) { delete(v); }
float student_t_distribution_float_call(student_t_distribution_floatC* p, RandGenC* g) {return (*p)(*g);}


struct student_t_distribution_doubleC:student_t_distribution<double> {};
typedef struct student_t_distribution_doubleC student_t_distribution_doubleC;
student_t_distribution_doubleC* student_t_distribution_double_create(double n) { return (student_t_distribution_doubleC*)(new student_t_distribution<double>(n)); }
void student_t_distribution_double_destroy(student_t_distribution_doubleC* v) { delete(v); }
double student_t_distribution_double_call(student_t_distribution_doubleC* p, RandGenC* g) {return (*p)(*g);}


struct bernoulli_distribution_boolC:bernoulli_distribution {};
typedef struct bernoulli_distribution_boolC bernoulli_distribution_boolC;
bernoulli_distribution_boolC* bernoulli_distribution_bool_create(double p) { return (bernoulli_distribution_boolC*)(new bernoulli_distribution(p)); }
void bernoulli_distribution_bool_destroy(bernoulli_distribution_boolC* v) { delete(v); }
bool bernoulli_distribution_bool_call(bernoulli_distribution_boolC* p, RandGenC* g) {return (*p)(*g);}


struct discrete_distribution_intC:discrete_distribution<int> {};
typedef struct discrete_distribution_intC discrete_distribution_intC;
discrete_distribution_intC* discrete_distribution_int_create(double* start, double* end) { return (discrete_distribution_intC*)(new discrete_distribution<int>(start,end)); }
void discrete_distribution_int_destroy(discrete_distribution_intC* v) { delete(v); }
int discrete_distribution_int_call(discrete_distribution_intC* p, RandGenC* g) {return (*p)(*g);}


struct discrete_distribution_longC:discrete_distribution<long> {};
typedef struct discrete_distribution_longC discrete_distribution_longC;
discrete_distribution_longC* discrete_distribution_long_create(double* start, double* end) { return (discrete_distribution_longC*)(new discrete_distribution<long>(start,end)); }
void discrete_distribution_long_destroy(discrete_distribution_longC* v) { delete(v); }
long discrete_distribution_long_call(discrete_distribution_longC* p, RandGenC* g) {return (*p)(*g);}



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


}

