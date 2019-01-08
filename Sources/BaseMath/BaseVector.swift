import Foundation


extension SupportsBasicMath {
  @inlinable public static func add(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].add(pSrc2[i]) } }
  @inlinable public static func add(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].add(val     ) } }
  @inlinable public static func sub(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].sub(pSrc2[i]) } }
  @inlinable public static func sub(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].sub(val     ) } }
  @inlinable public static func mul(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].mul(pSrc2[i]) } }
  @inlinable public static func mul(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].mul(val     ) } }
  @inlinable public static func div(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].div(pSrc2[i]) } }
  @inlinable public static func div(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].div(val     ) } }
  @inlinable public static func subRev(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].subRev(pSrc2[i]) } }
  @inlinable public static func subRev(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].subRev(val     ) } }
  @inlinable public static func divRev(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].divRev(pSrc2[i]) } }
  @inlinable public static func divRev(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].divRev(val     ) } }
  @inlinable public static func min(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].min(pSrc2[i]) } }
  @inlinable public static func min(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].min(val     ) } }
  @inlinable public static func max(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].max(pSrc2[i]) } }
  @inlinable public static func max(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].max(val     ) } }
  @inlinable public static func pow(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].pow(pSrc2[i]) } }
  @inlinable public static func pow(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].pow(val     ) } }
  @inlinable public static func atan2(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].atan2(pSrc2[i]) } }
  @inlinable public static func atan2(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].atan2(val     ) } }
  @inlinable public static func copysign(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].copysign(pSrc2[i]) } }
  @inlinable public static func copysign(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].copysign(val     ) } }
  @inlinable public static func fdim(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fdim(pSrc2[i]) } }
  @inlinable public static func fdim(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fdim(val     ) } }
  @inlinable public static func fmax(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fmax(pSrc2[i]) } }
  @inlinable public static func fmax(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fmax(val     ) } }
  @inlinable public static func fmin(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fmin(pSrc2[i]) } }
  @inlinable public static func fmin(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].fmin(val     ) } }
  @inlinable public static func hypot(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].hypot(pSrc2[i]) } }
  @inlinable public static func hypot(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].hypot(val     ) } }
  @inlinable public static func nextafter(_ n:Int, _ pSrc:PtrT, _ pSrc2:PtrT,  _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].nextafter(pSrc2[i]) } }
  @inlinable public static func nextafter(_ n:Int, _ pSrc:PtrT, _ val:Element, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].nextafter(val     ) } }
  @inlinable public static func abs(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].abs() } }
  @inlinable public static func acos(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].acos() } }
  @inlinable public static func acosh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].acosh() } }
  @inlinable public static func asin(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].asin() } }
  @inlinable public static func asinh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].asinh() } }
  @inlinable public static func atan(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].atan() } }
  @inlinable public static func atanh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].atanh() } }
  @inlinable public static func cbrt(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].cbrt() } }
  @inlinable public static func cos(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].cos() } }
  @inlinable public static func cosh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].cosh() } }
  @inlinable public static func erf(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].erf() } }
  @inlinable public static func erfc(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].erfc() } }
  @inlinable public static func exp(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].exp() } }
  @inlinable public static func exp2(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].exp2() } }
  @inlinable public static func expm1(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].expm1() } }
  @inlinable public static func log(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].log() } }
  @inlinable public static func log10(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].log10() } }
  @inlinable public static func log1p(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].log1p() } }
  @inlinable public static func log2(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].log2() } }
  @inlinable public static func logb(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].logb() } }
  @inlinable public static func nearbyint(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].nearbyint() } }
  @inlinable public static func rint(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].rint() } }
  @inlinable public static func sin(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].sin() } }
  @inlinable public static func sinh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].sinh() } }
  @inlinable public static func tan(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].tan() } }
  @inlinable public static func tanh(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].tanh() } }
  @inlinable public static func tgamma(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].tgamma() } }
}

