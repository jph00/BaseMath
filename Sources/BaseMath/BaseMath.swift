import Foundation
import CBaseMath


precedencegroup ExponentiationPrecedence { associativity: right higherThan: MultiplicationPrecedence }
infix operator ^^: ExponentiationPrecedence

public protocol SupportsBasicMath:BinaryFloatingPoint {
  typealias Element=Self
  typealias PtrT = UnsafePointer<Element> 
  typealias MutPtrT = UnsafeMutablePointer<Element>
  init(_ value: Self)
  init()

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

  func abs() -> Self
  static func sum(_ a:PtrT, _ n:Int32) -> Element

  static func ^^(x:Self, a:Self) -> Self
}

extension Float : SupportsBasicMath {
  @inlinable public func add(_ b: Float) -> Float {return self + b}
  @inlinable public func sub(_ b: Float) -> Float {return self - b}
  @inlinable public func mul(_ b: Float) -> Float {return self * b}
  @inlinable public func div(_ b: Float) -> Float {return self / b}

  @inlinable public func subRev(_ b: Float) -> Float {return b - self}
  @inlinable public func divRev(_ b: Float) -> Float {return b / self}

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

  public static func ^^(x:Float, a:Float) -> Float { return x.pow(a) }
}
extension Double : SupportsBasicMath {
  @inlinable public func add(_ b: Double) -> Double {return self + b}
  @inlinable public func sub(_ b: Double) -> Double {return self - b}
  @inlinable public func mul(_ b: Double) -> Double {return self * b}
  @inlinable public func div(_ b: Double) -> Double {return self / b}

  @inlinable public func subRev(_ b: Double) -> Double {return b - self}
  @inlinable public func divRev(_ b: Double) -> Double {return b / self}

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

  public static func ^^(x:Double, a:Double) -> Double { return x.pow(a) }
}

