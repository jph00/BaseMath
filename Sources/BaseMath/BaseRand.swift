import Foundation
import CBaseMath

public class RandGen {
  public let ptr:OpaquePointer?
  public init() { ptr=RandGen_create() }
  deinit { RandGen_destroy(ptr) }

  @usableFromInline static var storeKey:String { get { return "RandGen" } }
  @usableFromInline static var stored:RandGen { get {
    if let r = Thread.current.threadDictionary[storeKey] as? RandGen { return r }
    return Thread.setToTLS(RandGen(), storeKey)
  }}
}


public protocol Initable { init() }
extension Float:Initable {}
extension Double:Initable {}
extension Int:Initable {}
extension Int32:Initable {}
extension Bool:Initable {}

public protocol Distribution {
  associatedtype Element:SignedNumeric
  subscript()->Element {get}
  subscript(n:Int)->[Element] {get}
  func fill<T:BaseVector>(_ v: inout T) where T.Element==Element;
  func gen_array(_ n:Int)->[Element]
  func gen_aligned(_ n:Int)->AlignedStorage<Element>
  func gen_pointer(_ n:Int)->UnsafeMutableBufferPointer<Element>
}
extension Distribution {
  public subscript(n:Int)->[Element] { return gen_array(n) }
  public func fill<T:BaseVector>(_ v: inout T)  where T.Element==Element {
    for i in 0..<v.count { v[i] = self[] }
  }
  public func gen_array(_ n:Int)->[Element] {
    var res = Array<Element>(n)
    fill(&res); return res
  }
  public func gen_aligned(_ n:Int)->AlignedStorage<Element> {
    var res = AlignedStorage<Element>(n)
    fill(&res); return res
  }
  public func gen_pointer(_ n:Int)->UnsafeMutableBufferPointer<Element> {
    var res = UnsafeMutableBufferPointer<Element>(n)
    fill(&res); return res
  }
}

