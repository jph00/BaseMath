import Foundation
import CBaseMath


public protocol Initable { init() }
extension Float:Initable {}
extension Double:Initable {}
extension Int:Initable {}
extension Int32:Initable {}
extension Bool:Initable {}

public protocol CppTypePtr {
  func delete()
}

public class CppType<T:CppTypePtr> {
  public let p:T
  init(_ p:T) {self.p=p}
  deinit {p.delete()}
}

public class mt19937:CppType<mt19937C> {
  public convenience init() { self.init(CBaseMath.mt19937_create()) }

  @usableFromInline static var storeKey:String { get { return "mt19937" } }
  public static var stored:mt19937 { get {
    if let r = Thread.current.threadDictionary[storeKey] as? mt19937 { return r }
    return Thread.setToTLS(mt19937(), storeKey)
  }}
}

public protocol DistributionC:CppTypePtr {
  associatedtype Element:SignedNumeric
  func call(_ g:mt19937C)->Element
}

public class Distribution<T:DistributionC>:CppType<T>,Nullary {
  public typealias Element=T.Element
  public var g:mt19937

  public init(_ p:T, _ g:mt19937) {self.g=g; super.init(p) }
  @inlinable public subscript()->Element { return p.call(g.p) }
  public subscript(n:Int)->[Element] { return gen_array(n) }
  public func gen_array(_ n:Int)->[Element] {
    return [Element].fill(self, n)
  }
  public func gen_aligned(_ n:Int)->AlignedStorage<Element> {
    return AlignedStorage<Element>.fill(self, n)
  }
  public func gen_pointer(_ n:Int)->UnsafeMutableBufferPointer<Element> {
    return UnsafeMutableBufferPointer<Element>.fill(self, n)
  }
}


