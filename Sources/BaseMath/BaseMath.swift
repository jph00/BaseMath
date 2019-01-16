import Foundation
import CBaseMath


extension BinaryFloatingPoint where Self: CVarArg {
  public func string(_ digits:Int) -> String { return String(format: "%.\(digits)f", self) }
}

precedencegroup ExponentiationPrecedence { associativity: right higherThan: MultiplicationPrecedence }
infix operator ^^: ExponentiationPrecedence

public extension Numeric {
  typealias Element=Self
  typealias PtrT = UnsafePointer<Element> 
  typealias MutPtrT = UnsafeMutablePointer<Element>
}

public protocol SupportsBasicMath:BinaryFloatingPoint {
  init(_ value: Self)
  init()

  var nsNumber:NSNumber {get}

  func add(_ b: Self) -> Self
  func sub(_ b: Self) -> Self
  func mul(_ b: Self) -> Self
  func div(_ b: Self) -> Self
  func subRev(_ b: Self) -> Self
  func divRev(_ b: Self) -> Self
  func min(_ b: Self) -> Self
  func max(_ b: Self) -> Self
  func pow(_ b: Self) -> Self
  func atan2(_ b: Self) -> Self
  func copysign(_ b: Self) -> Self
  func fdim(_ b: Self) -> Self
  func fmax(_ b: Self) -> Self
  func fmin(_ b: Self) -> Self
  func hypot(_ b: Self) -> Self
  func nextafter(_ b: Self) -> Self
  func sqrt() -> Self
  func acos() -> Self
  func acosh() -> Self
  func asin() -> Self
  func asinh() -> Self
  func atan() -> Self
  func atanh() -> Self
  func cbrt() -> Self
  func cos() -> Self
  func cosh() -> Self
  func erf() -> Self
  func erfc() -> Self
  func exp() -> Self
  func exp2() -> Self
  func expm1() -> Self
  func log() -> Self
  func log10() -> Self
  func log1p() -> Self
  func log2() -> Self
  func logb() -> Self
  func nearbyint() -> Self
  func rint() -> Self
  func sin() -> Self
  func sinh() -> Self
  func tan() -> Self
  func tanh() -> Self
  func tgamma() -> Self

  static func sqr(_ a:Self) -> Self
  func sqr() -> Self
  func abs() -> Self
  static func sum(_ a:PtrT, _ n:Int32) -> Element
  static func sumabs(_ a:PtrT, _ n:Int32)->Element
  static func sumsqrt(_ a:PtrT, _ n:Int32)->Element
  static func sumacos(_ a:PtrT, _ n:Int32)->Element
  static func sumacosh(_ a:PtrT, _ n:Int32)->Element
  static func sumasin(_ a:PtrT, _ n:Int32)->Element
  static func sumasinh(_ a:PtrT, _ n:Int32)->Element
  static func sumatan(_ a:PtrT, _ n:Int32)->Element
  static func sumatanh(_ a:PtrT, _ n:Int32)->Element
  static func sumcbrt(_ a:PtrT, _ n:Int32)->Element
  static func sumcos(_ a:PtrT, _ n:Int32)->Element
  static func sumcosh(_ a:PtrT, _ n:Int32)->Element
  static func sumerf(_ a:PtrT, _ n:Int32)->Element
  static func sumerfc(_ a:PtrT, _ n:Int32)->Element
  static func sumexp(_ a:PtrT, _ n:Int32)->Element
  static func sumexp2(_ a:PtrT, _ n:Int32)->Element
  static func sumexpm1(_ a:PtrT, _ n:Int32)->Element
  static func sumlog(_ a:PtrT, _ n:Int32)->Element
  static func sumlog10(_ a:PtrT, _ n:Int32)->Element
  static func sumlog1p(_ a:PtrT, _ n:Int32)->Element
  static func sumlog2(_ a:PtrT, _ n:Int32)->Element
  static func sumlogb(_ a:PtrT, _ n:Int32)->Element
  static func sumnearbyint(_ a:PtrT, _ n:Int32)->Element
  static func sumrint(_ a:PtrT, _ n:Int32)->Element
  static func sumsin(_ a:PtrT, _ n:Int32)->Element
  static func sumsinh(_ a:PtrT, _ n:Int32)->Element
  static func sumtan(_ a:PtrT, _ n:Int32)->Element
  static func sumtanh(_ a:PtrT, _ n:Int32)->Element
  static func sumtgamma(_ a:PtrT, _ n:Int32)->Element
  static func sumsqr(_ a:PtrT, _ n:Int32)->Element

