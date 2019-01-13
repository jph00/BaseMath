
#ifdef __cplusplus
extern "C" {
#endif

typedef struct RandGenC RandGenC;

RandGenC* RandGen_create() ;
void RandGen_destroy(RandGenC* v) ;
typedef struct uniform_int_distribution_intC uniform_int_distribution_intC;

uniform_int_distribution_intC* uniform_int_distribution_int_create(int a,int b) ;
void uniform_int_distribution_int_destroy(uniform_int_distribution_intC* v) ;
int uniform_int_distribution_int_call(uniform_int_distribution_intC* p, RandGenC* g) ;
typedef struct uniform_int_distribution_longC uniform_int_distribution_longC;

uniform_int_distribution_longC* uniform_int_distribution_long_create(long a,long b) ;
void uniform_int_distribution_long_destroy(uniform_int_distribution_longC* v) ;
long uniform_int_distribution_long_call(uniform_int_distribution_longC* p, RandGenC* g) ;
typedef struct binomial_distribution_intC binomial_distribution_intC;

binomial_distribution_intC* binomial_distribution_int_create(int t, double p) ;
void binomial_distribution_int_destroy(binomial_distribution_intC* v) ;
int binomial_distribution_int_call(binomial_distribution_intC* p, RandGenC* g) ;
typedef struct binomial_distribution_longC binomial_distribution_longC;

binomial_distribution_longC* binomial_distribution_long_create(long t, double p) ;
void binomial_distribution_long_destroy(binomial_distribution_longC* v) ;
long binomial_distribution_long_call(binomial_distribution_longC* p, RandGenC* g) ;
typedef struct negative_binomial_distribution_intC negative_binomial_distribution_intC;

negative_binomial_distribution_intC* negative_binomial_distribution_int_create(int k, double p) ;
void negative_binomial_distribution_int_destroy(negative_binomial_distribution_intC* v) ;
int negative_binomial_distribution_int_call(negative_binomial_distribution_intC* p, RandGenC* g) ;
typedef struct negative_binomial_distribution_longC negative_binomial_distribution_longC;

negative_binomial_distribution_longC* negative_binomial_distribution_long_create(long k, double p) ;
void negative_binomial_distribution_long_destroy(negative_binomial_distribution_longC* v) ;
long negative_binomial_distribution_long_call(negative_binomial_distribution_longC* p, RandGenC* g) ;
typedef struct geometric_distribution_intC geometric_distribution_intC;

geometric_distribution_intC* geometric_distribution_int_create(double p) ;
void geometric_distribution_int_destroy(geometric_distribution_intC* v) ;
int geometric_distribution_int_call(geometric_distribution_intC* p, RandGenC* g) ;
typedef struct geometric_distribution_longC geometric_distribution_longC;

geometric_distribution_longC* geometric_distribution_long_create(double p) ;
void geometric_distribution_long_destroy(geometric_distribution_longC* v) ;
long geometric_distribution_long_call(geometric_distribution_longC* p, RandGenC* g) ;
typedef struct poisson_distribution_intC poisson_distribution_intC;

poisson_distribution_intC* poisson_distribution_int_create(double mean) ;
void poisson_distribution_int_destroy(poisson_distribution_intC* v) ;
int poisson_distribution_int_call(poisson_distribution_intC* p, RandGenC* g) ;
typedef struct poisson_distribution_longC poisson_distribution_longC;

poisson_distribution_longC* poisson_distribution_long_create(double mean) ;
void poisson_distribution_long_destroy(poisson_distribution_longC* v) ;
long poisson_distribution_long_call(poisson_distribution_longC* p, RandGenC* g) ;
typedef struct uniform_real_distribution_floatC uniform_real_distribution_floatC;

uniform_real_distribution_floatC* uniform_real_distribution_float_create(float a,float b) ;
void uniform_real_distribution_float_destroy(uniform_real_distribution_floatC* v) ;
float uniform_real_distribution_float_call(uniform_real_distribution_floatC* p, RandGenC* g) ;
typedef struct uniform_real_distribution_doubleC uniform_real_distribution_doubleC;

uniform_real_distribution_doubleC* uniform_real_distribution_double_create(double a,double b) ;
void uniform_real_distribution_double_destroy(uniform_real_distribution_doubleC* v) ;
double uniform_real_distribution_double_call(uniform_real_distribution_doubleC* p, RandGenC* g) ;
typedef struct exponential_distribution_floatC exponential_distribution_floatC;

exponential_distribution_floatC* exponential_distribution_float_create(float l) ;
void exponential_distribution_float_destroy(exponential_distribution_floatC* v) ;
float exponential_distribution_float_call(exponential_distribution_floatC* p, RandGenC* g) ;
typedef struct exponential_distribution_doubleC exponential_distribution_doubleC;

exponential_distribution_doubleC* exponential_distribution_double_create(double l) ;
void exponential_distribution_double_destroy(exponential_distribution_doubleC* v) ;
double exponential_distribution_double_call(exponential_distribution_doubleC* p, RandGenC* g) ;
typedef struct gamma_distribution_floatC gamma_distribution_floatC;

gamma_distribution_floatC* gamma_distribution_float_create(float a,float b) ;
void gamma_distribution_float_destroy(gamma_distribution_floatC* v) ;
float gamma_distribution_float_call(gamma_distribution_floatC* p, RandGenC* g) ;
typedef struct gamma_distribution_doubleC gamma_distribution_doubleC;

gamma_distribution_doubleC* gamma_distribution_double_create(double a,double b) ;
void gamma_distribution_double_destroy(gamma_distribution_doubleC* v) ;
double gamma_distribution_double_call(gamma_distribution_doubleC* p, RandGenC* g) ;
typedef struct weibull_distribution_floatC weibull_distribution_floatC;

weibull_distribution_floatC* weibull_distribution_float_create(float a,float b) ;
void weibull_distribution_float_destroy(weibull_distribution_floatC* v) ;
float weibull_distribution_float_call(weibull_distribution_floatC* p, RandGenC* g) ;
typedef struct weibull_distribution_doubleC weibull_distribution_doubleC;

weibull_distribution_doubleC* weibull_distribution_double_create(double a,double b) ;
void weibull_distribution_double_destroy(weibull_distribution_doubleC* v) ;
double weibull_distribution_double_call(weibull_distribution_doubleC* p, RandGenC* g) ;
typedef struct normal_distribution_floatC normal_distribution_floatC;

normal_distribution_floatC* normal_distribution_float_create(float mean,float stddev) ;
void normal_distribution_float_destroy(normal_distribution_floatC* v) ;
float normal_distribution_float_call(normal_distribution_floatC* p, RandGenC* g) ;
typedef struct normal_distribution_doubleC normal_distribution_doubleC;

normal_distribution_doubleC* normal_distribution_double_create(double mean,double stddev) ;
void normal_distribution_double_destroy(normal_distribution_doubleC* v) ;
double normal_distribution_double_call(normal_distribution_doubleC* p, RandGenC* g) ;
typedef struct lognormal_distribution_floatC lognormal_distribution_floatC;

lognormal_distribution_floatC* lognormal_distribution_float_create(float m,float s) ;
void lognormal_distribution_float_destroy(lognormal_distribution_floatC* v) ;
float lognormal_distribution_float_call(lognormal_distribution_floatC* p, RandGenC* g) ;
typedef struct lognormal_distribution_doubleC lognormal_distribution_doubleC;

lognormal_distribution_doubleC* lognormal_distribution_double_create(double m,double s) ;
void lognormal_distribution_double_destroy(lognormal_distribution_doubleC* v) ;
double lognormal_distribution_double_call(lognormal_distribution_doubleC* p, RandGenC* g) ;
typedef struct chi_squared_distribution_floatC chi_squared_distribution_floatC;

chi_squared_distribution_floatC* chi_squared_distribution_float_create(float n) ;
void chi_squared_distribution_float_destroy(chi_squared_distribution_floatC* v) ;
float chi_squared_distribution_float_call(chi_squared_distribution_floatC* p, RandGenC* g) ;
typedef struct chi_squared_distribution_doubleC chi_squared_distribution_doubleC;

chi_squared_distribution_doubleC* chi_squared_distribution_double_create(double n) ;
void chi_squared_distribution_double_destroy(chi_squared_distribution_doubleC* v) ;
double chi_squared_distribution_double_call(chi_squared_distribution_doubleC* p, RandGenC* g) ;
typedef struct cauchy_distribution_floatC cauchy_distribution_floatC;

cauchy_distribution_floatC* cauchy_distribution_float_create(float a,float b) ;
void cauchy_distribution_float_destroy(cauchy_distribution_floatC* v) ;
float cauchy_distribution_float_call(cauchy_distribution_floatC* p, RandGenC* g) ;
typedef struct cauchy_distribution_doubleC cauchy_distribution_doubleC;

cauchy_distribution_doubleC* cauchy_distribution_double_create(double a,double b) ;
void cauchy_distribution_double_destroy(cauchy_distribution_doubleC* v) ;
double cauchy_distribution_double_call(cauchy_distribution_doubleC* p, RandGenC* g) ;
typedef struct fisher_f_distribution_floatC fisher_f_distribution_floatC;

fisher_f_distribution_floatC* fisher_f_distribution_float_create(float m,float n) ;
void fisher_f_distribution_float_destroy(fisher_f_distribution_floatC* v) ;
float fisher_f_distribution_float_call(fisher_f_distribution_floatC* p, RandGenC* g) ;
typedef struct fisher_f_distribution_doubleC fisher_f_distribution_doubleC;

fisher_f_distribution_doubleC* fisher_f_distribution_double_create(double m,double n) ;
void fisher_f_distribution_double_destroy(fisher_f_distribution_doubleC* v) ;
double fisher_f_distribution_double_call(fisher_f_distribution_doubleC* p, RandGenC* g) ;
typedef struct student_t_distribution_floatC student_t_distribution_floatC;

student_t_distribution_floatC* student_t_distribution_float_create(float n) ;
void student_t_distribution_float_destroy(student_t_distribution_floatC* v) ;
float student_t_distribution_float_call(student_t_distribution_floatC* p, RandGenC* g) ;
typedef struct student_t_distribution_doubleC student_t_distribution_doubleC;

student_t_distribution_doubleC* student_t_distribution_double_create(double n) ;
void student_t_distribution_double_destroy(student_t_distribution_doubleC* v) ;
double student_t_distribution_double_call(student_t_distribution_doubleC* p, RandGenC* g) ;
void sm_add_float(const float* __restrict__ pSrc, const float val, float* __restrict__ pDst, const int len) ;
float smSum_float(const float* __restrict__ pSrc, const int len) ;
float sqrf(const float a) ;
float smSum_sqr_float(const float* __restrict__ pSrc, const int len) ;
void sm_sqr_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
float smSum_fabs_float(const float* __restrict__ pSrc, const int len) ;
void sm_fabs_float(const float* __restrict__ pSrc, float* __restrict__ pDst, const int len) ;
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
double sqr(const double a) ;
double smSum_sqr_double(const double* __restrict__ pSrc, const int len) ;
void sm_sqr_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
double smSum_fabs_double(const double* __restrict__ pSrc, const int len) ;
void sm_fabs_double(const double* __restrict__ pSrc, double* __restrict__ pDst, const int len) ;
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