public final class uniform_int_distribution_Int:Distribution<uniform_int_distributionlongC> {
  public init(_ g_:mt19937 , _ a:Int,_ b:Int) { super.init(uniform_int_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Int,_ b:Int) { self.init(mt19937.stored, a,b) }
}
extension Int {
  public static func uniform_int_distribution(_ g_:mt19937 , _ a:Int,_ b:Int)->uniform_int_distribution_Int {return uniform_int_distribution_Int(g_, a,b)}
  public static func uniform_int_distribution(_ a:Int,_ b:Int)->uniform_int_distribution_Int {return uniform_int_distribution_Int(a,b)}
}

public final class uniform_int_distribution_Int32:Distribution<uniform_int_distributionintC> {
  public init(_ g_:mt19937 , _ a:Int32,_ b:Int32) { super.init(uniform_int_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Int32,_ b:Int32) { self.init(mt19937.stored, a,b) }
}
extension Int32 {
  public static func uniform_int_distribution(_ g_:mt19937 , _ a:Int32,_ b:Int32)->uniform_int_distribution_Int32 {return uniform_int_distribution_Int32(g_, a,b)}
  public static func uniform_int_distribution(_ a:Int32,_ b:Int32)->uniform_int_distribution_Int32 {return uniform_int_distribution_Int32(a,b)}
}

public final class binomial_distribution_Int:Distribution<binomial_distributionlongC> {
  public init(_ g_:mt19937 , _ t:Int,_ p:Double) { super.init(binomial_distribution_create(t,p, Element.init()), g_) }
  public convenience init(_ t:Int,_ p:Double) { self.init(mt19937.stored, t,p) }
}
extension Int {
  public static func binomial_distribution(_ g_:mt19937 , _ t:Int,_ p:Double)->binomial_distribution_Int {return binomial_distribution_Int(g_, t,p)}
  public static func binomial_distribution(_ t:Int,_ p:Double)->binomial_distribution_Int {return binomial_distribution_Int(t,p)}
}

public final class binomial_distribution_Int32:Distribution<binomial_distributionintC> {
  public init(_ g_:mt19937 , _ t:Int32,_ p:Double) { super.init(binomial_distribution_create(t,p, Element.init()), g_) }
  public convenience init(_ t:Int32,_ p:Double) { self.init(mt19937.stored, t,p) }
}
extension Int32 {
  public static func binomial_distribution(_ g_:mt19937 , _ t:Int32,_ p:Double)->binomial_distribution_Int32 {return binomial_distribution_Int32(g_, t,p)}
  public static func binomial_distribution(_ t:Int32,_ p:Double)->binomial_distribution_Int32 {return binomial_distribution_Int32(t,p)}
}

public final class negative_binomial_distribution_Int:Distribution<negative_binomial_distributionlongC> {
  public init(_ g_:mt19937 , _ k:Int,_ p:Double) { super.init(negative_binomial_distribution_create(k,p, Element.init()), g_) }
  public convenience init(_ k:Int,_ p:Double) { self.init(mt19937.stored, k,p) }
}
extension Int {
  public static func negative_binomial_distribution(_ g_:mt19937 , _ k:Int,_ p:Double)->negative_binomial_distribution_Int {return negative_binomial_distribution_Int(g_, k,p)}
  public static func negative_binomial_distribution(_ k:Int,_ p:Double)->negative_binomial_distribution_Int {return negative_binomial_distribution_Int(k,p)}
}

public final class negative_binomial_distribution_Int32:Distribution<negative_binomial_distributionintC> {
  public init(_ g_:mt19937 , _ k:Int32,_ p:Double) { super.init(negative_binomial_distribution_create(k,p, Element.init()), g_) }
  public convenience init(_ k:Int32,_ p:Double) { self.init(mt19937.stored, k,p) }
}
extension Int32 {
  public static func negative_binomial_distribution(_ g_:mt19937 , _ k:Int32,_ p:Double)->negative_binomial_distribution_Int32 {return negative_binomial_distribution_Int32(g_, k,p)}
  public static func negative_binomial_distribution(_ k:Int32,_ p:Double)->negative_binomial_distribution_Int32 {return negative_binomial_distribution_Int32(k,p)}
}

public final class geometric_distribution_Int:Distribution<geometric_distributionlongC> {
  public init(_ g_:mt19937 , _ p:Double) { super.init(geometric_distribution_create(p, Element.init()), g_) }
  public convenience init(_ p:Double) { self.init(mt19937.stored, p) }
}
extension Int {
  public static func geometric_distribution(_ g_:mt19937 , _ p:Double)->geometric_distribution_Int {return geometric_distribution_Int(g_, p)}
  public static func geometric_distribution(_ p:Double)->geometric_distribution_Int {return geometric_distribution_Int(p)}
}

public final class geometric_distribution_Int32:Distribution<geometric_distributionintC> {
  public init(_ g_:mt19937 , _ p:Double) { super.init(geometric_distribution_create(p, Element.init()), g_) }
  public convenience init(_ p:Double) { self.init(mt19937.stored, p) }
}
extension Int32 {
  public static func geometric_distribution(_ g_:mt19937 , _ p:Double)->geometric_distribution_Int32 {return geometric_distribution_Int32(g_, p)}
  public static func geometric_distribution(_ p:Double)->geometric_distribution_Int32 {return geometric_distribution_Int32(p)}
}

public final class poisson_distribution_Int:Distribution<poisson_distributionlongC> {
  public init(_ g_:mt19937 , _ mean:Double) { super.init(poisson_distribution_create(mean, Element.init()), g_) }
  public convenience init(_ mean:Double) { self.init(mt19937.stored, mean) }
}
extension Int {
  public static func poisson_distribution(_ g_:mt19937 , _ mean:Double)->poisson_distribution_Int {return poisson_distribution_Int(g_, mean)}
  public static func poisson_distribution(_ mean:Double)->poisson_distribution_Int {return poisson_distribution_Int(mean)}
}

public final class poisson_distribution_Int32:Distribution<poisson_distributionintC> {
  public init(_ g_:mt19937 , _ mean:Double) { super.init(poisson_distribution_create(mean, Element.init()), g_) }
  public convenience init(_ mean:Double) { self.init(mt19937.stored, mean) }
}
extension Int32 {
  public static func poisson_distribution(_ g_:mt19937 , _ mean:Double)->poisson_distribution_Int32 {return poisson_distribution_Int32(g_, mean)}
  public static func poisson_distribution(_ mean:Double)->poisson_distribution_Int32 {return poisson_distribution_Int32(mean)}
}

public final class discrete_distribution_Int:Distribution<discrete_distributionlongC> {
  public init(_ g_:mt19937 , _ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>) { super.init(discrete_distribution_create(start,end, Element.init()), g_) }
  public convenience init(_ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start,end) }
}
extension Int {
  public static func discrete_distribution(_ g_:mt19937 , _ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>)->discrete_distribution_Int {return discrete_distribution_Int(g_, start,end)}
  public static func discrete_distribution(_ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>)->discrete_distribution_Int {return discrete_distribution_Int(start,end)}
}

public final class discrete_distribution_Int32:Distribution<discrete_distributionintC> {
  public init(_ g_:mt19937 , _ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>) { super.init(discrete_distribution_create(start,end, Element.init()), g_) }
  public convenience init(_ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start,end) }
}
extension Int32 {
  public static func discrete_distribution(_ g_:mt19937 , _ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>)->discrete_distribution_Int32 {return discrete_distribution_Int32(g_, start,end)}
  public static func discrete_distribution(_ start:UnsafeMutablePointer<Double>,_ end:UnsafeMutablePointer<Double>)->discrete_distribution_Int32 {return discrete_distribution_Int32(start,end)}
}