  static func ^^(x:Self, a:Self) -> Self
}

extension Float : SupportsBasicMath {
  public var nsNumber:NSNumber { return NSNumber(value: self) }

  @inlinable public func add(_ b: Float) -> Float {return self + b}
  @inlinable public func sub(_ b: Float) -> Float {return self - b}
  @inlinable public func mul(_ b: Float) -> Float {return self * b}
  @inlinable public func div(_ b: Float) -> Float {return self / b}

  @inlinable public static func sqr(_ a:Float) -> Float {return  a  * a  }
  @inlinable public        func sqr(        ) -> Float {return self*self}

  @inlinable public func subRev(_ b: Float) -> Float {return b - self}
  @inlinable public func divRev(_ b: Float) -> Float {return b / self}

  @inlinable public func sqrt() -> Float {return Foundation.sqrt(self)}
  @inlinable public func acos() -> Float {return Foundation.acos(self)}
  @inlinable public func acosh() -> Float {return Foundation.acosh(self)}
  @inlinable public func asin() -> Float {return Foundation.asin(self)}
  @inlinable public func asinh() -> Float {return Foundation.asinh(self)}
  @inlinable public func atan() -> Float {return Foundation.atan(self)}
  @inlinable public func atanh() -> Float {return Foundation.atanh(self)}
  @inlinable public func cbrt() -> Float {return Foundation.cbrt(self)}
  @inlinable public func cos() -> Float {return Foundation.cos(self)}
  @inlinable public func cosh() -> Float {return Foundation.cosh(self)}
  @inlinable public func erf() -> Float {return Foundation.erf(self)}
  @inlinable public func erfc() -> Float {return Foundation.erfc(self)}
  @inlinable public func exp() -> Float {return Foundation.exp(self)}
  @inlinable public func exp2() -> Float {return Foundation.exp2(self)}
  @inlinable public func expm1() -> Float {return Foundation.expm1(self)}
  @inlinable public func log() -> Float {return Foundation.log(self)}
  @inlinable public func log10() -> Float {return Foundation.log10(self)}
  @inlinable public func log1p() -> Float {return Foundation.log1p(self)}
  @inlinable public func log2() -> Float {return Foundation.log2(self)}
  @inlinable public func logb() -> Float {return Foundation.logb(self)}
  @inlinable public func nearbyint() -> Float {return Foundation.nearbyint(self)}
  @inlinable public func rint() -> Float {return Foundation.rint(self)}
  @inlinable public func sin() -> Float {return Foundation.sin(self)}
  @inlinable public func sinh() -> Float {return Foundation.sinh(self)}
  @inlinable public func tan() -> Float {return Foundation.tan(self)}
  @inlinable public func tanh() -> Float {return Foundation.tanh(self)}
  @inlinable public func tgamma() -> Float {return Foundation.tgamma(self)}

  @inlinable public func min(_ b: Float) -> Float {return Swift.min(self, b)}
  @inlinable public func max(_ b: Float) -> Float {return Swift.max(self, b)}

  @inlinable public func abs() -> Float {return Swift.abs(self)}

  @inlinable public func pow(_ b: Float) -> Float {return Foundation.pow(self, b)}
  @inlinable public func atan2(_ b: Float) -> Float {return Foundation.atan2(self, b)}
  @inlinable public func copysign(_ b: Float) -> Float {return Foundation.copysign(self, b)}
  @inlinable public func fdim(_ b: Float) -> Float {return Foundation.fdim(self, b)}
  @inlinable public func fmax(_ b: Float) -> Float {return Foundation.fmax(self, b)}
  @inlinable public func fmin(_ b: Float) -> Float {return Foundation.fmin(self, b)}
  @inlinable public func hypot(_ b: Float) -> Float {return Foundation.hypot(self, b)}
  @inlinable public func nextafter(_ b: Float) -> Float {return Foundation.nextafter(self, b)}

