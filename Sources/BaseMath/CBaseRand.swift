
import Foundation
import CBaseMath


extension uniform_int_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension uniform_int_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension binomial_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension binomial_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension negative_binomial_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension negative_binomial_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension geometric_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension geometric_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension poisson_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension poisson_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension discrete_distributionlongC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int { return CBaseMath.call(self,g) }
}


extension discrete_distributionintC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Int32 { return CBaseMath.call(self,g) }
}


extension uniform_real_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension uniform_real_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension exponential_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension exponential_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension gamma_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension gamma_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension weibull_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension weibull_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension normal_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension normal_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension lognormal_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension lognormal_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension chi_squared_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension chi_squared_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension cauchy_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension cauchy_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension fisher_f_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension fisher_f_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension student_t_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension student_t_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension piecewise_constant_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension piecewise_constant_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension piecewise_linear_distributionfloatC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Float { return CBaseMath.call(self,g) }
}


extension piecewise_linear_distributiondoubleC:DistributionC {
  public func delete() {destroy(self)}
  public func call(_ g:mt19937C)->Double { return CBaseMath.call(self,g) }
}


extension mt19937C:CppTypePtr {
  public func delete() {destroy(self)}
  
}


extension knuth_bC:CppTypePtr {
  public func delete() {destroy(self)}
  
}


extension bernoulli_distributionC:CppTypePtr {
  public func delete() {destroy(self)}
  
}