public protocol BaseVector: RandomAccessCollection, MutableCollection, ExpressibleByArrayLiteral, Equatable
  where Index==Int, Element:SupportsBasicMath {
  typealias PtrT = UnsafePointer<Element>
  typealias MutPtrT = UnsafeMutablePointer<Element>

  init(_ data:Array<Element>)
  init(_ count:Int)

  func new(_ size:Int)->Self
  func copy()->Self
  var p:MutPtrT {get}

  func add(_ b: Self, _ dest:Self)
  func add_(_ b:Self)
  func sumadd(_ b:Self)->Element
  func sub(_ b: Self, _ dest:Self)
  func sub_(_ b:Self)
  func sumsub(_ b:Self)->Element
  func mul(_ b: Self, _ dest:Self)
  func mul_(_ b:Self)
  func summul(_ b:Self)->Element
  func div(_ b: Self, _ dest:Self)
  func div_(_ b:Self)
  func sumdiv(_ b:Self)->Element
  func subRev(_ b: Self, _ dest:Self)
  func subRev_(_ b:Self)
  func sumsubRev(_ b:Self)->Element
  func divRev(_ b: Self, _ dest:Self)
  func divRev_(_ b:Self)
  func sumdivRev(_ b:Self)->Element
  func min(_ b: Self, _ dest:Self)
  func min_(_ b:Self)
  func summin(_ b:Self)->Element
  func max(_ b: Self, _ dest:Self)
  func max_(_ b:Self)
  func summax(_ b:Self)->Element
  func pow(_ b: Self, _ dest:Self)
  func pow_(_ b:Self)
  func sumpow(_ b:Self)->Element
  func atan2(_ b: Self, _ dest:Self)
  func atan2_(_ b:Self)
  func sumatan2(_ b:Self)->Element
  func copysign(_ b: Self, _ dest:Self)
  func copysign_(_ b:Self)
  func sumcopysign(_ b:Self)->Element
  func fdim(_ b: Self, _ dest:Self)
  func fdim_(_ b:Self)
  func sumfdim(_ b:Self)->Element
  func fmax(_ b: Self, _ dest:Self)
  func fmax_(_ b:Self)
  func sumfmax(_ b:Self)->Element
  func fmin(_ b: Self, _ dest:Self)
  func fmin_(_ b:Self)
  func sumfmin(_ b:Self)->Element
  func hypot(_ b: Self, _ dest:Self)
  func hypot_(_ b:Self)
  func sumhypot(_ b:Self)->Element
  func nextafter(_ b: Self, _ dest:Self)
  func nextafter_(_ b:Self)
  func sumnextafter(_ b:Self)->Element

  func abs(_ dest:Self)
  func abs_()
  func sumabs()->Element
  func acos(_ dest:Self)
  func acos_()
  func sumacos()->Element
  func acosh(_ dest:Self)
  func acosh_()
  func sumacosh()->Element
  func asin(_ dest:Self)
  func asin_()
  func sumasin()->Element
  func asinh(_ dest:Self)
  func asinh_()
  func sumasinh()->Element
  func atan(_ dest:Self)
  func atan_()
  func sumatan()->Element
  func atanh(_ dest:Self)
  func atanh_()
  func sumatanh()->Element
  func cbrt(_ dest:Self)
  func cbrt_()
  func sumcbrt()->Element
  func cos(_ dest:Self)
  func cos_()
  func sumcos()->Element
  func cosh(_ dest:Self)
  func cosh_()
  func sumcosh()->Element
  func erf(_ dest:Self)
  func erf_()
  func sumerf()->Element
  func erfc(_ dest:Self)
  func erfc_()
  func sumerfc()->Element
  func exp(_ dest:Self)
  func exp_()
  func sumexp()->Element
  func exp2(_ dest:Self)
  func exp2_()
  func sumexp2()->Element
  func expm1(_ dest:Self)
  func expm1_()
  func sumexpm1()->Element
  func log(_ dest:Self)
  func log_()
  func sumlog()->Element
  func log10(_ dest:Self)
  func log10_()
  func sumlog10()->Element
  func log1p(_ dest:Self)
  func log1p_()
  func sumlog1p()->Element
  func log2(_ dest:Self)
  func log2_()
  func sumlog2()->Element
  func logb(_ dest:Self)
  func logb_()
  func sumlogb()->Element
  func nearbyint(_ dest:Self)
  func nearbyint_()
  func sumnearbyint()->Element
  func rint(_ dest:Self)
  func rint_()
  func sumrint()->Element
  func sin(_ dest:Self)
  func sin_()
  func sumsin()->Element
  func sinh(_ dest:Self)
  func sinh_()
  func sumsinh()->Element
  func tan(_ dest:Self)
  func tan_()
  func sumtan()->Element
  func tanh(_ dest:Self)
  func tanh_()
  func sumtanh()->Element
  func tgamma(_ dest:Self)
  func tgamma_()
  func sumtgamma()->Element

  func sum() -> Element
}

