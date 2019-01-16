#include "include/CDistribution.h"


#include <random>
#include <cmath>

using namespace std; 


struct _inner_mt19937:mt19937 {};
mt19937C mt19937_create() {
  mt19937C r = {(_inner_mt19937*) new mt19937(random_device()())};
  return r;
}
OVERLOADABLE void destroy(mt19937C v) { delete(v.p); }


struct _inner_knuth_b:knuth_b {};
knuth_bC knuth_b_create() {
  knuth_bC r = {(_inner_knuth_b*) new knuth_b(random_device()())};
  return r;
}
OVERLOADABLE void destroy(knuth_bC v) { delete(v.p); }


struct _inner_bernoulli_distribution:bernoulli_distribution {};
bernoulli_distributionC bernoulli_distribution_create(double p) {
  bernoulli_distributionC r = {(_inner_bernoulli_distribution*) new bernoulli_distribution(p)};
  return r;
}
OVERLOADABLE void destroy(bernoulli_distributionC v) { delete(v.p); }


struct _inner_uniform_int_distributionint:uniform_int_distribution<int> {};
OVERLOADABLE uniform_int_distributionintC uniform_int_distribution_create(int a,int b, int _) {
  uniform_int_distributionintC r = {(_inner_uniform_int_distributionint*) new uniform_int_distribution<int>(a,b)};
  return r;
}
OVERLOADABLE void destroy(uniform_int_distributionintC v) { delete(v.p); }


