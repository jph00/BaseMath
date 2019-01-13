import CBaseMath

public class RandGen {
  public let ptr:OpaquePointer?
  public init() { ptr=RandGen_create() }
  deinit { RandGen_destroy(ptr) }
}


public protocol Distribution {
  associatedtype Element:SignedNumeric
  subscript()->Element {get}
  func gen()->Element
}

public class uniform_int_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Int32, _ b:Int32) { ptr=uniform_int_distribution_int_create(a,b); g=g_ }
  deinit { uniform_int_distribution_int_destroy(ptr) }
  @inlinable public subscript ()->Int32 { return gen() }
  @inlinable public func gen()->Int32 { return uniform_int_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func uniform_int_distribution(_ g_:RandGen, _ a:Int32, _ b:Int32)->uniform_int_distribution_Int32 {return uniform_int_distribution_Int32(g_, a,b)}
}
public class uniform_int_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Int, _ b:Int) { ptr=uniform_int_distribution_long_create(a,b); g=g_ }
  deinit { uniform_int_distribution_long_destroy(ptr) }
  @inlinable public subscript ()->Int { return gen() }
  @inlinable public func gen()->Int { return uniform_int_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func uniform_int_distribution(_ g_:RandGen, _ a:Int, _ b:Int)->uniform_int_distribution_Int {return uniform_int_distribution_Int(g_, a,b)}
}
public class binomial_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ t:Int32, _ p:Double) { ptr=binomial_distribution_int_create(t,p); g=g_ }
  deinit { binomial_distribution_int_destroy(ptr) }
  @inlinable public subscript ()->Int32 { return gen() }
  @inlinable public func gen()->Int32 { return binomial_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func binomial_distribution(_ g_:RandGen, _ t:Int32, _ p:Double)->binomial_distribution_Int32 {return binomial_distribution_Int32(g_, t,p)}
}
public class binomial_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ t:Int, _ p:Double) { ptr=binomial_distribution_long_create(t,p); g=g_ }
  deinit { binomial_distribution_long_destroy(ptr) }
  @inlinable public subscript ()->Int { return gen() }
  @inlinable public func gen()->Int { return binomial_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func binomial_distribution(_ g_:RandGen, _ t:Int, _ p:Double)->binomial_distribution_Int {return binomial_distribution_Int(g_, t,p)}
}
public class negative_binomial_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ k:Int32, _ p:Double) { ptr=negative_binomial_distribution_int_create(k,p); g=g_ }
  deinit { negative_binomial_distribution_int_destroy(ptr) }
  @inlinable public subscript ()->Int32 { return gen() }
  @inlinable public func gen()->Int32 { return negative_binomial_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func negative_binomial_distribution(_ g_:RandGen, _ k:Int32, _ p:Double)->negative_binomial_distribution_Int32 {return negative_binomial_distribution_Int32(g_, k,p)}
}
public class negative_binomial_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ k:Int, _ p:Double) { ptr=negative_binomial_distribution_long_create(k,p); g=g_ }
  deinit { negative_binomial_distribution_long_destroy(ptr) }
  @inlinable public subscript ()->Int { return gen() }
  @inlinable public func gen()->Int { return negative_binomial_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func negative_binomial_distribution(_ g_:RandGen, _ k:Int, _ p:Double)->negative_binomial_distribution_Int {return negative_binomial_distribution_Int(g_, k,p)}
}
public class geometric_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ p:Double) { ptr=geometric_distribution_int_create(p); g=g_ }
  deinit { geometric_distribution_int_destroy(ptr) }
  @inlinable public subscript ()->Int32 { return gen() }
  @inlinable public func gen()->Int32 { return geometric_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func geometric_distribution(_ g_:RandGen, _ p:Double)->geometric_distribution_Int32 {return geometric_distribution_Int32(g_, p)}
}
public class geometric_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ p:Double) { ptr=geometric_distribution_long_create(p); g=g_ }
  deinit { geometric_distribution_long_destroy(ptr) }
  @inlinable public subscript ()->Int { return gen() }
  @inlinable public func gen()->Int { return geometric_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func geometric_distribution(_ g_:RandGen, _ p:Double)->geometric_distribution_Int {return geometric_distribution_Int(g_, p)}
}
public class poisson_distribution_Int32:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double) { ptr=poisson_distribution_int_create(mean); g=g_ }
  deinit { poisson_distribution_int_destroy(ptr) }
  @inlinable public subscript ()->Int32 { return gen() }
  @inlinable public func gen()->Int32 { return poisson_distribution_int_call(ptr, g.ptr) }
}
extension Int32 {
  public static func poisson_distribution(_ g_:RandGen, _ mean:Double)->poisson_distribution_Int32 {return poisson_distribution_Int32(g_, mean)}
}
public class poisson_distribution_Int:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double) { ptr=poisson_distribution_long_create(mean); g=g_ }
  deinit { poisson_distribution_long_destroy(ptr) }
  @inlinable public subscript ()->Int { return gen() }
  @inlinable public func gen()->Int { return poisson_distribution_long_call(ptr, g.ptr) }
}
extension Int {
  public static func poisson_distribution(_ g_:RandGen, _ mean:Double)->poisson_distribution_Int {return poisson_distribution_Int(g_, mean)}
}
public class uniform_real_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=uniform_real_distribution_float_create(a,b); g=g_ }
  deinit { uniform_real_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return uniform_real_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func uniform_real_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->uniform_real_distribution_Float {return uniform_real_distribution_Float(g_, a,b)}
}
public class uniform_real_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=uniform_real_distribution_double_create(a,b); g=g_ }
  deinit { uniform_real_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return uniform_real_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func uniform_real_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->uniform_real_distribution_Double {return uniform_real_distribution_Double(g_, a,b)}
}
public class exponential_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ l:Float) { ptr=exponential_distribution_float_create(l); g=g_ }
  deinit { exponential_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return exponential_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func exponential_distribution(_ g_:RandGen, _ l:Float)->exponential_distribution_Float {return exponential_distribution_Float(g_, l)}
}
public class exponential_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ l:Double) { ptr=exponential_distribution_double_create(l); g=g_ }
  deinit { exponential_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return exponential_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func exponential_distribution(_ g_:RandGen, _ l:Double)->exponential_distribution_Double {return exponential_distribution_Double(g_, l)}
}
public class gamma_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=gamma_distribution_float_create(a,b); g=g_ }
  deinit { gamma_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return gamma_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func gamma_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->gamma_distribution_Float {return gamma_distribution_Float(g_, a,b)}
}
public class gamma_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=gamma_distribution_double_create(a,b); g=g_ }
  deinit { gamma_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return gamma_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func gamma_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->gamma_distribution_Double {return gamma_distribution_Double(g_, a,b)}
}
public class weibull_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=weibull_distribution_float_create(a,b); g=g_ }
  deinit { weibull_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return weibull_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func weibull_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->weibull_distribution_Float {return weibull_distribution_Float(g_, a,b)}
}
public class weibull_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=weibull_distribution_double_create(a,b); g=g_ }
  deinit { weibull_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return weibull_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func weibull_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->weibull_distribution_Double {return weibull_distribution_Double(g_, a,b)}
}
public class normal_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Float,_ stddev:Float) { ptr=normal_distribution_float_create(mean,stddev); g=g_ }
  deinit { normal_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return normal_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func normal_distribution(_ g_:RandGen, _ mean:Float,_ stddev:Float)->normal_distribution_Float {return normal_distribution_Float(g_, mean,stddev)}
}
public class normal_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ mean:Double,_ stddev:Double) { ptr=normal_distribution_double_create(mean,stddev); g=g_ }
  deinit { normal_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return normal_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func normal_distribution(_ g_:RandGen, _ mean:Double,_ stddev:Double)->normal_distribution_Double {return normal_distribution_Double(g_, mean,stddev)}
}
public class lognormal_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Float,_ s:Float) { ptr=lognormal_distribution_float_create(m,s); g=g_ }
  deinit { lognormal_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return lognormal_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func lognormal_distribution(_ g_:RandGen, _ m:Float,_ s:Float)->lognormal_distribution_Float {return lognormal_distribution_Float(g_, m,s)}
}
public class lognormal_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Double,_ s:Double) { ptr=lognormal_distribution_double_create(m,s); g=g_ }
  deinit { lognormal_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return lognormal_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func lognormal_distribution(_ g_:RandGen, _ m:Double,_ s:Double)->lognormal_distribution_Double {return lognormal_distribution_Double(g_, m,s)}
}
public class chi_squared_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Float) { ptr=chi_squared_distribution_float_create(n); g=g_ }
  deinit { chi_squared_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return chi_squared_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func chi_squared_distribution(_ g_:RandGen, _ n:Float)->chi_squared_distribution_Float {return chi_squared_distribution_Float(g_, n)}
}
public class chi_squared_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Double) { ptr=chi_squared_distribution_double_create(n); g=g_ }
  deinit { chi_squared_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return chi_squared_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func chi_squared_distribution(_ g_:RandGen, _ n:Double)->chi_squared_distribution_Double {return chi_squared_distribution_Double(g_, n)}
}
public class cauchy_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Float,_ b:Float) { ptr=cauchy_distribution_float_create(a,b); g=g_ }
  deinit { cauchy_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return cauchy_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func cauchy_distribution(_ g_:RandGen, _ a:Float,_ b:Float)->cauchy_distribution_Float {return cauchy_distribution_Float(g_, a,b)}
}
public class cauchy_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ a:Double,_ b:Double) { ptr=cauchy_distribution_double_create(a,b); g=g_ }
  deinit { cauchy_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return cauchy_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func cauchy_distribution(_ g_:RandGen, _ a:Double,_ b:Double)->cauchy_distribution_Double {return cauchy_distribution_Double(g_, a,b)}
}
public class fisher_f_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Float,_ n:Float) { ptr=fisher_f_distribution_float_create(m,n); g=g_ }
  deinit { fisher_f_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return fisher_f_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func fisher_f_distribution(_ g_:RandGen, _ m:Float,_ n:Float)->fisher_f_distribution_Float {return fisher_f_distribution_Float(g_, m,n)}
}
public class fisher_f_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ m:Double,_ n:Double) { ptr=fisher_f_distribution_double_create(m,n); g=g_ }
  deinit { fisher_f_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return fisher_f_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func fisher_f_distribution(_ g_:RandGen, _ m:Double,_ n:Double)->fisher_f_distribution_Double {return fisher_f_distribution_Double(g_, m,n)}
}
public class student_t_distribution_Float:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Float) { ptr=student_t_distribution_float_create(n); g=g_ }
  deinit { student_t_distribution_float_destroy(ptr) }
  @inlinable public subscript ()->Float { return gen() }
  @inlinable public func gen()->Float { return student_t_distribution_float_call(ptr, g.ptr) }
}
extension Float {
  public static func student_t_distribution(_ g_:RandGen, _ n:Float)->student_t_distribution_Float {return student_t_distribution_Float(g_, n)}
}
public class student_t_distribution_Double:Distribution {
  public let ptr:OpaquePointer?
  @usableFromInline let g:RandGen
  public init(_ g_:RandGen, _ n:Double) { ptr=student_t_distribution_double_create(n); g=g_ }
  deinit { student_t_distribution_double_destroy(ptr) }
  @inlinable public subscript ()->Double { return gen() }
  @inlinable public func gen()->Double { return student_t_distribution_double_call(ptr, g.ptr) }
}
extension Double {
  public static func student_t_distribution(_ g_:RandGen, _ n:Double)->student_t_distribution_Double {return student_t_distribution_Double(g_, n)}
}