public final class uniform_int_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Int32, _ b:Int32) { ptr=uniform_int_distribution_int_create(a,b); g=g_ }
  public convenience init(_ a:Int32, _ b:Int32) { self.init(RandGen.stored, a,b) }
  deinit { uniform_int_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return uniform_int_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func uniform_int_distribution(_ g_:RandGen, _ a:Int32, _ b:Int32)->uniform_int_distribution_Int32 {return uniform_int_distribution_Int32(g_, a,b)}
  public static func uniform_int_distribution(_ a:Int32, _ b:Int32)->uniform_int_distribution_Int32 {return uniform_int_distribution_Int32(a,b)}
}
public final class uniform_int_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Int, _ b:Int) { ptr=uniform_int_distribution_long_create(a,b); g=g_ }
  public convenience init(_ a:Int, _ b:Int) { self.init(RandGen.stored, a,b) }
  deinit { uniform_int_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return uniform_int_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func uniform_int_distribution(_ g_:RandGen, _ a:Int, _ b:Int)->uniform_int_distribution_Int {return uniform_int_distribution_Int(g_, a,b)}
  public static func uniform_int_distribution(_ a:Int, _ b:Int)->uniform_int_distribution_Int {return uniform_int_distribution_Int(a,b)}
}
public final class binomial_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ t:Int32, _ p:Double) { ptr=binomial_distribution_int_create(t,p); g=g_ }
  public convenience init(_ t:Int32, _ p:Double) { self.init(RandGen.stored, t,p) }
  deinit { binomial_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return binomial_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func binomial_distribution(_ g_:RandGen, _ t:Int32, _ p:Double)->binomial_distribution_Int32 {return binomial_distribution_Int32(g_, t,p)}
  public static func binomial_distribution(_ t:Int32, _ p:Double)->binomial_distribution_Int32 {return binomial_distribution_Int32(t,p)}
}
public final class binomial_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ t:Int, _ p:Double) { ptr=binomial_distribution_long_create(t,p); g=g_ }
  public convenience init(_ t:Int, _ p:Double) { self.init(RandGen.stored, t,p) }
  deinit { binomial_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return binomial_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func binomial_distribution(_ g_:RandGen, _ t:Int, _ p:Double)->binomial_distribution_Int {return binomial_distribution_Int(g_, t,p)}
  public static func binomial_distribution(_ t:Int, _ p:Double)->binomial_distribution_Int {return binomial_distribution_Int(t,p)}
}
public final class negative_binomial_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ k:Int32, _ p:Double) { ptr=negative_binomial_distribution_int_create(k,p); g=g_ }
  public convenience init(_ k:Int32, _ p:Double) { self.init(RandGen.stored, k,p) }
  deinit { negative_binomial_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return negative_binomial_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func negative_binomial_distribution(_ g_:RandGen, _ k:Int32, _ p:Double)->negative_binomial_distribution_Int32 {return negative_binomial_distribution_Int32(g_, k,p)}
  public static func negative_binomial_distribution(_ k:Int32, _ p:Double)->negative_binomial_distribution_Int32 {return negative_binomial_distribution_Int32(k,p)}
}
public final class negative_binomial_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ k:Int, _ p:Double) { ptr=negative_binomial_distribution_long_create(k,p); g=g_ }
  public convenience init(_ k:Int, _ p:Double) { self.init(RandGen.stored, k,p) }
  deinit { negative_binomial_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return negative_binomial_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func negative_binomial_distribution(_ g_:RandGen, _ k:Int, _ p:Double)->negative_binomial_distribution_Int {return negative_binomial_distribution_Int(g_, k,p)}
  public static func negative_binomial_distribution(_ k:Int, _ p:Double)->negative_binomial_distribution_Int {return negative_binomial_distribution_Int(k,p)}
}
public final class geometric_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ p:Double) { ptr=geometric_distribution_int_create(p); g=g_ }
  public convenience init(_ p:Double) { self.init(RandGen.stored, p) }
  deinit { geometric_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return geometric_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func geometric_distribution(_ g_:RandGen, _ p:Double)->geometric_distribution_Int32 {return geometric_distribution_Int32(g_, p)}
  public static func geometric_distribution(_ p:Double)->geometric_distribution_Int32 {return geometric_distribution_Int32(p)}
}
public final class geometric_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ p:Double) { ptr=geometric_distribution_long_create(p); g=g_ }
  public convenience init(_ p:Double) { self.init(RandGen.stored, p) }
  deinit { geometric_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return geometric_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func geometric_distribution(_ g_:RandGen, _ p:Double)->geometric_distribution_Int {return geometric_distribution_Int(g_, p)}
  public static func geometric_distribution(_ p:Double)->geometric_distribution_Int {return geometric_distribution_Int(p)}
}
public final class poisson_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double) { ptr=poisson_distribution_int_create(mean); g=g_ }
  public convenience init(_ mean:Double) { self.init(RandGen.stored, mean) }
  deinit { poisson_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return poisson_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func poisson_distribution(_ g_:RandGen, _ mean:Double)->poisson_distribution_Int32 {return poisson_distribution_Int32(g_, mean)}
  public static func poisson_distribution(_ mean:Double)->poisson_distribution_Int32 {return poisson_distribution_Int32(mean)}
}
public final class poisson_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double) { ptr=poisson_distribution_long_create(mean); g=g_ }
  public convenience init(_ mean:Double) { self.init(RandGen.stored, mean) }
  deinit { poisson_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return poisson_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func poisson_distribution(_ g_:RandGen, _ mean:Double)->poisson_distribution_Int {return poisson_distribution_Int(g_, mean)}
  public static func poisson_distribution(_ mean:Double)->poisson_distribution_Int {return poisson_distribution_Int(mean)}
}
public final class uniform_real_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=uniform_real_distribution_float_create(a,b); g=g_ }
  public convenience init(_ a:Float,_ b:Float) { self.init(RandGen.stored, a,b) }
  deinit { uniform_real_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return uniform_real_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func uniform_real_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->uniform_real_distribution_Float {return uniform_real_distribution_Float(g_, a,b)}
  public static func uniform_real_distribution(_ a:Float,_ b:Float)->uniform_real_distribution_Float {return uniform_real_distribution_Float(a,b)}
}
public final class uniform_real_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=uniform_real_distribution_double_create(a,b); g=g_ }
  public convenience init(_ a:Double,_ b:Double) { self.init(RandGen.stored, a,b) }
  deinit { uniform_real_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return uniform_real_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func uniform_real_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->uniform_real_distribution_Double {return uniform_real_distribution_Double(g_, a,b)}
  public static func uniform_real_distribution(_ a:Double,_ b:Double)->uniform_real_distribution_Double {return uniform_real_distribution_Double(a,b)}
}
public final class exponential_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ l:Float) { ptr=exponential_distribution_float_create(l); g=g_ }
  public convenience init(_ l:Float) { self.init(RandGen.stored, l) }
  deinit { exponential_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return exponential_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func exponential_distribution(_ g_:RandGen, _ l:Float)->exponential_distribution_Float {return exponential_distribution_Float(g_, l)}
  public static func exponential_distribution(_ l:Float)->exponential_distribution_Float {return exponential_distribution_Float(l)}
}
public final class exponential_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ l:Double) { ptr=exponential_distribution_double_create(l); g=g_ }
  public convenience init(_ l:Double) { self.init(RandGen.stored, l) }
  deinit { exponential_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return exponential_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func exponential_distribution(_ g_:RandGen, _ l:Double)->exponential_distribution_Double {return exponential_distribution_Double(g_, l)}
  public static func exponential_distribution(_ l:Double)->exponential_distribution_Double {return exponential_distribution_Double(l)}
}
public final class gamma_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=gamma_distribution_float_create(a,b); g=g_ }
  public convenience init(_ a:Float,_ b:Float) { self.init(RandGen.stored, a,b) }
  deinit { gamma_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return gamma_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func gamma_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->gamma_distribution_Float {return gamma_distribution_Float(g_, a,b)}
  public static func gamma_distribution(_ a:Float,_ b:Float)->gamma_distribution_Float {return gamma_distribution_Float(a,b)}
}
public final class gamma_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=gamma_distribution_double_create(a,b); g=g_ }
  public convenience init(_ a:Double,_ b:Double) { self.init(RandGen.stored, a,b) }
  deinit { gamma_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return gamma_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func gamma_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->gamma_distribution_Double {return gamma_distribution_Double(g_, a,b)}
  public static func gamma_distribution(_ a:Double,_ b:Double)->gamma_distribution_Double {return gamma_distribution_Double(a,b)}
}
public final class weibull_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=weibull_distribution_float_create(a,b); g=g_ }
  public convenience init(_ a:Float,_ b:Float) { self.init(RandGen.stored, a,b) }
  deinit { weibull_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return weibull_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func weibull_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->weibull_distribution_Float {return weibull_distribution_Float(g_, a,b)}
  public static func weibull_distribution(_ a:Float,_ b:Float)->weibull_distribution_Float {return weibull_distribution_Float(a,b)}
}
public final class weibull_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=weibull_distribution_double_create(a,b); g=g_ }
  public convenience init(_ a:Double,_ b:Double) { self.init(RandGen.stored, a,b) }
  deinit { weibull_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return weibull_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func weibull_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->weibull_distribution_Double {return weibull_distribution_Double(g_, a,b)}
  public static func weibull_distribution(_ a:Double,_ b:Double)->weibull_distribution_Double {return weibull_distribution_Double(a,b)}
}
public final class normal_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Float,_ stddev:Float) { ptr=normal_distribution_float_create(mean,stddev); g=g_ }
  public convenience init(_ mean:Float,_ stddev:Float) { self.init(RandGen.stored, mean,stddev) }
  deinit { normal_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return normal_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func normal_distribution(_ g_:RandGen, _ mean:Float,_ stddev:Float)->normal_distribution_Float {return normal_distribution_Float(g_, mean,stddev)}
  public static func normal_distribution(_ mean:Float,_ stddev:Float)->normal_distribution_Float {return normal_distribution_Float(mean,stddev)}
}
public final class normal_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double,_ stddev:Double) { ptr=normal_distribution_double_create(mean,stddev); g=g_ }
  public convenience init(_ mean:Double,_ stddev:Double) { self.init(RandGen.stored, mean,stddev) }
  deinit { normal_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return normal_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func normal_distribution(_ g_:RandGen, _ mean:Double,_ stddev:Double)->normal_distribution_Double {return normal_distribution_Double(g_, mean,stddev)}
  public static func normal_distribution(_ mean:Double,_ stddev:Double)->normal_distribution_Double {return normal_distribution_Double(mean,stddev)}
}
public final class lognormal_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Float,_ s:Float) { ptr=lognormal_distribution_float_create(m,s); g=g_ }
  public convenience init(_ m:Float,_ s:Float) { self.init(RandGen.stored, m,s) }
  deinit { lognormal_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return lognormal_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func lognormal_distribution(_ g_:RandGen, _ m:Float,_ s:Float)->lognormal_distribution_Float {return lognormal_distribution_Float(g_, m,s)}
  public static func lognormal_distribution(_ m:Float,_ s:Float)->lognormal_distribution_Float {return lognormal_distribution_Float(m,s)}
}
public final class lognormal_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Double,_ s:Double) { ptr=lognormal_distribution_double_create(m,s); g=g_ }
  public convenience init(_ m:Double,_ s:Double) { self.init(RandGen.stored, m,s) }
  deinit { lognormal_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return lognormal_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func lognormal_distribution(_ g_:RandGen, _ m:Double,_ s:Double)->lognormal_distribution_Double {return lognormal_distribution_Double(g_, m,s)}
  public static func lognormal_distribution(_ m:Double,_ s:Double)->lognormal_distribution_Double {return lognormal_distribution_Double(m,s)}
}
public final class chi_squared_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Float) { ptr=chi_squared_distribution_float_create(n); g=g_ }
  public convenience init(_ n:Float) { self.init(RandGen.stored, n) }
  deinit { chi_squared_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return chi_squared_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func chi_squared_distribution(_ g_:RandGen, _ n:Float)->chi_squared_distribution_Float {return chi_squared_distribution_Float(g_, n)}
  public static func chi_squared_distribution(_ n:Float)->chi_squared_distribution_Float {return chi_squared_distribution_Float(n)}
}
public final class chi_squared_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Double) { ptr=chi_squared_distribution_double_create(n); g=g_ }
  public convenience init(_ n:Double) { self.init(RandGen.stored, n) }
  deinit { chi_squared_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return chi_squared_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func chi_squared_distribution(_ g_:RandGen, _ n:Double)->chi_squared_distribution_Double {return chi_squared_distribution_Double(g_, n)}
  public static func chi_squared_distribution(_ n:Double)->chi_squared_distribution_Double {return chi_squared_distribution_Double(n)}
}
public final class cauchy_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=cauchy_distribution_float_create(a,b); g=g_ }
  public convenience init(_ a:Float,_ b:Float) { self.init(RandGen.stored, a,b) }
  deinit { cauchy_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return cauchy_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func cauchy_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->cauchy_distribution_Float {return cauchy_distribution_Float(g_, a,b)}
  public static func cauchy_distribution(_ a:Float,_ b:Float)->cauchy_distribution_Float {return cauchy_distribution_Float(a,b)}
}
public final class cauchy_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=cauchy_distribution_double_create(a,b); g=g_ }
  public convenience init(_ a:Double,_ b:Double) { self.init(RandGen.stored, a,b) }
  deinit { cauchy_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return cauchy_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func cauchy_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->cauchy_distribution_Double {return cauchy_distribution_Double(g_, a,b)}
  public static func cauchy_distribution(_ a:Double,_ b:Double)->cauchy_distribution_Double {return cauchy_distribution_Double(a,b)}
}
public final class fisher_f_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Float,_ n:Float) { ptr=fisher_f_distribution_float_create(m,n); g=g_ }
  public convenience init(_ m:Float,_ n:Float) { self.init(RandGen.stored, m,n) }
  deinit { fisher_f_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return fisher_f_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func fisher_f_distribution(_ g_:RandGen, _ m:Float,_ n:Float)->fisher_f_distribution_Float {return fisher_f_distribution_Float(g_, m,n)}
  public static func fisher_f_distribution(_ m:Float,_ n:Float)->fisher_f_distribution_Float {return fisher_f_distribution_Float(m,n)}
}
public final class fisher_f_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Double,_ n:Double) { ptr=fisher_f_distribution_double_create(m,n); g=g_ }
  public convenience init(_ m:Double,_ n:Double) { self.init(RandGen.stored, m,n) }
  deinit { fisher_f_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return fisher_f_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func fisher_f_distribution(_ g_:RandGen, _ m:Double,_ n:Double)->fisher_f_distribution_Double {return fisher_f_distribution_Double(g_, m,n)}
  public static func fisher_f_distribution(_ m:Double,_ n:Double)->fisher_f_distribution_Double {return fisher_f_distribution_Double(m,n)}
}
public final class student_t_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Float) { ptr=student_t_distribution_float_create(n); g=g_ }
  public convenience init(_ n:Float) { self.init(RandGen.stored, n) }
  deinit { student_t_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return student_t_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func student_t_distribution(_ g_:RandGen, _ n:Float)->student_t_distribution_Float {return student_t_distribution_Float(g_, n)}
  public static func student_t_distribution(_ n:Float)->student_t_distribution_Float {return student_t_distribution_Float(n)}
}
public final class student_t_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Double) { ptr=student_t_distribution_double_create(n); g=g_ }
  public convenience init(_ n:Double) { self.init(RandGen.stored, n) }
  deinit { student_t_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return student_t_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func student_t_distribution(_ g_:RandGen, _ n:Double)->student_t_distribution_Double {return student_t_distribution_Double(g_, n)}
  public static func student_t_distribution(_ n:Double)->student_t_distribution_Double {return student_t_distribution_Double(n)}
}