extension BaseVector {
  public init(arrayLiteral data: Element...) { self.init(data) }
  public var indices: Range<Int> { return 0..<endIndex }
  public var startIndex: Int { return 0 }

  public func new(_ size:Int)->Self { return .init(size) }
  public func new()  -> Self { return new(count) }
  public var c:Int {get {return count}}

  public static func ==(lhs:Self, rhs:Self) -> Bool { return lhs.elementsEqual(rhs) }
  public static func ==(lhs:Array<Element>, rhs:Self) -> Bool { return self.init(lhs) == rhs }
  public static func ==(lhs:Self, rhs:Array<Element>) -> Bool { return lhs == self.init(rhs) }

  @inlinable public func new_call(_ f:(Self)         ->()              )->Self { let res = new(); f(      res); return res }
  @inlinable public func new_call(_ f:(Self, Self)   ->(), _ b:Self    )->Self { let res = new(); f(b,    res); return res }
  @inlinable public func new_call<T>(_ f:(T, Self)   ->(), _ b:T       )->Self { let res = new(); f(b,    res); return res }
  @inlinable public func new_call<T>(_ f:(T, T, Self)->(), _ b:T, _ c:T)->Self { let res = new(); f(b, c, res); return res }
  @inlinable public func new_call<T>(_ f:(T, Self)->(), _ b:T, n:Int   )->Self { let res = new(n); f(b, res);   return res }
  @inlinable public func new_call<T>(_ f:(T, T, Self)->(), _ b:T, _ c:T, n:Int)->Self { let res = new(n); f(b, c, res); return res }

  @inlinable public func sum() -> Element { return Element.sum(p, numericCast(c)) }

  @inlinable public func add (_ b:Self)->Self { return new_call(add, b) }
  @inlinable public func add(_ b: Self, _ dest:Self) { Element.add(c, self.p, b.p, dest.p) }
  @inlinable public func add_(_ b: Self) { add(b, self) }
  @inlinable public func add (_ b:Element)->Self { return new_call(add, b) }
  @inlinable public func add(_ b: Element, _ dest:Self) { Element.add(c, self.p, b, dest.p) }
  @inlinable public func add_(_ b: Element) { add(b, self) }