  @inlinable public static func sum(_ a:PtrT, _ n:Int32) -> Element { return smSum_float(a, n) }
  @inlinable public static func sumabs(_ a:PtrT, _ n:Int32)->Element { return smSum_abs_float(a, n) }
  @inlinable public static func sumsqrt(_ a:PtrT, _ n:Int32)->Element { return smSum_sqrt_float(a, n) }
  @inlinable public static func sumacos(_ a:PtrT, _ n:Int32)->Element { return smSum_acos_float(a, n) }
  @inlinable public static func sumacosh(_ a:PtrT, _ n:Int32)->Element { return smSum_acosh_float(a, n) }
  @inlinable public static func sumasin(_ a:PtrT, _ n:Int32)->Element { return smSum_asin_float(a, n) }
  @inlinable public static func sumasinh(_ a:PtrT, _ n:Int32)->Element { return smSum_asinh_float(a, n) }
  @inlinable public static func sumatan(_ a:PtrT, _ n:Int32)->Element { return smSum_atan_float(a, n) }
  @inlinable public static func sumatanh(_ a:PtrT, _ n:Int32)->Element { return smSum_atanh_float(a, n) }
  @inlinable public static func sumcbrt(_ a:PtrT, _ n:Int32)->Element { return smSum_cbrt_float(a, n) }
  @inlinable public static func sumcos(_ a:PtrT, _ n:Int32)->Element { return smSum_cos_float(a, n) }
  @inlinable public static func sumcosh(_ a:PtrT, _ n:Int32)->Element { return smSum_cosh_float(a, n) }
  @inlinable public static func sumerf(_ a:PtrT, _ n:Int32)->Element { return smSum_erf_float(a, n) }
  @inlinable public static func sumerfc(_ a:PtrT, _ n:Int32)->Element { return smSum_erfc_float(a, n) }
  @inlinable public static func sumexp(_ a:PtrT, _ n:Int32)->Element { return smSum_exp_float(a, n) }
  @inlinable public static func sumexp2(_ a:PtrT, _ n:Int32)->Element { return smSum_exp2_float(a, n) }
  @inlinable public static func sumexpm1(_ a:PtrT, _ n:Int32)->Element { return smSum_expm1_float(a, n) }
  @inlinable public static func sumlog(_ a:PtrT, _ n:Int32)->Element { return smSum_log_float(a, n) }
  @inlinable public static func sumlog10(_ a:PtrT, _ n:Int32)->Element { return smSum_log10_float(a, n) }
  @inlinable public static func sumlog1p(_ a:PtrT, _ n:Int32)->Element { return smSum_log1p_float(a, n) }
  @inlinable public static func sumlog2(_ a:PtrT, _ n:Int32)->Element { return smSum_log2_float(a, n) }
  @inlinable public static func sumlogb(_ a:PtrT, _ n:Int32)->Element { return smSum_logb_float(a, n) }
  @inlinable public static func sumnearbyint(_ a:PtrT, _ n:Int32)->Element { return smSum_nearbyint_float(a, n) }
  @inlinable public static func sumrint(_ a:PtrT, _ n:Int32)->Element { return smSum_rint_float(a, n) }
  @inlinable public static func sumsin(_ a:PtrT, _ n:Int32)->Element { return smSum_sin_float(a, n) }
  @inlinable public static func sumsinh(_ a:PtrT, _ n:Int32)->Element { return smSum_sinh_float(a, n) }
  @inlinable public static func sumtan(_ a:PtrT, _ n:Int32)->Element { return smSum_tan_float(a, n) }
  @inlinable public static func sumtanh(_ a:PtrT, _ n:Int32)->Element { return smSum_tanh_float(a, n) }
  @inlinable public static func sumtgamma(_ a:PtrT, _ n:Int32)->Element { return smSum_tgamma_float(a, n) }
  @inlinable public static func sumsqr(_ a:PtrT, _ n:Int32)->Element { return smSum_sqr_float(a, n) }