public class discrete_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ d_s:Array<Double>) { ptr=discrete_distribution_long_create(d_s.p, d_s.p+d_s.count); g=g_; }
  public convenience init(_ d_s:Array<Double>) { self.init(RandGen.stored, d_s) }
  deinit { discrete_distribution_long_destroy(ptr) }
  @inlinable public subscript()->Int { return discrete_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func discrete_distribution(_ g_:RandGen, _ d_s:Array<Double>)->discrete_distribution_Int {return discrete_distribution_Int(g_, d_s)}
  public static func discrete_distribution(_ d_s:Array<Double>)->discrete_distribution_Int {return discrete_distribution_Int(d_s)}
}


public class discrete_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ d_s:Array<Double>) { ptr=discrete_distribution_int_create(d_s.p, d_s.p+d_s.count); g=g_; }
  public convenience init(_ d_s:Array<Double>) { self.init(RandGen.stored, d_s) }
  deinit { discrete_distribution_int_destroy(ptr) }
  @inlinable public subscript()->Int32 { return discrete_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func discrete_distribution(_ g_:RandGen, _ d_s:Array<Double>)->discrete_distribution_Int32 {return discrete_distribution_Int32(g_, d_s)}
  public static func discrete_distribution(_ d_s:Array<Double>)->discrete_distribution_Int32 {return discrete_distribution_Int32(d_s)}
}



