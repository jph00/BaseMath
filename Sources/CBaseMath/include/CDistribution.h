
#ifdef __cplusplus
extern "C" {
#endif

#define OVERLOADABLE __attribute__((overloadable))
#include <stdbool.h>


typedef struct _inner_mt19937 _inner_mt19937;
typedef struct mt19937C mt19937C;
struct mt19937C {_inner_mt19937* p;};


typedef struct _inner_knuth_b _inner_knuth_b;
typedef struct knuth_bC knuth_bC;
struct knuth_bC {_inner_knuth_b* p;};


typedef struct _inner_bernoulli_distribution _inner_bernoulli_distribution;
typedef struct bernoulli_distributionC bernoulli_distributionC;
struct bernoulli_distributionC {_inner_bernoulli_distribution* p;};


typedef struct _inner_uniform_int_distributionint _inner_uniform_int_distributionint;
typedef struct uniform_int_distributionintC uniform_int_distributionintC;
struct uniform_int_distributionintC {_inner_uniform_int_distributionint* p;};


typedef struct _inner_uniform_int_distributionlong _inner_uniform_int_distributionlong;
typedef struct uniform_int_distributionlongC uniform_int_distributionlongC;
struct uniform_int_distributionlongC {_inner_uniform_int_distributionlong* p;};


typedef struct _inner_binomial_distributionint _inner_binomial_distributionint;
typedef struct binomial_distributionintC binomial_distributionintC;
struct binomial_distributionintC {_inner_binomial_distributionint* p;};


typedef struct _inner_binomial_distributionlong _inner_binomial_distributionlong;
typedef struct binomial_distributionlongC binomial_distributionlongC;
struct binomial_distributionlongC {_inner_binomial_distributionlong* p;};


typedef struct _inner_negative_binomial_distributionint _inner_negative_binomial_distributionint;
typedef struct negative_binomial_distributionintC negative_binomial_distributionintC;
struct negative_binomial_distributionintC {_inner_negative_binomial_distributionint* p;};


typedef struct _inner_negative_binomial_distributionlong _inner_negative_binomial_distributionlong;
typedef struct negative_binomial_distributionlongC negative_binomial_distributionlongC;
struct negative_binomial_distributionlongC {_inner_negative_binomial_distributionlong* p;};


typedef struct _inner_geometric_distributionint _inner_geometric_distributionint;
typedef struct geometric_distributionintC geometric_distributionintC;
struct geometric_distributionintC {_inner_geometric_distributionint* p;};


typedef struct _inner_geometric_distributionlong _inner_geometric_distributionlong;
typedef struct geometric_distributionlongC geometric_distributionlongC;
struct geometric_distributionlongC {_inner_geometric_distributionlong* p;};


typedef struct _inner_poisson_distributionint _inner_poisson_distributionint;
typedef struct poisson_distributionintC poisson_distributionintC;
struct poisson_distributionintC {_inner_poisson_distributionint* p;};


typedef struct _inner_poisson_distributionlong _inner_poisson_distributionlong;
typedef struct poisson_distributionlongC poisson_distributionlongC;
struct poisson_distributionlongC {_inner_poisson_distributionlong* p;};


typedef struct _inner_discrete_distributionint _inner_discrete_distributionint;
typedef struct discrete_distributionintC discrete_distributionintC;
struct discrete_distributionintC {_inner_discrete_distributionint* p;};


typedef struct _inner_discrete_distributionlong _inner_discrete_distributionlong;
typedef struct discrete_distributionlongC discrete_distributionlongC;
struct discrete_distributionlongC {_inner_discrete_distributionlong* p;};


typedef struct _inner_uniform_real_distributionfloat _inner_uniform_real_distributionfloat;
typedef struct uniform_real_distributionfloatC uniform_real_distributionfloatC;
struct uniform_real_distributionfloatC {_inner_uniform_real_distributionfloat* p;};


typedef struct _inner_uniform_real_distributiondouble _inner_uniform_real_distributiondouble;
typedef struct uniform_real_distributiondoubleC uniform_real_distributiondoubleC;
struct uniform_real_distributiondoubleC {_inner_uniform_real_distributiondouble* p;};


typedef struct _inner_exponential_distributionfloat _inner_exponential_distributionfloat;
typedef struct exponential_distributionfloatC exponential_distributionfloatC;
struct exponential_distributionfloatC {_inner_exponential_distributionfloat* p;};


typedef struct _inner_exponential_distributiondouble _inner_exponential_distributiondouble;
typedef struct exponential_distributiondoubleC exponential_distributiondoubleC;
struct exponential_distributiondoubleC {_inner_exponential_distributiondouble* p;};


typedef struct _inner_gamma_distributionfloat _inner_gamma_distributionfloat;
typedef struct gamma_distributionfloatC gamma_distributionfloatC;
struct gamma_distributionfloatC {_inner_gamma_distributionfloat* p;};


typedef struct _inner_gamma_distributiondouble _inner_gamma_distributiondouble;
typedef struct gamma_distributiondoubleC gamma_distributiondoubleC;
struct gamma_distributiondoubleC {_inner_gamma_distributiondouble* p;};


typedef struct _inner_weibull_distributionfloat _inner_weibull_distributionfloat;
typedef struct weibull_distributionfloatC weibull_distributionfloatC;
struct weibull_distributionfloatC {_inner_weibull_distributionfloat* p;};


typedef struct _inner_weibull_distributiondouble _inner_weibull_distributiondouble;
typedef struct weibull_distributiondoubleC weibull_distributiondoubleC;
struct weibull_distributiondoubleC {_inner_weibull_distributiondouble* p;};


typedef struct _inner_normal_distributionfloat _inner_normal_distributionfloat;
typedef struct normal_distributionfloatC normal_distributionfloatC;
struct normal_distributionfloatC {_inner_normal_distributionfloat* p;};


typedef struct _inner_normal_distributiondouble _inner_normal_distributiondouble;
typedef struct normal_distributiondoubleC normal_distributiondoubleC;
struct normal_distributiondoubleC {_inner_normal_distributiondouble* p;};


typedef struct _inner_lognormal_distributionfloat _inner_lognormal_distributionfloat;
typedef struct lognormal_distributionfloatC lognormal_distributionfloatC;
struct lognormal_distributionfloatC {_inner_lognormal_distributionfloat* p;};


typedef struct _inner_lognormal_distributiondouble _inner_lognormal_distributiondouble;
typedef struct lognormal_distributiondoubleC lognormal_distributiondoubleC;
struct lognormal_distributiondoubleC {_inner_lognormal_distributiondouble* p;};


typedef struct _inner_chi_squared_distributionfloat _inner_chi_squared_distributionfloat;
typedef struct chi_squared_distributionfloatC chi_squared_distributionfloatC;
struct chi_squared_distributionfloatC {_inner_chi_squared_distributionfloat* p;};


typedef struct _inner_chi_squared_distributiondouble _inner_chi_squared_distributiondouble;
typedef struct chi_squared_distributiondoubleC chi_squared_distributiondoubleC;
struct chi_squared_distributiondoubleC {_inner_chi_squared_distributiondouble* p;};


typedef struct _inner_cauchy_distributionfloat _inner_cauchy_distributionfloat;
typedef struct cauchy_distributionfloatC cauchy_distributionfloatC;
struct cauchy_distributionfloatC {_inner_cauchy_distributionfloat* p;};


typedef struct _inner_cauchy_distributiondouble _inner_cauchy_distributiondouble;
typedef struct cauchy_distributiondoubleC cauchy_distributiondoubleC;
struct cauchy_distributiondoubleC {_inner_cauchy_distributiondouble* p;};


typedef struct _inner_fisher_f_distributionfloat _inner_fisher_f_distributionfloat;
typedef struct fisher_f_distributionfloatC fisher_f_distributionfloatC;
struct fisher_f_distributionfloatC {_inner_fisher_f_distributionfloat* p;};


typedef struct _inner_fisher_f_distributiondouble _inner_fisher_f_distributiondouble;
typedef struct fisher_f_distributiondoubleC fisher_f_distributiondoubleC;
struct fisher_f_distributiondoubleC {_inner_fisher_f_distributiondouble* p;};


typedef struct _inner_student_t_distributionfloat _inner_student_t_distributionfloat;
typedef struct student_t_distributionfloatC student_t_distributionfloatC;
struct student_t_distributionfloatC {_inner_student_t_distributionfloat* p;};


typedef struct _inner_student_t_distributiondouble _inner_student_t_distributiondouble;
typedef struct student_t_distributiondoubleC student_t_distributiondoubleC;
struct student_t_distributiondoubleC {_inner_student_t_distributiondouble* p;};


typedef struct _inner_piecewise_constant_distributionfloat _inner_piecewise_constant_distributionfloat;
typedef struct piecewise_constant_distributionfloatC piecewise_constant_distributionfloatC;
struct piecewise_constant_distributionfloatC {_inner_piecewise_constant_distributionfloat* p;};


typedef struct _inner_piecewise_constant_distributiondouble _inner_piecewise_constant_distributiondouble;
typedef struct piecewise_constant_distributiondoubleC piecewise_constant_distributiondoubleC;
struct piecewise_constant_distributiondoubleC {_inner_piecewise_constant_distributiondouble* p;};


typedef struct _inner_piecewise_linear_distributionfloat _inner_piecewise_linear_distributionfloat;
typedef struct piecewise_linear_distributionfloatC piecewise_linear_distributionfloatC;
struct piecewise_linear_distributionfloatC {_inner_piecewise_linear_distributionfloat* p;};


typedef struct _inner_piecewise_linear_distributiondouble _inner_piecewise_linear_distributiondouble;
typedef struct piecewise_linear_distributiondoubleC piecewise_linear_distributiondoubleC;
struct piecewise_linear_distributiondoubleC {_inner_piecewise_linear_distributiondouble* p;};


mt19937C mt19937_create() ;
OVERLOADABLE void destroy(mt19937C v) ;
knuth_bC knuth_b_create() ;
OVERLOADABLE void destroy(knuth_bC v) ;
bernoulli_distributionC bernoulli_distribution_create(double p) ;
OVERLOADABLE void destroy(bernoulli_distributionC v) ;
OVERLOADABLE uniform_int_distributionintC uniform_int_distribution_create(int a,int b, int _) ;
OVERLOADABLE void destroy(uniform_int_distributionintC v) ;
OVERLOADABLE uniform_int_distributionlongC uniform_int_distribution_create(long a,long b, long _) ;
OVERLOADABLE void destroy(uniform_int_distributionlongC v) ;
OVERLOADABLE binomial_distributionintC binomial_distribution_create(int t, double p, int _) ;
OVERLOADABLE void destroy(binomial_distributionintC v) ;
OVERLOADABLE binomial_distributionlongC binomial_distribution_create(long t, double p, long _) ;
OVERLOADABLE void destroy(binomial_distributionlongC v) ;
OVERLOADABLE negative_binomial_distributionintC negative_binomial_distribution_create(int k, double p, int _) ;
OVERLOADABLE void destroy(negative_binomial_distributionintC v) ;
OVERLOADABLE negative_binomial_distributionlongC negative_binomial_distribution_create(long k, double p, long _) ;
OVERLOADABLE void destroy(negative_binomial_distributionlongC v) ;
OVERLOADABLE geometric_distributionintC geometric_distribution_create(double p, int _) ;
OVERLOADABLE void destroy(geometric_distributionintC v) ;
OVERLOADABLE geometric_distributionlongC geometric_distribution_create(double p, long _) ;
OVERLOADABLE void destroy(geometric_distributionlongC v) ;
OVERLOADABLE poisson_distributionintC poisson_distribution_create(double mean, int _) ;
OVERLOADABLE void destroy(poisson_distributionintC v) ;
OVERLOADABLE poisson_distributionlongC poisson_distribution_create(double mean, long _) ;
OVERLOADABLE void destroy(poisson_distributionlongC v) ;
OVERLOADABLE discrete_distributionintC discrete_distribution_create(double* start, double* end, int _) ;
OVERLOADABLE void destroy(discrete_distributionintC v) ;
OVERLOADABLE discrete_distributionlongC discrete_distribution_create(double* start, double* end, long _) ;
OVERLOADABLE void destroy(discrete_distributionlongC v) ;
OVERLOADABLE uniform_real_distributionfloatC uniform_real_distribution_create(float a,float b, float _) ;
OVERLOADABLE void destroy(uniform_real_distributionfloatC v) ;
OVERLOADABLE uniform_real_distributiondoubleC uniform_real_distribution_create(double a,double b, double _) ;
OVERLOADABLE void destroy(uniform_real_distributiondoubleC v) ;
OVERLOADABLE exponential_distributionfloatC exponential_distribution_create(float l, float _) ;
OVERLOADABLE void destroy(exponential_distributionfloatC v) ;
OVERLOADABLE exponential_distributiondoubleC exponential_distribution_create(double l, double _) ;
OVERLOADABLE void destroy(exponential_distributiondoubleC v) ;
OVERLOADABLE gamma_distributionfloatC gamma_distribution_create(float a,float b, float _) ;
OVERLOADABLE void destroy(gamma_distributionfloatC v) ;
OVERLOADABLE gamma_distributiondoubleC gamma_distribution_create(double a,double b, double _) ;
OVERLOADABLE void destroy(gamma_distributiondoubleC v) ;
OVERLOADABLE weibull_distributionfloatC weibull_distribution_create(float a,float b, float _) ;
OVERLOADABLE void destroy(weibull_distributionfloatC v) ;
OVERLOADABLE weibull_distributiondoubleC weibull_distribution_create(double a,double b, double _) ;
OVERLOADABLE void destroy(weibull_distributiondoubleC v) ;
OVERLOADABLE normal_distributionfloatC normal_distribution_create(float mean,float stddev, float _) ;
OVERLOADABLE void destroy(normal_distributionfloatC v) ;
OVERLOADABLE normal_distributiondoubleC normal_distribution_create(double mean,double stddev, double _) ;
OVERLOADABLE void destroy(normal_distributiondoubleC v) ;
OVERLOADABLE lognormal_distributionfloatC lognormal_distribution_create(float m,float s, float _) ;
OVERLOADABLE void destroy(lognormal_distributionfloatC v) ;
OVERLOADABLE lognormal_distributiondoubleC lognormal_distribution_create(double m,double s, double _) ;
OVERLOADABLE void destroy(lognormal_distributiondoubleC v) ;
OVERLOADABLE chi_squared_distributionfloatC chi_squared_distribution_create(float n, float _) ;
OVERLOADABLE void destroy(chi_squared_distributionfloatC v) ;
OVERLOADABLE chi_squared_distributiondoubleC chi_squared_distribution_create(double n, double _) ;
OVERLOADABLE void destroy(chi_squared_distributiondoubleC v) ;
OVERLOADABLE cauchy_distributionfloatC cauchy_distribution_create(float a,float b, float _) ;
OVERLOADABLE void destroy(cauchy_distributionfloatC v) ;
OVERLOADABLE cauchy_distributiondoubleC cauchy_distribution_create(double a,double b, double _) ;
OVERLOADABLE void destroy(cauchy_distributiondoubleC v) ;
OVERLOADABLE fisher_f_distributionfloatC fisher_f_distribution_create(float m,float n, float _) ;
OVERLOADABLE void destroy(fisher_f_distributionfloatC v) ;
OVERLOADABLE fisher_f_distributiondoubleC fisher_f_distribution_create(double m,double n, double _) ;
OVERLOADABLE void destroy(fisher_f_distributiondoubleC v) ;
OVERLOADABLE student_t_distributionfloatC student_t_distribution_create(float n, float _) ;
OVERLOADABLE void destroy(student_t_distributionfloatC v) ;
OVERLOADABLE student_t_distributiondoubleC student_t_distribution_create(double n, double _) ;
OVERLOADABLE void destroy(student_t_distributiondoubleC v) ;
OVERLOADABLE piecewise_constant_distributionfloatC piecewise_constant_distribution_create(double* start_i, double* end_i, double* start_w, float _) ;
OVERLOADABLE void destroy(piecewise_constant_distributionfloatC v) ;
OVERLOADABLE piecewise_constant_distributiondoubleC piecewise_constant_distribution_create(double* start_i, double* end_i, double* start_w, double _) ;
OVERLOADABLE void destroy(piecewise_constant_distributiondoubleC v) ;
OVERLOADABLE piecewise_linear_distributionfloatC piecewise_linear_distribution_create(double* start_i, double* end_i, double* start_w, float _) ;
OVERLOADABLE void destroy(piecewise_linear_distributionfloatC v) ;
OVERLOADABLE piecewise_linear_distributiondoubleC piecewise_linear_distribution_create(double* start_i, double* end_i, double* start_w, double _) ;
OVERLOADABLE void destroy(piecewise_linear_distributiondoubleC v) ;
OVERLOADABLE int call(uniform_int_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(uniform_int_distributionlongC p,mt19937C g) ;
OVERLOADABLE int call(binomial_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(binomial_distributionlongC p,mt19937C g) ;
OVERLOADABLE int call(negative_binomial_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(negative_binomial_distributionlongC p,mt19937C g) ;
OVERLOADABLE int call(geometric_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(geometric_distributionlongC p,mt19937C g) ;
OVERLOADABLE int call(poisson_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(poisson_distributionlongC p,mt19937C g) ;
OVERLOADABLE int call(discrete_distributionintC p,mt19937C g) ;
OVERLOADABLE long call(discrete_distributionlongC p,mt19937C g) ;
OVERLOADABLE float call(uniform_real_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(uniform_real_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(exponential_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(exponential_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(gamma_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(gamma_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(weibull_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(weibull_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(normal_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(normal_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(lognormal_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(lognormal_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(chi_squared_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(chi_squared_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(cauchy_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(cauchy_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(fisher_f_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(fisher_f_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(student_t_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(student_t_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(piecewise_constant_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(piecewise_constant_distributiondoubleC p,mt19937C g) ;
OVERLOADABLE float call(piecewise_linear_distributionfloatC p,mt19937C g) ;
OVERLOADABLE double call(piecewise_linear_distributiondoubleC p,mt19937C g) ;

#ifdef __cplusplus
}
#endif