  public static func ^^(x:Float, a:Float) -> Float { return x.pow(a) }
}
extension Double : SupportsBasicMath {
  public var nsNumber:NSNumber { return NSNumber(value: self) }

  @inlinable public func add(_ b: Double) -> Double {return self + b}
  @inlinable public func sub(_ b: Double) -> Double {return self - b}
  @inlinable public func mul(_ b: Double) -> Double {return self * b}
  @inlinable public func div(_ b: Double) -> Double {return self / b}

  @inlinable public static func sqr(_ a:Double) -> Double {return  a  * a  }
  @inlinable public        func sqr(        ) -> Double {return self*self}

  @inlinable public func subRev(_ b: Double) -> Double {return b - self}
  @inlinable public func divRev(_ b: Double) -> Double {return b / self}

  @inlinable public func sqrt() -> Double {return Foundation.sqrt(self)}
  @inlinable public func acos() -> Double {return Foundation.acos(self)}
  @inlinable public func acosh() -> Double {return Foundation.acosh(self)}
  @inlinable public func asin() -> Double {return Foundation.asin(self)}
  @inlinable public func asinh() -> Double {return Foundation.asinh(self)}
  @inlinable public func atan() -> Double {return Foundation.atan(self)}
  @inlinable public func atanh() -> Double {return Foundation.atanh(self)}
  @inlinable public func cbrt() -> Double {return Foundation.cbrt(self)}
  @inlinable public func cos() -> Double {return Foundation.cos(self)}
  @inlinable public func cosh() -> Double {return Foundation.cosh(self)}
  @inlinable public func erf() -> Double {return Foundation.erf(self)}
  @inlinable public func erfc() -> Double {return Foundation.erfc(self)}
  @inlinable public func exp() -> Double {return Foundation.exp(self)}
  @inlinable public func exp2() -> Double {return Foundation.exp2(self)}
  @inlinable public func expm1() -> Double {return Foundation.expm1(self)}
  @inlinable public func log() -> Double {return Foundation.log(self)}
  @inlinable public func log10() -> Double {return Foundation.log10(self)}
  @inlinable public func log1p() -> Double {return Foundation.log1p(self)}
  @inlinable public func log2() -> Double {return Foundation.log2(self)}
  @inlinable public func logb() -> Double {return Foundation.logb(self)}
  @inlinable public func nearbyint() -> Double {return Foundation.nearbyint(self)}
  @inlinable public func rint() -> Double {return Foundation.rint(self)}
  @inlinable public func sin() -> Double {return Foundation.sin(self)}
  @inlinable public func sinh() -> Double {return Foundation.sinh(self)}
  @inlinable public func tan() -> Double {return Foundation.tan(self)}
  @inlinable public func tanh() -> Double {return Foundation.tanh(self)}
  @inlinable public func tgamma() -> Double {return Foundation.tgamma(self)}

  @inlinable public func min(_ b: Double) -> Double {return Swift.min(self, b)}
  @inlinable public func max(_ b: Double) -> Double {return Swift.max(self, b)}

  @inlinable public func abs() -> Double {return Swift.abs(self)}

  @inlinable public func pow(_ b: Double) -> Double {return Foundation.pow(self, b)}
  @inlinable public func atan2(_ b: Double) -> Double {return Foundation.atan2(self, b)}
  @inlinable public func copysign(_ b: Double) -> Double {return Foundation.copysign(self, b)}
  @inlinable public func fdim(_ b: Double) -> Double {return Foundation.fdim(self, b)}
  @inlinable public func fmax(_ b: Double) -> Double {return Foundation.fmax(self, b)}
  @inlinable public func fmin(_ b: Double) -> Double {return Foundation.fmin(self, b)}
  @inlinable public func hypot(_ b: Double) -> Double {return Foundation.hypot(self, b)}
  @inlinable public func nextafter(_ b: Double) -> Double {return Foundation.nextafter(self, b)}

