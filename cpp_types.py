from cpp_template import *

gen_types = [
  cpp("mt19937", "", "random_device()()"),
  cpp("knuth_b", "", "random_device()()"),
  cpp("bernoulli_distribution", "double p"),
]
int_dist = [
  cpp("uniform_int_distribution", "# a,# b"),
  cpp("binomial_distribution", "# t, double p"),
  cpp("negative_binomial_distribution", "# k, double p"),
  cpp("geometric_distribution", "double p"),
  cpp("poisson_distribution", "double mean"),
  cpp("discrete_distribution", "double* start, double* end"),
]
for o in int_dist: o.gens = int_swift
real_dist = [
  cpp("uniform_real_distribution", "# a,# b"),
  cpp("exponential_distribution", "# l"),
  cpp("gamma_distribution", "# a,# b"),
  cpp("weibull_distribution", "# a,# b"),
  cpp("normal_distribution", "# mean,# stddev"),
  cpp("lognormal_distribution", "# m,# s"),
  cpp("chi_squared_distribution", "# n"),
  cpp("cauchy_distribution", "# a,# b"),
  cpp("fisher_f_distribution", "# m,# n"),
  cpp("student_t_distribution", "# n"),
  cpp("piecewise_constant_distribution", "double* start_i, double* end_i, double* start_w"),
  cpp("piecewise_linear_distribution", "double* start_i, double* end_i, double* start_w"),
]
for o in real_dist: o.gens = float_swift
dist_types = int_dist+real_dist
all_types = dist_types+gen_types
for o in all_types: o.module = 'CBaseMath'

for o in dist_types:
    o.swift_type = 'DistributionC'
    o.add_func('# call', 'mt19937C g', 'operator()(*g.p)')