struct _inner_uniform_int_distributionlong:uniform_int_distribution<long> {};
OVERLOADABLE uniform_int_distributionlongC uniform_int_distribution_create(long a,long b, long _) {
  uniform_int_distributionlongC r = {(_inner_uniform_int_distributionlong*) new uniform_int_distribution<long>(a,b)};
  return r;
}
OVERLOADABLE void destroy(uniform_int_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(uniform_int_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(uniform_int_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_binomial_distributionint:binomial_distribution<int> {};
OVERLOADABLE binomial_distributionintC binomial_distribution_create(int t, double p, int _) {
  binomial_distributionintC r = {(_inner_binomial_distributionint*) new binomial_distribution<int>(t,p)};
  return r;
}
OVERLOADABLE void destroy(binomial_distributionintC v) { delete(v.p); }


struct _inner_binomial_distributionlong:binomial_distribution<long> {};
OVERLOADABLE binomial_distributionlongC binomial_distribution_create(long t, double p, long _) {
  binomial_distributionlongC r = {(_inner_binomial_distributionlong*) new binomial_distribution<long>(t,p)};
  return r;
}
OVERLOADABLE void destroy(binomial_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(binomial_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(binomial_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_negative_binomial_distributionint:negative_binomial_distribution<int> {};
OVERLOADABLE negative_binomial_distributionintC negative_binomial_distribution_create(int k, double p, int _) {
  negative_binomial_distributionintC r = {(_inner_negative_binomial_distributionint*) new negative_binomial_distribution<int>(k,p)};
  return r;
}
OVERLOADABLE void destroy(negative_binomial_distributionintC v) { delete(v.p); }


struct _inner_negative_binomial_distributionlong:negative_binomial_distribution<long> {};
OVERLOADABLE negative_binomial_distributionlongC negative_binomial_distribution_create(long k, double p, long _) {
  negative_binomial_distributionlongC r = {(_inner_negative_binomial_distributionlong*) new negative_binomial_distribution<long>(k,p)};
  return r;
}
OVERLOADABLE void destroy(negative_binomial_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(negative_binomial_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(negative_binomial_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_geometric_distributionint:geometric_distribution<int> {};
OVERLOADABLE geometric_distributionintC geometric_distribution_create(double p, int _) {
  geometric_distributionintC r = {(_inner_geometric_distributionint*) new geometric_distribution<int>(p)};
  return r;
}
OVERLOADABLE void destroy(geometric_distributionintC v) { delete(v.p); }


struct _inner_geometric_distributionlong:geometric_distribution<long> {};
OVERLOADABLE geometric_distributionlongC geometric_distribution_create(double p, long _) {
  geometric_distributionlongC r = {(_inner_geometric_distributionlong*) new geometric_distribution<long>(p)};
  return r;
}
OVERLOADABLE void destroy(geometric_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(geometric_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(geometric_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_poisson_distributionint:poisson_distribution<int> {};
OVERLOADABLE poisson_distributionintC poisson_distribution_create(double mean, int _) {
  poisson_distributionintC r = {(_inner_poisson_distributionint*) new poisson_distribution<int>(mean)};
  return r;
}
OVERLOADABLE void destroy(poisson_distributionintC v) { delete(v.p); }


struct _inner_poisson_distributionlong:poisson_distribution<long> {};
OVERLOADABLE poisson_distributionlongC poisson_distribution_create(double mean, long _) {
  poisson_distributionlongC r = {(_inner_poisson_distributionlong*) new poisson_distribution<long>(mean)};
  return r;
}
OVERLOADABLE void destroy(poisson_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(poisson_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(poisson_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_discrete_distributionint:discrete_distribution<int> {};
OVERLOADABLE discrete_distributionintC discrete_distribution_create(double* start, double* end, int _) {
  discrete_distributionintC r = {(_inner_discrete_distributionint*) new discrete_distribution<int>(start,end)};
  return r;
}
OVERLOADABLE void destroy(discrete_distributionintC v) { delete(v.p); }


struct _inner_discrete_distributionlong:discrete_distribution<long> {};
OVERLOADABLE discrete_distributionlongC discrete_distribution_create(double* start, double* end, long _) {
  discrete_distributionlongC r = {(_inner_discrete_distributionlong*) new discrete_distribution<long>(start,end)};
  return r;
}
OVERLOADABLE void destroy(discrete_distributionlongC v) { delete(v.p); }

OVERLOADABLE int call(discrete_distributionintC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE long call(discrete_distributionlongC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_uniform_real_distributionfloat:uniform_real_distribution<float> {};
OVERLOADABLE uniform_real_distributionfloatC uniform_real_distribution_create(float a,float b, float _) {
  uniform_real_distributionfloatC r = {(_inner_uniform_real_distributionfloat*) new uniform_real_distribution<float>(a,b)};
  return r;
}
OVERLOADABLE void destroy(uniform_real_distributionfloatC v) { delete(v.p); }


struct _inner_uniform_real_distributiondouble:uniform_real_distribution<double> {};
OVERLOADABLE uniform_real_distributiondoubleC uniform_real_distribution_create(double a,double b, double _) {
  uniform_real_distributiondoubleC r = {(_inner_uniform_real_distributiondouble*) new uniform_real_distribution<double>(a,b)};
  return r;
}
OVERLOADABLE void destroy(uniform_real_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(uniform_real_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(uniform_real_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_exponential_distributionfloat:exponential_distribution<float> {};
OVERLOADABLE exponential_distributionfloatC exponential_distribution_create(float l, float _) {
  exponential_distributionfloatC r = {(_inner_exponential_distributionfloat*) new exponential_distribution<float>(l)};
  return r;
}
OVERLOADABLE void destroy(exponential_distributionfloatC v) { delete(v.p); }


struct _inner_exponential_distributiondouble:exponential_distribution<double> {};
OVERLOADABLE exponential_distributiondoubleC exponential_distribution_create(double l, double _) {
  exponential_distributiondoubleC r = {(_inner_exponential_distributiondouble*) new exponential_distribution<double>(l)};
  return r;
}
OVERLOADABLE void destroy(exponential_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(exponential_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(exponential_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_gamma_distributionfloat:gamma_distribution<float> {};
OVERLOADABLE gamma_distributionfloatC gamma_distribution_create(float a,float b, float _) {
  gamma_distributionfloatC r = {(_inner_gamma_distributionfloat*) new gamma_distribution<float>(a,b)};
  return r;
}
OVERLOADABLE void destroy(gamma_distributionfloatC v) { delete(v.p); }


struct _inner_gamma_distributiondouble:gamma_distribution<double> {};
OVERLOADABLE gamma_distributiondoubleC gamma_distribution_create(double a,double b, double _) {
  gamma_distributiondoubleC r = {(_inner_gamma_distributiondouble*) new gamma_distribution<double>(a,b)};
  return r;
}
OVERLOADABLE void destroy(gamma_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(gamma_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(gamma_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_weibull_distributionfloat:weibull_distribution<float> {};
OVERLOADABLE weibull_distributionfloatC weibull_distribution_create(float a,float b, float _) {
  weibull_distributionfloatC r = {(_inner_weibull_distributionfloat*) new weibull_distribution<float>(a,b)};
  return r;
}
OVERLOADABLE void destroy(weibull_distributionfloatC v) { delete(v.p); }


struct _inner_weibull_distributiondouble:weibull_distribution<double> {};
OVERLOADABLE weibull_distributiondoubleC weibull_distribution_create(double a,double b, double _) {
  weibull_distributiondoubleC r = {(_inner_weibull_distributiondouble*) new weibull_distribution<double>(a,b)};
  return r;
}
OVERLOADABLE void destroy(weibull_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(weibull_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(weibull_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_normal_distributionfloat:normal_distribution<float> {};
OVERLOADABLE normal_distributionfloatC normal_distribution_create(float mean,float stddev, float _) {
  normal_distributionfloatC r = {(_inner_normal_distributionfloat*) new normal_distribution<float>(mean,stddev)};
  return r;
}
OVERLOADABLE void destroy(normal_distributionfloatC v) { delete(v.p); }


struct _inner_normal_distributiondouble:normal_distribution<double> {};
OVERLOADABLE normal_distributiondoubleC normal_distribution_create(double mean,double stddev, double _) {
  normal_distributiondoubleC r = {(_inner_normal_distributiondouble*) new normal_distribution<double>(mean,stddev)};
  return r;
}
OVERLOADABLE void destroy(normal_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(normal_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(normal_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_lognormal_distributionfloat:lognormal_distribution<float> {};
OVERLOADABLE lognormal_distributionfloatC lognormal_distribution_create(float m,float s, float _) {
  lognormal_distributionfloatC r = {(_inner_lognormal_distributionfloat*) new lognormal_distribution<float>(m,s)};
  return r;
}
OVERLOADABLE void destroy(lognormal_distributionfloatC v) { delete(v.p); }


struct _inner_lognormal_distributiondouble:lognormal_distribution<double> {};
OVERLOADABLE lognormal_distributiondoubleC lognormal_distribution_create(double m,double s, double _) {
  lognormal_distributiondoubleC r = {(_inner_lognormal_distributiondouble*) new lognormal_distribution<double>(m,s)};
  return r;
}
OVERLOADABLE void destroy(lognormal_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(lognormal_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(lognormal_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_chi_squared_distributionfloat:chi_squared_distribution<float> {};
OVERLOADABLE chi_squared_distributionfloatC chi_squared_distribution_create(float n, float _) {
  chi_squared_distributionfloatC r = {(_inner_chi_squared_distributionfloat*) new chi_squared_distribution<float>(n)};
  return r;
}
OVERLOADABLE void destroy(chi_squared_distributionfloatC v) { delete(v.p); }


struct _inner_chi_squared_distributiondouble:chi_squared_distribution<double> {};
OVERLOADABLE chi_squared_distributiondoubleC chi_squared_distribution_create(double n, double _) {
  chi_squared_distributiondoubleC r = {(_inner_chi_squared_distributiondouble*) new chi_squared_distribution<double>(n)};
  return r;
}
OVERLOADABLE void destroy(chi_squared_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(chi_squared_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(chi_squared_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_cauchy_distributionfloat:cauchy_distribution<float> {};
OVERLOADABLE cauchy_distributionfloatC cauchy_distribution_create(float a,float b, float _) {
  cauchy_distributionfloatC r = {(_inner_cauchy_distributionfloat*) new cauchy_distribution<float>(a,b)};
  return r;
}
OVERLOADABLE void destroy(cauchy_distributionfloatC v) { delete(v.p); }


struct _inner_cauchy_distributiondouble:cauchy_distribution<double> {};
OVERLOADABLE cauchy_distributiondoubleC cauchy_distribution_create(double a,double b, double _) {
  cauchy_distributiondoubleC r = {(_inner_cauchy_distributiondouble*) new cauchy_distribution<double>(a,b)};
  return r;
}
OVERLOADABLE void destroy(cauchy_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(cauchy_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(cauchy_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_fisher_f_distributionfloat:fisher_f_distribution<float> {};
OVERLOADABLE fisher_f_distributionfloatC fisher_f_distribution_create(float m,float n, float _) {
  fisher_f_distributionfloatC r = {(_inner_fisher_f_distributionfloat*) new fisher_f_distribution<float>(m,n)};
  return r;
}
OVERLOADABLE void destroy(fisher_f_distributionfloatC v) { delete(v.p); }


struct _inner_fisher_f_distributiondouble:fisher_f_distribution<double> {};
OVERLOADABLE fisher_f_distributiondoubleC fisher_f_distribution_create(double m,double n, double _) {
  fisher_f_distributiondoubleC r = {(_inner_fisher_f_distributiondouble*) new fisher_f_distribution<double>(m,n)};
  return r;
}
OVERLOADABLE void destroy(fisher_f_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(fisher_f_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(fisher_f_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_student_t_distributionfloat:student_t_distribution<float> {};
OVERLOADABLE student_t_distributionfloatC student_t_distribution_create(float n, float _) {
  student_t_distributionfloatC r = {(_inner_student_t_distributionfloat*) new student_t_distribution<float>(n)};
  return r;
}
OVERLOADABLE void destroy(student_t_distributionfloatC v) { delete(v.p); }


struct _inner_student_t_distributiondouble:student_t_distribution<double> {};
OVERLOADABLE student_t_distributiondoubleC student_t_distribution_create(double n, double _) {
  student_t_distributiondoubleC r = {(_inner_student_t_distributiondouble*) new student_t_distribution<double>(n)};
  return r;
}
OVERLOADABLE void destroy(student_t_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(student_t_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(student_t_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_piecewise_constant_distributionfloat:piecewise_constant_distribution<float> {};
OVERLOADABLE piecewise_constant_distributionfloatC piecewise_constant_distribution_create(double* start_i, double* end_i, double* start_w, float _) {
  piecewise_constant_distributionfloatC r = {(_inner_piecewise_constant_distributionfloat*) new piecewise_constant_distribution<float>(start_i,end_i,start_w)};
  return r;
}
OVERLOADABLE void destroy(piecewise_constant_distributionfloatC v) { delete(v.p); }


struct _inner_piecewise_constant_distributiondouble:piecewise_constant_distribution<double> {};
OVERLOADABLE piecewise_constant_distributiondoubleC piecewise_constant_distribution_create(double* start_i, double* end_i, double* start_w, double _) {
  piecewise_constant_distributiondoubleC r = {(_inner_piecewise_constant_distributiondouble*) new piecewise_constant_distribution<double>(start_i,end_i,start_w)};
  return r;
}
OVERLOADABLE void destroy(piecewise_constant_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(piecewise_constant_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(piecewise_constant_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}

struct _inner_piecewise_linear_distributionfloat:piecewise_linear_distribution<float> {};
OVERLOADABLE piecewise_linear_distributionfloatC piecewise_linear_distribution_create(double* start_i, double* end_i, double* start_w, float _) {
  piecewise_linear_distributionfloatC r = {(_inner_piecewise_linear_distributionfloat*) new piecewise_linear_distribution<float>(start_i,end_i,start_w)};
  return r;
}
OVERLOADABLE void destroy(piecewise_linear_distributionfloatC v) { delete(v.p); }


struct _inner_piecewise_linear_distributiondouble:piecewise_linear_distribution<double> {};
OVERLOADABLE piecewise_linear_distributiondoubleC piecewise_linear_distribution_create(double* start_i, double* end_i, double* start_w, double _) {
  piecewise_linear_distributiondoubleC r = {(_inner_piecewise_linear_distributiondouble*) new piecewise_linear_distribution<double>(start_i,end_i,start_w)};
  return r;
}
OVERLOADABLE void destroy(piecewise_linear_distributiondoubleC v) { delete(v.p); }

OVERLOADABLE float call(piecewise_linear_distributionfloatC p,mt19937C g) {return p.p->operator()(*g.p);}
OVERLOADABLE double call(piecewise_linear_distributiondoubleC p,mt19937C g) {return p.p->operator()(*g.p);}
 