  @inlinable public func sumadd(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].add(pb[i]) }
    return r
  }
  @inlinable public func sub (_ b:Self)->Self { return new_call(sub, b) }
  @inlinable public func sub(_ b: Self, _ dest:Self) { Element.sub(c, self.p, b.p, dest.p) }
  @inlinable public func sub_(_ b: Self) { sub(b, self) }
  @inlinable public func sub (_ b:Element)->Self { return new_call(sub, b) }
  @inlinable public func sub(_ b: Element, _ dest:Self) { Element.sub(c, self.p, b, dest.p) }
  @inlinable public func sub_(_ b: Element) { sub(b, self) }

  @inlinable public func sumsub(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].sub(pb[i]) }
    return r
  }
  @inlinable public func mul (_ b:Self)->Self { return new_call(mul, b) }
  @inlinable public func mul(_ b: Self, _ dest:Self) { Element.mul(c, self.p, b.p, dest.p) }
  @inlinable public func mul_(_ b: Self) { mul(b, self) }
  @inlinable public func mul (_ b:Element)->Self { return new_call(mul, b) }
  @inlinable public func mul(_ b: Element, _ dest:Self) { Element.mul(c, self.p, b, dest.p) }
  @inlinable public func mul_(_ b: Element) { mul(b, self) }

  @inlinable public func summul(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].mul(pb[i]) }
    return r
  }
  @inlinable public func div (_ b:Self)->Self { return new_call(div, b) }
  @inlinable public func div(_ b: Self, _ dest:Self) { Element.div(c, self.p, b.p, dest.p) }
  @inlinable public func div_(_ b: Self) { div(b, self) }
  @inlinable public func div (_ b:Element)->Self { return new_call(div, b) }
  @inlinable public func div(_ b: Element, _ dest:Self) { Element.div(c, self.p, b, dest.p) }
  @inlinable public func div_(_ b: Element) { div(b, self) }

  @inlinable public func sumdiv(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].div(pb[i]) }
    return r
  }
  @inlinable public func subRev (_ b:Self)->Self { return new_call(subRev, b) }
  @inlinable public func subRev(_ b: Self, _ dest:Self) { Element.subRev(c, self.p, b.p, dest.p) }
  @inlinable public func subRev_(_ b: Self) { subRev(b, self) }
  @inlinable public func subRev (_ b:Element)->Self { return new_call(subRev, b) }
  @inlinable public func subRev(_ b: Element, _ dest:Self) { Element.subRev(c, self.p, b, dest.p) }
  @inlinable public func subRev_(_ b: Element) { subRev(b, self) }

  @inlinable public func sumsubRev(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].subRev(pb[i]) }
    return r
  }
  @inlinable public func divRev (_ b:Self)->Self { return new_call(divRev, b) }
  @inlinable public func divRev(_ b: Self, _ dest:Self) { Element.divRev(c, self.p, b.p, dest.p) }
  @inlinable public func divRev_(_ b: Self) { divRev(b, self) }
  @inlinable public func divRev (_ b:Element)->Self { return new_call(divRev, b) }
  @inlinable public func divRev(_ b: Element, _ dest:Self) { Element.divRev(c, self.p, b, dest.p) }
  @inlinable public func divRev_(_ b: Element) { divRev(b, self) }

  @inlinable public func sumdivRev(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].divRev(pb[i]) }
    return r
  }
  @inlinable public func min (_ b:Self)->Self { return new_call(min, b) }
  @inlinable public func min(_ b: Self, _ dest:Self) { Element.min(c, self.p, b.p, dest.p) }
  @inlinable public func min_(_ b: Self) { min(b, self) }
  @inlinable public func min (_ b:Element)->Self { return new_call(min, b) }
  @inlinable public func min(_ b: Element, _ dest:Self) { Element.min(c, self.p, b, dest.p) }
  @inlinable public func min_(_ b: Element) { min(b, self) }

  @inlinable public func summin(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].min(pb[i]) }
    return r
  }
  @inlinable public func max (_ b:Self)->Self { return new_call(max, b) }
  @inlinable public func max(_ b: Self, _ dest:Self) { Element.max(c, self.p, b.p, dest.p) }
  @inlinable public func max_(_ b: Self) { max(b, self) }
  @inlinable public func max (_ b:Element)->Self { return new_call(max, b) }
  @inlinable public func max(_ b: Element, _ dest:Self) { Element.max(c, self.p, b, dest.p) }
  @inlinable public func max_(_ b: Element) { max(b, self) }

  @inlinable public func summax(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].max(pb[i]) }
    return r
  }
  @inlinable public func pow (_ b:Self)->Self { return new_call(pow, b) }
  @inlinable public func pow(_ b: Self, _ dest:Self) { Element.pow(c, self.p, b.p, dest.p) }
  @inlinable public func pow_(_ b: Self) { pow(b, self) }
  @inlinable public func pow (_ b:Element)->Self { return new_call(pow, b) }
  @inlinable public func pow(_ b: Element, _ dest:Self) { Element.pow(c, self.p, b, dest.p) }
  @inlinable public func pow_(_ b: Element) { pow(b, self) }

  @inlinable public func sumpow(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].pow(pb[i]) }
    return r
  }
  @inlinable public func atan2 (_ b:Self)->Self { return new_call(atan2, b) }
  @inlinable public func atan2(_ b: Self, _ dest:Self) { Element.atan2(c, self.p, b.p, dest.p) }
  @inlinable public func atan2_(_ b: Self) { atan2(b, self) }
  @inlinable public func atan2 (_ b:Element)->Self { return new_call(atan2, b) }
  @inlinable public func atan2(_ b: Element, _ dest:Self) { Element.atan2(c, self.p, b, dest.p) }
  @inlinable public func atan2_(_ b: Element) { atan2(b, self) }

  @inlinable public func sumatan2(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].atan2(pb[i]) }
    return r
  }
  @inlinable public func copysign (_ b:Self)->Self { return new_call(copysign, b) }
  @inlinable public func copysign(_ b: Self, _ dest:Self) { Element.copysign(c, self.p, b.p, dest.p) }
  @inlinable public func copysign_(_ b: Self) { copysign(b, self) }
  @inlinable public func copysign (_ b:Element)->Self { return new_call(copysign, b) }
  @inlinable public func copysign(_ b: Element, _ dest:Self) { Element.copysign(c, self.p, b, dest.p) }
  @inlinable public func copysign_(_ b: Element) { copysign(b, self) }

  @inlinable public func sumcopysign(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].copysign(pb[i]) }
    return r
  }
  @inlinable public func fdim (_ b:Self)->Self { return new_call(fdim, b) }
  @inlinable public func fdim(_ b: Self, _ dest:Self) { Element.fdim(c, self.p, b.p, dest.p) }
  @inlinable public func fdim_(_ b: Self) { fdim(b, self) }
  @inlinable public func fdim (_ b:Element)->Self { return new_call(fdim, b) }
  @inlinable public func fdim(_ b: Element, _ dest:Self) { Element.fdim(c, self.p, b, dest.p) }
  @inlinable public func fdim_(_ b: Element) { fdim(b, self) }

  @inlinable public func sumfdim(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].fdim(pb[i]) }
    return r
  }
  @inlinable public func fmax (_ b:Self)->Self { return new_call(fmax, b) }
  @inlinable public func fmax(_ b: Self, _ dest:Self) { Element.fmax(c, self.p, b.p, dest.p) }
  @inlinable public func fmax_(_ b: Self) { fmax(b, self) }
  @inlinable public func fmax (_ b:Element)->Self { return new_call(fmax, b) }
  @inlinable public func fmax(_ b: Element, _ dest:Self) { Element.fmax(c, self.p, b, dest.p) }
  @inlinable public func fmax_(_ b: Element) { fmax(b, self) }

  @inlinable public func sumfmax(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].fmax(pb[i]) }
    return r
  }
  @inlinable public func fmin (_ b:Self)->Self { return new_call(fmin, b) }
  @inlinable public func fmin(_ b: Self, _ dest:Self) { Element.fmin(c, self.p, b.p, dest.p) }
  @inlinable public func fmin_(_ b: Self) { fmin(b, self) }
  @inlinable public func fmin (_ b:Element)->Self { return new_call(fmin, b) }
  @inlinable public func fmin(_ b: Element, _ dest:Self) { Element.fmin(c, self.p, b, dest.p) }
  @inlinable public func fmin_(_ b: Element) { fmin(b, self) }

  @inlinable public func sumfmin(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].fmin(pb[i]) }
    return r
  }
  @inlinable public func hypot (_ b:Self)->Self { return new_call(hypot, b) }
  @inlinable public func hypot(_ b: Self, _ dest:Self) { Element.hypot(c, self.p, b.p, dest.p) }
  @inlinable public func hypot_(_ b: Self) { hypot(b, self) }
  @inlinable public func hypot (_ b:Element)->Self { return new_call(hypot, b) }
  @inlinable public func hypot(_ b: Element, _ dest:Self) { Element.hypot(c, self.p, b, dest.p) }
  @inlinable public func hypot_(_ b: Element) { hypot(b, self) }

  @inlinable public func sumhypot(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].hypot(pb[i]) }
    return r
  }
  @inlinable public func nextafter (_ b:Self)->Self { return new_call(nextafter, b) }
  @inlinable public func nextafter(_ b: Self, _ dest:Self) { Element.nextafter(c, self.p, b.p, dest.p) }
  @inlinable public func nextafter_(_ b: Self) { nextafter(b, self) }
  @inlinable public func nextafter (_ b:Element)->Self { return new_call(nextafter, b) }
  @inlinable public func nextafter(_ b: Element, _ dest:Self) { Element.nextafter(c, self.p, b, dest.p) }
  @inlinable public func nextafter_(_ b: Element) { nextafter(b, self) }

  @inlinable public func sumnextafter(_ b: Self)->Element {
    var r:Element = 0.0; let pb=b.p; let ptr=p
    for i in 0..<count { r += ptr[i].nextafter(pb[i]) }
    return r
  }

  @inlinable public func abs ()->Self { return new_call(abs) }
  @inlinable public func abs(_ dest:Self) { Element.abs(c, self.p, dest.p) }
  @inlinable public func abs_() { abs(self) }

  @inlinable public func sumabs()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].abs() }
    return r
  }
  @inlinable public func acos ()->Self { return new_call(acos) }
  @inlinable public func acos(_ dest:Self) { Element.acos(c, self.p, dest.p) }
  @inlinable public func acos_() { acos(self) }

  @inlinable public func sumacos()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].acos() }
    return r
  }
  @inlinable public func acosh ()->Self { return new_call(acosh) }
  @inlinable public func acosh(_ dest:Self) { Element.acosh(c, self.p, dest.p) }
  @inlinable public func acosh_() { acosh(self) }

  @inlinable public func sumacosh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].acosh() }
    return r
  }
  @inlinable public func asin ()->Self { return new_call(asin) }
  @inlinable public func asin(_ dest:Self) { Element.asin(c, self.p, dest.p) }
  @inlinable public func asin_() { asin(self) }

  @inlinable public func sumasin()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].asin() }
    return r
  }
  @inlinable public func asinh ()->Self { return new_call(asinh) }
  @inlinable public func asinh(_ dest:Self) { Element.asinh(c, self.p, dest.p) }
  @inlinable public func asinh_() { asinh(self) }

  @inlinable public func sumasinh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].asinh() }
    return r
  }
  @inlinable public func atan ()->Self { return new_call(atan) }
  @inlinable public func atan(_ dest:Self) { Element.atan(c, self.p, dest.p) }
  @inlinable public func atan_() { atan(self) }

  @inlinable public func sumatan()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].atan() }
    return r
  }
  @inlinable public func atanh ()->Self { return new_call(atanh) }
  @inlinable public func atanh(_ dest:Self) { Element.atanh(c, self.p, dest.p) }
  @inlinable public func atanh_() { atanh(self) }

  @inlinable public func sumatanh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].atanh() }
    return r
  }
  @inlinable public func cbrt ()->Self { return new_call(cbrt) }
  @inlinable public func cbrt(_ dest:Self) { Element.cbrt(c, self.p, dest.p) }
  @inlinable public func cbrt_() { cbrt(self) }

  @inlinable public func sumcbrt()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].cbrt() }
    return r
  }
  @inlinable public func cos ()->Self { return new_call(cos) }
  @inlinable public func cos(_ dest:Self) { Element.cos(c, self.p, dest.p) }
  @inlinable public func cos_() { cos(self) }

  @inlinable public func sumcos()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].cos() }
    return r
  }
  @inlinable public func cosh ()->Self { return new_call(cosh) }
  @inlinable public func cosh(_ dest:Self) { Element.cosh(c, self.p, dest.p) }
  @inlinable public func cosh_() { cosh(self) }

  @inlinable public func sumcosh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].cosh() }
    return r
  }
  @inlinable public func erf ()->Self { return new_call(erf) }
  @inlinable public func erf(_ dest:Self) { Element.erf(c, self.p, dest.p) }
  @inlinable public func erf_() { erf(self) }

  @inlinable public func sumerf()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].erf() }
    return r
  }
  @inlinable public func erfc ()->Self { return new_call(erfc) }
  @inlinable public func erfc(_ dest:Self) { Element.erfc(c, self.p, dest.p) }
  @inlinable public func erfc_() { erfc(self) }

  @inlinable public func sumerfc()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].erfc() }
    return r
  }
  @inlinable public func exp ()->Self { return new_call(exp) }
  @inlinable public func exp(_ dest:Self) { Element.exp(c, self.p, dest.p) }
  @inlinable public func exp_() { exp(self) }

  @inlinable public func sumexp()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].exp() }
    return r
  }
  @inlinable public func exp2 ()->Self { return new_call(exp2) }
  @inlinable public func exp2(_ dest:Self) { Element.exp2(c, self.p, dest.p) }
  @inlinable public func exp2_() { exp2(self) }

  @inlinable public func sumexp2()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].exp2() }
    return r
  }
  @inlinable public func expm1 ()->Self { return new_call(expm1) }
  @inlinable public func expm1(_ dest:Self) { Element.expm1(c, self.p, dest.p) }
  @inlinable public func expm1_() { expm1(self) }

  @inlinable public func sumexpm1()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].expm1() }
    return r
  }
  @inlinable public func log ()->Self { return new_call(log) }
  @inlinable public func log(_ dest:Self) { Element.log(c, self.p, dest.p) }
  @inlinable public func log_() { log(self) }

  @inlinable public func sumlog()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].log() }
    return r
  }
  @inlinable public func log10 ()->Self { return new_call(log10) }
  @inlinable public func log10(_ dest:Self) { Element.log10(c, self.p, dest.p) }
  @inlinable public func log10_() { log10(self) }

  @inlinable public func sumlog10()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].log10() }
    return r
  }
  @inlinable public func log1p ()->Self { return new_call(log1p) }
  @inlinable public func log1p(_ dest:Self) { Element.log1p(c, self.p, dest.p) }
  @inlinable public func log1p_() { log1p(self) }

  @inlinable public func sumlog1p()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].log1p() }
    return r
  }
  @inlinable public func log2 ()->Self { return new_call(log2) }
  @inlinable public func log2(_ dest:Self) { Element.log2(c, self.p, dest.p) }
  @inlinable public func log2_() { log2(self) }

  @inlinable public func sumlog2()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].log2() }
    return r
  }
  @inlinable public func logb ()->Self { return new_call(logb) }
  @inlinable public func logb(_ dest:Self) { Element.logb(c, self.p, dest.p) }
  @inlinable public func logb_() { logb(self) }

  @inlinable public func sumlogb()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].logb() }
    return r
  }
  @inlinable public func nearbyint ()->Self { return new_call(nearbyint) }
  @inlinable public func nearbyint(_ dest:Self) { Element.nearbyint(c, self.p, dest.p) }
  @inlinable public func nearbyint_() { nearbyint(self) }

  @inlinable public func sumnearbyint()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].nearbyint() }
    return r
  }
  @inlinable public func rint ()->Self { return new_call(rint) }
  @inlinable public func rint(_ dest:Self) { Element.rint(c, self.p, dest.p) }
  @inlinable public func rint_() { rint(self) }

  @inlinable public func sumrint()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].rint() }
    return r
  }
  @inlinable public func sin ()->Self { return new_call(sin) }
  @inlinable public func sin(_ dest:Self) { Element.sin(c, self.p, dest.p) }
  @inlinable public func sin_() { sin(self) }

  @inlinable public func sumsin()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].sin() }
    return r
  }
  @inlinable public func sinh ()->Self { return new_call(sinh) }
  @inlinable public func sinh(_ dest:Self) { Element.sinh(c, self.p, dest.p) }
  @inlinable public func sinh_() { sinh(self) }

  @inlinable public func sumsinh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].sinh() }
    return r
  }
  @inlinable public func tan ()->Self { return new_call(tan) }
  @inlinable public func tan(_ dest:Self) { Element.tan(c, self.p, dest.p) }
  @inlinable public func tan_() { tan(self) }

  @inlinable public func sumtan()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].tan() }
    return r
  }
  @inlinable public func tanh ()->Self { return new_call(tanh) }
  @inlinable public func tanh(_ dest:Self) { Element.tanh(c, self.p, dest.p) }
  @inlinable public func tanh_() { tanh(self) }

  @inlinable public func sumtanh()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].tanh() }
    return r
  }
  @inlinable public func tgamma ()->Self { return new_call(tgamma) }
  @inlinable public func tgamma(_ dest:Self) { Element.tgamma(c, self.p, dest.p) }
  @inlinable public func tgamma_() { tgamma(self) }

  @inlinable public func sumtgamma()->Element {
    var r:Element = 0.0; let ptr=p
    for i in 0..<count { r += ptr[i].tgamma() }
    return r
  }

  @inlinable public static func +  (lhs:Self, rhs:Self) -> Self { return lhs.add( rhs) }
  @inlinable public static func += (lhs:Self, rhs:Self)         {        lhs.add_(rhs) }
  @inlinable public static func +  (lhs:Self, rhs:Element) -> Self { return lhs.add( rhs) }
  @inlinable public static func += (lhs:Self, rhs:Element)         {        lhs.add_(rhs) }
  @inlinable public static func -  (lhs:Self, rhs:Self) -> Self { return lhs.sub( rhs) }
  @inlinable public static func -= (lhs:Self, rhs:Self)         {        lhs.sub_(rhs) }
  @inlinable public static func -  (lhs:Self, rhs:Element) -> Self { return lhs.sub( rhs) }
  @inlinable public static func -= (lhs:Self, rhs:Element)         {        lhs.sub_(rhs) }
  @inlinable public static func *  (lhs:Self, rhs:Self) -> Self { return lhs.mul( rhs) }
  @inlinable public static func *= (lhs:Self, rhs:Self)         {        lhs.mul_(rhs) }
  @inlinable public static func *  (lhs:Self, rhs:Element) -> Self { return lhs.mul( rhs) }
  @inlinable public static func *= (lhs:Self, rhs:Element)         {        lhs.mul_(rhs) }
  @inlinable public static func /  (lhs:Self, rhs:Self) -> Self { return lhs.div( rhs) }
  @inlinable public static func /= (lhs:Self, rhs:Self)         {        lhs.div_(rhs) }
  @inlinable public static func /  (lhs:Self, rhs:Element) -> Self { return lhs.div( rhs) }
  @inlinable public static func /= (lhs:Self, rhs:Element)         {        lhs.div_(rhs) }

  @inlinable public static func +  (lhs:Element, rhs:Self) -> Self { return rhs.add(  lhs) }
  @inlinable public static func -  (lhs:Element, rhs:Self) -> Self { return rhs.subRev(  lhs) }
  @inlinable public static func *  (lhs:Element, rhs:Self) -> Self { return rhs.mul(  lhs) }
  @inlinable public static func /  (lhs:Element, rhs:Self) -> Self { return rhs.divRev(  lhs) }
}