  @inlinable public static func sum(_ a:PtrT, _ n:Int32) -> Element { return smSum_double(a, n) }
  @inlinable public static func sumabs(_ a:PtrT, _ n:Int32)->Element { return smSum_abs_double(a, n) }
  @inlinable public static func sumsqrt(_ a:PtrT, _ n:Int32)->Element { return smSum_sqrt_double(a, n) }
  @inlinable public static func sumacos(_ a:PtrT, _ n:Int32)->Element { return smSum_acos_double(a, n) }
  @inlinable public static func sumacosh(_ a:PtrT, _ n:Int32)->Element { return smSum_acosh_double(a, n) }
  @inlinable public static func sumasin(_ a:PtrT, _ n:Int32)->Element { return smSum_asin_double(a, n) }
  @inlinable public static func sumasinh(_ a:PtrT, _ n:Int32)->Element { return smSum_asinh_double(a, n) }
  @inlinable public static func sumatan(_ a:PtrT, _ n:Int32)->Element { return smSum_atan_double(a, n) }
  @inlinable public static func sumatanh(_ a:PtrT, _ n:Int32)->Element { return smSum_atanh_double(a, n) }
  @inlinable public static func sumcbrt(_ a:PtrT, _ n:Int32)->Element { return smSum_cbrt_double(a, n) }
  @inlinable public static func sumcos(_ a:PtrT, _ n:Int32)->Element { return smSum_cos_double(a, n) }
  @inlinable public static func sumcosh(_ a:PtrT, _ n:Int32)->Element { return smSum_cosh_double(a, n) }
  @inlinable public static func sumerf(_ a:PtrT, _ n:Int32)->Element { return smSum_erf_double(a, n) }
  @inlinable public static func sumerfc(_ a:PtrT, _ n:Int32)->Element { return smSum_erfc_double(a, n) }
  @inlinable public static func sumexp(_ a:PtrT, _ n:Int32)->Element { return smSum_exp_double(a, n) }
  @inlinable public static func sumexp2(_ a:PtrT, _ n:Int32)->Element { return smSum_exp2_double(a, n) }
  @inlinable public static func sumexpm1(_ a:PtrT, _ n:Int32)->Element { return smSum_expm1_double(a, n) }
  @inlinable public static func sumlog(_ a:PtrT, _ n:Int32)->Element { return smSum_log_double(a, n) }
  @inlinable public static func sumlog10(_ a:PtrT, _ n:Int32)->Element { return smSum_log10_double(a, n) }
  @inlinable public static func sumlog1p(_ a:PtrT, _ n:Int32)->Element { return smSum_log1p_double(a, n) }
  @inlinable public static func sumlog2(_ a:PtrT, _ n:Int32)->Element { return smSum_log2_double(a, n) }
  @inlinable public static func sumlogb(_ a:PtrT, _ n:Int32)->Element { return smSum_logb_double(a, n) }
  @inlinable public static func sumnearbyint(_ a:PtrT, _ n:Int32)->Element { return smSum_nearbyint_double(a, n) }
  @inlinable public static func sumrint(_ a:PtrT, _ n:Int32)->Element { return smSum_rint_double(a, n) }
  @inlinable public static func sumsin(_ a:PtrT, _ n:Int32)->Element { return smSum_sin_double(a, n) }
  @inlinable public static func sumsinh(_ a:PtrT, _ n:Int32)->Element { return smSum_sinh_double(a, n) }
  @inlinable public static func sumtan(_ a:PtrT, _ n:Int32)->Element { return smSum_tan_double(a, n) }
  @inlinable public static func sumtanh(_ a:PtrT, _ n:Int32)->Element { return smSum_tanh_double(a, n) }
  @inlinable public static func sumtgamma(_ a:PtrT, _ n:Int32)->Element { return smSum_tgamma_double(a, n) }
  @inlinable public static func sumsqr(_ a:PtrT, _ n:Int32)->Element { return smSum_sqr_double(a, n) }

  public static func ^^(x:Double, a:Double) -> Double { return x.pow(a) }
}