public class piecewise_constant_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>) { ptr=piecewise_constant_distribution_float_create(i_s.p, i_s.p+i_s.count, w_s.p); g=g_; }
  public convenience init(_ i_s:Array<Double>, _ w_s:Array<Double>) { self.init(RandGen.stored, i_s, w_s) }
  deinit { piecewise_constant_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return piecewise_constant_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func piecewise_constant_distribution(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_constant_distribution_Float {return piecewise_constant_distribution_Float(g_, i_s, w_s)}
  public static func piecewise_constant_distribution(_ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_constant_distribution_Float {return piecewise_constant_distribution_Float(i_s, w_s)}
}


public class piecewise_constant_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>) { ptr=piecewise_constant_distribution_double_create(i_s.p, i_s.p+i_s.count, w_s.p); g=g_; }
  public convenience init(_ i_s:Array<Double>, _ w_s:Array<Double>) { self.init(RandGen.stored, i_s, w_s) }
  deinit { piecewise_constant_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return piecewise_constant_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func piecewise_constant_distribution(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_constant_distribution_Double {return piecewise_constant_distribution_Double(g_, i_s, w_s)}
  public static func piecewise_constant_distribution(_ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_constant_distribution_Double {return piecewise_constant_distribution_Double(i_s, w_s)}
}


public class piecewise_linear_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>) { ptr=piecewise_linear_distribution_float_create(i_s.p, i_s.p+i_s.count, w_s.p); g=g_; }
  public convenience init(_ i_s:Array<Double>, _ w_s:Array<Double>) { self.init(RandGen.stored, i_s, w_s) }
  deinit { piecewise_linear_distribution_float_destroy(ptr) }
  @inlinable public subscript()->Float { return piecewise_linear_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func piecewise_linear_distribution(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_linear_distribution_Float {return piecewise_linear_distribution_Float(g_, i_s, w_s)}
  public static func piecewise_linear_distribution(_ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_linear_distribution_Float {return piecewise_linear_distribution_Float(i_s, w_s)}
}


public class piecewise_linear_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>) { ptr=piecewise_linear_distribution_double_create(i_s.p, i_s.p+i_s.count, w_s.p); g=g_; }
  public convenience init(_ i_s:Array<Double>, _ w_s:Array<Double>) { self.init(RandGen.stored, i_s, w_s) }
  deinit { piecewise_linear_distribution_double_destroy(ptr) }
  @inlinable public subscript()->Double { return piecewise_linear_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func piecewise_linear_distribution(_ g_:RandGen, _ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_linear_distribution_Double {return piecewise_linear_distribution_Double(g_, i_s, w_s)}
  public static func piecewise_linear_distribution(_ i_s:Array<Double>, _ w_s:Array<Double>)->piecewise_linear_distribution_Double {return piecewise_linear_distribution_Double(i_s, w_s)}
}