public final class uniform_real_distribution_Float:Distribution<uniform_real_distributionfloatC> {
  public init(_ g_:mt19937 , _ a:Float,_ b:Float) { super.init(uniform_real_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Float,_ b:Float) { self.init(mt19937.stored, a,b) }
}
extension Float {
  public static func uniform_real_distribution(_ g_:mt19937 , _ a:Float,_ b:Float)->uniform_real_distribution_Float {return uniform_real_distribution_Float(g_, a,b)}
  public static func uniform_real_distribution(_ a:Float,_ b:Float)->uniform_real_distribution_Float {return uniform_real_distribution_Float(a,b)}
}

public final class uniform_real_distribution_Double:Distribution<uniform_real_distributiondoubleC> {
  public init(_ g_:mt19937 , _ a:Double,_ b:Double) { super.init(uniform_real_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Double,_ b:Double) { self.init(mt19937.stored, a,b) }
}
extension Double {
  public static func uniform_real_distribution(_ g_:mt19937 , _ a:Double,_ b:Double)->uniform_real_distribution_Double {return uniform_real_distribution_Double(g_, a,b)}
  public static func uniform_real_distribution(_ a:Double,_ b:Double)->uniform_real_distribution_Double {return uniform_real_distribution_Double(a,b)}
}

public final class exponential_distribution_Float:Distribution<exponential_distributionfloatC> {
  public init(_ g_:mt19937 , _ l:Float) { super.init(exponential_distribution_create(l, Element.init()), g_) }
  public convenience init(_ l:Float) { self.init(mt19937.stored, l) }
}
extension Float {
  public static func exponential_distribution(_ g_:mt19937 , _ l:Float)->exponential_distribution_Float {return exponential_distribution_Float(g_, l)}
  public static func exponential_distribution(_ l:Float)->exponential_distribution_Float {return exponential_distribution_Float(l)}
}

public final class exponential_distribution_Double:Distribution<exponential_distributiondoubleC> {
  public init(_ g_:mt19937 , _ l:Double) { super.init(exponential_distribution_create(l, Element.init()), g_) }
  public convenience init(_ l:Double) { self.init(mt19937.stored, l) }
}
extension Double {
  public static func exponential_distribution(_ g_:mt19937 , _ l:Double)->exponential_distribution_Double {return exponential_distribution_Double(g_, l)}
  public static func exponential_distribution(_ l:Double)->exponential_distribution_Double {return exponential_distribution_Double(l)}
}

public final class gamma_distribution_Float:Distribution<gamma_distributionfloatC> {
  public init(_ g_:mt19937 , _ a:Float,_ b:Float) { super.init(gamma_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Float,_ b:Float) { self.init(mt19937.stored, a,b) }
}
extension Float {
  public static func gamma_distribution(_ g_:mt19937 , _ a:Float,_ b:Float)->gamma_distribution_Float {return gamma_distribution_Float(g_, a,b)}
  public static func gamma_distribution(_ a:Float,_ b:Float)->gamma_distribution_Float {return gamma_distribution_Float(a,b)}
}

public final class gamma_distribution_Double:Distribution<gamma_distributiondoubleC> {
  public init(_ g_:mt19937 , _ a:Double,_ b:Double) { super.init(gamma_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Double,_ b:Double) { self.init(mt19937.stored, a,b) }
}
extension Double {
  public static func gamma_distribution(_ g_:mt19937 , _ a:Double,_ b:Double)->gamma_distribution_Double {return gamma_distribution_Double(g_, a,b)}
  public static func gamma_distribution(_ a:Double,_ b:Double)->gamma_distribution_Double {return gamma_distribution_Double(a,b)}
}

public final class weibull_distribution_Float:Distribution<weibull_distributionfloatC> {
  public init(_ g_:mt19937 , _ a:Float,_ b:Float) { super.init(weibull_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Float,_ b:Float) { self.init(mt19937.stored, a,b) }
}
extension Float {
  public static func weibull_distribution(_ g_:mt19937 , _ a:Float,_ b:Float)->weibull_distribution_Float {return weibull_distribution_Float(g_, a,b)}
  public static func weibull_distribution(_ a:Float,_ b:Float)->weibull_distribution_Float {return weibull_distribution_Float(a,b)}
}

public final class weibull_distribution_Double:Distribution<weibull_distributiondoubleC> {
  public init(_ g_:mt19937 , _ a:Double,_ b:Double) { super.init(weibull_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Double,_ b:Double) { self.init(mt19937.stored, a,b) }
}
extension Double {
  public static func weibull_distribution(_ g_:mt19937 , _ a:Double,_ b:Double)->weibull_distribution_Double {return weibull_distribution_Double(g_, a,b)}
  public static func weibull_distribution(_ a:Double,_ b:Double)->weibull_distribution_Double {return weibull_distribution_Double(a,b)}
}

public final class normal_distribution_Float:Distribution<normal_distributionfloatC> {
  public init(_ g_:mt19937 , _ mean:Float,_ stddev:Float) { super.init(normal_distribution_create(mean,stddev, Element.init()), g_) }
  public convenience init(_ mean:Float,_ stddev:Float) { self.init(mt19937.stored, mean,stddev) }
}
extension Float {
  public static func normal_distribution(_ g_:mt19937 , _ mean:Float,_ stddev:Float)->normal_distribution_Float {return normal_distribution_Float(g_, mean,stddev)}
  public static func normal_distribution(_ mean:Float,_ stddev:Float)->normal_distribution_Float {return normal_distribution_Float(mean,stddev)}
}

public final class normal_distribution_Double:Distribution<normal_distributiondoubleC> {
  public init(_ g_:mt19937 , _ mean:Double,_ stddev:Double) { super.init(normal_distribution_create(mean,stddev, Element.init()), g_) }
  public convenience init(_ mean:Double,_ stddev:Double) { self.init(mt19937.stored, mean,stddev) }
}
extension Double {
  public static func normal_distribution(_ g_:mt19937 , _ mean:Double,_ stddev:Double)->normal_distribution_Double {return normal_distribution_Double(g_, mean,stddev)}
  public static func normal_distribution(_ mean:Double,_ stddev:Double)->normal_distribution_Double {return normal_distribution_Double(mean,stddev)}
}

public final class lognormal_distribution_Float:Distribution<lognormal_distributionfloatC> {
  public init(_ g_:mt19937 , _ m:Float,_ s:Float) { super.init(lognormal_distribution_create(m,s, Element.init()), g_) }
  public convenience init(_ m:Float,_ s:Float) { self.init(mt19937.stored, m,s) }
}
extension Float {
  public static func lognormal_distribution(_ g_:mt19937 , _ m:Float,_ s:Float)->lognormal_distribution_Float {return lognormal_distribution_Float(g_, m,s)}
  public static func lognormal_distribution(_ m:Float,_ s:Float)->lognormal_distribution_Float {return lognormal_distribution_Float(m,s)}
}

public final class lognormal_distribution_Double:Distribution<lognormal_distributiondoubleC> {
  public init(_ g_:mt19937 , _ m:Double,_ s:Double) { super.init(lognormal_distribution_create(m,s, Element.init()), g_) }
  public convenience init(_ m:Double,_ s:Double) { self.init(mt19937.stored, m,s) }
}
extension Double {
  public static func lognormal_distribution(_ g_:mt19937 , _ m:Double,_ s:Double)->lognormal_distribution_Double {return lognormal_distribution_Double(g_, m,s)}
  public static func lognormal_distribution(_ m:Double,_ s:Double)->lognormal_distribution_Double {return lognormal_distribution_Double(m,s)}
}

public final class chi_squared_distribution_Float:Distribution<chi_squared_distributionfloatC> {
  public init(_ g_:mt19937 , _ n:Float) { super.init(chi_squared_distribution_create(n, Element.init()), g_) }
  public convenience init(_ n:Float) { self.init(mt19937.stored, n) }
}
extension Float {
  public static func chi_squared_distribution(_ g_:mt19937 , _ n:Float)->chi_squared_distribution_Float {return chi_squared_distribution_Float(g_, n)}
  public static func chi_squared_distribution(_ n:Float)->chi_squared_distribution_Float {return chi_squared_distribution_Float(n)}
}

public final class chi_squared_distribution_Double:Distribution<chi_squared_distributiondoubleC> {
  public init(_ g_:mt19937 , _ n:Double) { super.init(chi_squared_distribution_create(n, Element.init()), g_) }
  public convenience init(_ n:Double) { self.init(mt19937.stored, n) }
}
extension Double {
  public static func chi_squared_distribution(_ g_:mt19937 , _ n:Double)->chi_squared_distribution_Double {return chi_squared_distribution_Double(g_, n)}
  public static func chi_squared_distribution(_ n:Double)->chi_squared_distribution_Double {return chi_squared_distribution_Double(n)}
}

public final class cauchy_distribution_Float:Distribution<cauchy_distributionfloatC> {
  public init(_ g_:mt19937 , _ a:Float,_ b:Float) { super.init(cauchy_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Float,_ b:Float) { self.init(mt19937.stored, a,b) }
}
extension Float {
  public static func cauchy_distribution(_ g_:mt19937 , _ a:Float,_ b:Float)->cauchy_distribution_Float {return cauchy_distribution_Float(g_, a,b)}
  public static func cauchy_distribution(_ a:Float,_ b:Float)->cauchy_distribution_Float {return cauchy_distribution_Float(a,b)}
}

public final class cauchy_distribution_Double:Distribution<cauchy_distributiondoubleC> {
  public init(_ g_:mt19937 , _ a:Double,_ b:Double) { super.init(cauchy_distribution_create(a,b, Element.init()), g_) }
  public convenience init(_ a:Double,_ b:Double) { self.init(mt19937.stored, a,b) }
}
extension Double {
  public static func cauchy_distribution(_ g_:mt19937 , _ a:Double,_ b:Double)->cauchy_distribution_Double {return cauchy_distribution_Double(g_, a,b)}
  public static func cauchy_distribution(_ a:Double,_ b:Double)->cauchy_distribution_Double {return cauchy_distribution_Double(a,b)}
}

public final class fisher_f_distribution_Float:Distribution<fisher_f_distributionfloatC> {
  public init(_ g_:mt19937 , _ m:Float,_ n:Float) { super.init(fisher_f_distribution_create(m,n, Element.init()), g_) }
  public convenience init(_ m:Float,_ n:Float) { self.init(mt19937.stored, m,n) }
}
extension Float {
  public static func fisher_f_distribution(_ g_:mt19937 , _ m:Float,_ n:Float)->fisher_f_distribution_Float {return fisher_f_distribution_Float(g_, m,n)}
  public static func fisher_f_distribution(_ m:Float,_ n:Float)->fisher_f_distribution_Float {return fisher_f_distribution_Float(m,n)}
}

public final class fisher_f_distribution_Double:Distribution<fisher_f_distributiondoubleC> {
  public init(_ g_:mt19937 , _ m:Double,_ n:Double) { super.init(fisher_f_distribution_create(m,n, Element.init()), g_) }
  public convenience init(_ m:Double,_ n:Double) { self.init(mt19937.stored, m,n) }
}
extension Double {
  public static func fisher_f_distribution(_ g_:mt19937 , _ m:Double,_ n:Double)->fisher_f_distribution_Double {return fisher_f_distribution_Double(g_, m,n)}
  public static func fisher_f_distribution(_ m:Double,_ n:Double)->fisher_f_distribution_Double {return fisher_f_distribution_Double(m,n)}
}

public final class student_t_distribution_Float:Distribution<student_t_distributionfloatC> {
  public init(_ g_:mt19937 , _ n:Float) { super.init(student_t_distribution_create(n, Element.init()), g_) }
  public convenience init(_ n:Float) { self.init(mt19937.stored, n) }
}
extension Float {
  public static func student_t_distribution(_ g_:mt19937 , _ n:Float)->student_t_distribution_Float {return student_t_distribution_Float(g_, n)}
  public static func student_t_distribution(_ n:Float)->student_t_distribution_Float {return student_t_distribution_Float(n)}
}

public final class student_t_distribution_Double:Distribution<student_t_distributiondoubleC> {
  public init(_ g_:mt19937 , _ n:Double) { super.init(student_t_distribution_create(n, Element.init()), g_) }
  public convenience init(_ n:Double) { self.init(mt19937.stored, n) }
}
extension Double {
  public static func student_t_distribution(_ g_:mt19937 , _ n:Double)->student_t_distribution_Double {return student_t_distribution_Double(g_, n)}
  public static func student_t_distribution(_ n:Double)->student_t_distribution_Double {return student_t_distribution_Double(n)}
}

public final class piecewise_constant_distribution_Float:Distribution<piecewise_constant_distributionfloatC> {
  public init(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { super.init(piecewise_constant_distribution_create(start_i,end_i,start_w, Element.init()), g_) }
  public convenience init(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start_i,end_i,start_w) }
}
extension Float {
  public static func piecewise_constant_distribution(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_constant_distribution_Float {return piecewise_constant_distribution_Float(g_, start_i,end_i,start_w)}
  public static func piecewise_constant_distribution(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_constant_distribution_Float {return piecewise_constant_distribution_Float(start_i,end_i,start_w)}
}

public final class piecewise_constant_distribution_Double:Distribution<piecewise_constant_distributiondoubleC> {
  public init(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { super.init(piecewise_constant_distribution_create(start_i,end_i,start_w, Element.init()), g_) }
  public convenience init(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start_i,end_i,start_w) }
}
extension Double {
  public static func piecewise_constant_distribution(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_constant_distribution_Double {return piecewise_constant_distribution_Double(g_, start_i,end_i,start_w)}
  public static func piecewise_constant_distribution(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_constant_distribution_Double {return piecewise_constant_distribution_Double(start_i,end_i,start_w)}
}

public final class piecewise_linear_distribution_Float:Distribution<piecewise_linear_distributionfloatC> {
  public init(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { super.init(piecewise_linear_distribution_create(start_i,end_i,start_w, Element.init()), g_) }
  public convenience init(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start_i,end_i,start_w) }
}
extension Float {
  public static func piecewise_linear_distribution(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_linear_distribution_Float {return piecewise_linear_distribution_Float(g_, start_i,end_i,start_w)}
  public static func piecewise_linear_distribution(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_linear_distribution_Float {return piecewise_linear_distribution_Float(start_i,end_i,start_w)}
}

public final class piecewise_linear_distribution_Double:Distribution<piecewise_linear_distributiondoubleC> {
  public init(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { super.init(piecewise_linear_distribution_create(start_i,end_i,start_w, Element.init()), g_) }
  public convenience init(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>) { self.init(mt19937.stored, start_i,end_i,start_w) }
}
extension Double {
  public static func piecewise_linear_distribution(_ g_:mt19937 , _ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_linear_distribution_Double {return piecewise_linear_distribution_Double(g_, start_i,end_i,start_w)}
  public static func piecewise_linear_distribution(_ start_i:UnsafeMutablePointer<Double>,_ end_i:UnsafeMutablePointer<Double>,_ start_w:UnsafeMutablePointer<Double>)->piecewise_linear_distribution_Double {return piecewise_linear_distribution_Double(start_i,end_i,start_w)}
}

extension Int {
  public static func discrete_distribution(_ d_s:[Double])->discrete_distribution_Int {
    return discrete_distribution(d_s.p, d_s.p+d_s.count)
  }
}
extension Int32 {
  public static func discrete_distribution(_ d_s:[Double])->discrete_distribution_Int32 {
    return discrete_distribution(d_s.p, d_s.p+d_s.count)
  }
}


extension Float {
  public static func piecewise_constant_distribution(_ i_s:[Double], _ w_s:[Double])->piecewise_constant_distribution_Float {
    return piecewise_constant_distribution(i_s.p, i_s.p+i_s.count, w_s.p)
  }
  public static func piecewise_linear_distribution(_ i_s:[Double], _ w_s:[Double])->piecewise_linear_distribution_Float {
    return piecewise_linear_distribution(i_s.p, i_s.p+i_s.count, w_s.p)
  }
}
extension Double {
  public static func piecewise_constant_distribution(_ i_s:[Double], _ w_s:[Double])->piecewise_constant_distribution_Double {
    return piecewise_constant_distribution(i_s.p, i_s.p+i_s.count, w_s.p)
  }
  public static func piecewise_linear_distribution(_ i_s:[Double], _ w_s:[Double])->piecewise_linear_distribution_Double {
    return piecewise_linear_distribution(i_s.p, i_s.p+i_s.count, w_s.p)
  }
}

