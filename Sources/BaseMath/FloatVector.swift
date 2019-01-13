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
  @inlinable public static func sqrt(_ n:Int, _ pSrc:PtrT, _ pDst:MutPtrT) { for i in 0..<n { pDst[i] = pSrc[i].sqrt() } }
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

public protocol FloatVector: BaseVector where Element:SupportsBasicMath {
  func map(_ f:UnaryF, _ dest: Self)
  func map(_ f:BinaryF, _ b:Self, _ dest: Self)
  func map(_ f:TernaryF, _ b:Self, _ c:Self, _ dest: Self)

  func sum(_ f:UnaryF)->Element
  func sum(_ f:BinaryF, _ b:Self)->Element
  func sum(_ f:TernaryF, _ b:Self, _ c:Self)->Element

  func add(_ b: Self, _ dest:Self)
  func add_(_ b:Self)
  func sub(_ b: Self, _ dest:Self)
  func sub_(_ b:Self)
  func mul(_ b: Self, _ dest:Self)
  func mul_(_ b:Self)
  func div(_ b: Self, _ dest:Self)
  func div_(_ b:Self)
  func subRev(_ b: Self, _ dest:Self)
  func subRev_(_ b:Self)
  func divRev(_ b: Self, _ dest:Self)
  func divRev_(_ b:Self)
  func min(_ b: Self, _ dest:Self)
  func min_(_ b:Self)
  func max(_ b: Self, _ dest:Self)
  func max_(_ b:Self)
  func pow(_ b: Self, _ dest:Self)
  func pow_(_ b:Self)
  func atan2(_ b: Self, _ dest:Self)
  func atan2_(_ b:Self)
  func copysign(_ b: Self, _ dest:Self)
  func copysign_(_ b:Self)
  func fdim(_ b: Self, _ dest:Self)
  func fdim_(_ b:Self)
  func fmax(_ b: Self, _ dest:Self)
  func fmax_(_ b:Self)
  func fmin(_ b: Self, _ dest:Self)
  func fmin_(_ b:Self)
  func hypot(_ b: Self, _ dest:Self)
  func hypot_(_ b:Self)
  func nextafter(_ b: Self, _ dest:Self)
  func nextafter_(_ b:Self)

  func abs(_ dest:Self)
  func abs_()
  func sqrt(_ dest:Self)
  func sqrt_()
  func acos(_ dest:Self)
  func acos_()
  func acosh(_ dest:Self)
  func acosh_()
  func asin(_ dest:Self)
  func asin_()
  func asinh(_ dest:Self)
  func asinh_()
  func atan(_ dest:Self)
  func atan_()
  func atanh(_ dest:Self)
  func atanh_()
  func cbrt(_ dest:Self)
  func cbrt_()
  func cos(_ dest:Self)
  func cos_()
  func cosh(_ dest:Self)
  func cosh_()
  func erf(_ dest:Self)
  func erf_()
  func erfc(_ dest:Self)
  func erfc_()
  func exp(_ dest:Self)
  func exp_()
  func exp2(_ dest:Self)
  func exp2_()
  func expm1(_ dest:Self)
  func expm1_()
  func log(_ dest:Self)
  func log_()
  func log10(_ dest:Self)
  func log10_()
  func log1p(_ dest:Self)
  func log1p_()
  func log2(_ dest:Self)
  func log2_()
  func logb(_ dest:Self)
  func logb_()
  func nearbyint(_ dest:Self)
  func nearbyint_()
  func rint(_ dest:Self)
  func rint_()
  func sin(_ dest:Self)
  func sin_()
  func sinh(_ dest:Self)
  func sinh_()
  func tan(_ dest:Self)
  func tan_()
  func tanh(_ dest:Self)
  func tanh_()
  func tgamma(_ dest:Self)
  func tgamma_()

  func sumabs()->Element
  func sumsqrt()->Element
  func sumacos()->Element
  func sumacosh()->Element
  func sumasin()->Element
  func sumasinh()->Element
  func sumatan()->Element
  func sumatanh()->Element
  func sumcbrt()->Element
  func sumcos()->Element
  func sumcosh()->Element
  func sumerf()->Element
  func sumerfc()->Element
  func sumexp()->Element
  func sumexp2()->Element
  func sumexpm1()->Element
  func sumlog()->Element
  func sumlog10()->Element
  func sumlog1p()->Element
  func sumlog2()->Element
  func sumlogb()->Element
  func sumnearbyint()->Element
  func sumrint()->Element
  func sumsin()->Element
  func sumsinh()->Element
  func sumtan()->Element
  func sumtanh()->Element
  func sumtgamma()->Element

  func sum() -> Element
}

extension FloatVector {
  @usableFromInline var storeKey:String { get { return "FloatVector\(Element.self)" } }
  @usableFromInline var tempStore:Self { get {
    if let r = Thread.current.threadDictionary[storeKey] as? Self {
      if (r.count == count) { return r }
    }
    return Thread.setToTLS(Self(count), storeKey)
  }}

  @inlinable public func sum(_ f:UnaryF)->Element {
    self.map(f, tempStore)
    return tempStore.sum()
  }
  @inlinable public func sum(_ f:BinaryF, _ b:Self)->Element {
    self.map(f, b, tempStore)
    return tempStore.sum()
  }
  @inlinable public func sum(_ f:TernaryF, _ b:Self, _ c:Self)->Element {
    self.map(f, b, c, tempStore)
    return tempStore.sum()
  }

  @inlinable public func map<T:FloatVector>(_ f:UnaryF, _ dest:T) where Self.Element==T.Element {
    let pSrc = p; let pDest = dest.p; let n = count
    for i in 0..<n {pDest[i] = f(pSrc[i])}
  }
  @inlinable public func map(_ f:BinaryF, _ b:Self, _ dest: Self) {
    let pSrc = p; let pB = b.p; let pDest = dest.p; let n = count
    for i in 0..<n {pDest[i] = f(pSrc[i], pB[i])}
  }
  @inlinable public func map(_ f:TernaryF, _ b:Self, _ c:Self, _ dest: Self) {
    let pSrc = p; let pB = b.p; let pC = c.p; let pDest = dest.p; let n = count
    for i in 0..<n {pDest[i] = f(pSrc[i], pB[i], pC[i])}
  }

  @inlinable public func new_call(_ f:(Self)         ->()              )->Self { let res = new(); f(      res); return res }
  @inlinable public func new_call(_ f:(Self, Self)   ->(), _ b:Self    )->Self { let res = new(); f(b,    res); return res }
  @inlinable public func new_call<T>(_ f:(T, Self)   ->(), _ b:T       )->Self { let res = new(); f(b,    res); return res }
  @inlinable public func new_call<T>(_ f:(T, T, Self)->(), _ b:T, _ c:T)->Self { let res = new(); f(b, c, res); return res }
  @inlinable public func new_call<T>(_ f:(T, Self)->(), _ b:T, n:Int   )->Self { let res = new(n); f(b, res);   return res }
  @inlinable public func new_call<T>(_ f:(T, T, Self)->(), _ b:T, _ c:T, n:Int)->Self { let res = new(n); f(b, c, res); return res }

  @inlinable public func sum() -> Element { return Element.sum(p, numericCast(c)) }

  @inlinable public func sumabs()->Element { return Element.sumabs(p, numericCast(c)) }
  @inlinable public func sumsqrt()->Element { return Element.sumsqrt(p, numericCast(c)) }
  @inlinable public func sumacos()->Element { return Element.sumacos(p, numericCast(c)) }
  @inlinable public func sumacosh()->Element { return Element.sumacosh(p, numericCast(c)) }
  @inlinable public func sumasin()->Element { return Element.sumasin(p, numericCast(c)) }
  @inlinable public func sumasinh()->Element { return Element.sumasinh(p, numericCast(c)) }
  @inlinable public func sumatan()->Element { return Element.sumatan(p, numericCast(c)) }
  @inlinable public func sumatanh()->Element { return Element.sumatanh(p, numericCast(c)) }
  @inlinable public func sumcbrt()->Element { return Element.sumcbrt(p, numericCast(c)) }
  @inlinable public func sumcos()->Element { return Element.sumcos(p, numericCast(c)) }
  @inlinable public func sumcosh()->Element { return Element.sumcosh(p, numericCast(c)) }
  @inlinable public func sumerf()->Element { return Element.sumerf(p, numericCast(c)) }
  @inlinable public func sumerfc()->Element { return Element.sumerfc(p, numericCast(c)) }
  @inlinable public func sumexp()->Element { return Element.sumexp(p, numericCast(c)) }
  @inlinable public func sumexp2()->Element { return Element.sumexp2(p, numericCast(c)) }
  @inlinable public func sumexpm1()->Element { return Element.sumexpm1(p, numericCast(c)) }
  @inlinable public func sumlog()->Element { return Element.sumlog(p, numericCast(c)) }
  @inlinable public func sumlog10()->Element { return Element.sumlog10(p, numericCast(c)) }
  @inlinable public func sumlog1p()->Element { return Element.sumlog1p(p, numericCast(c)) }
  @inlinable public func sumlog2()->Element { return Element.sumlog2(p, numericCast(c)) }
  @inlinable public func sumlogb()->Element { return Element.sumlogb(p, numericCast(c)) }
  @inlinable public func sumnearbyint()->Element { return Element.sumnearbyint(p, numericCast(c)) }
  @inlinable public func sumrint()->Element { return Element.sumrint(p, numericCast(c)) }
  @inlinable public func sumsin()->Element { return Element.sumsin(p, numericCast(c)) }
  @inlinable public func sumsinh()->Element { return Element.sumsinh(p, numericCast(c)) }
  @inlinable public func sumtan()->Element { return Element.sumtan(p, numericCast(c)) }
  @inlinable public func sumtanh()->Element { return Element.sumtanh(p, numericCast(c)) }
  @inlinable public func sumtgamma()->Element { return Element.sumtgamma(p, numericCast(c)) }
  @inlinable public func sumsqr()->Element { return Element.sumsqr(p, numericCast(c)) }

  @inlinable public func add (_ b:Self)->Self { return new_call(add, b) }
  @inlinable public func add (_ b:Self, _ dest:Self) { Element.add(count, self.p, b.p, dest.p) }
  @inlinable public func add_(_ b:Self) { add(b, self) }
  @inlinable public func add (_ b:Element)->Self { return new_call(add, b) }
  @inlinable public func add (_ b:Element, _ dest:Self) { Element.add(count, self.p, b, dest.p) }
  @inlinable public func add_(_ b:Element) { add(b, self) }
  @inlinable public func sub (_ b:Self)->Self { return new_call(sub, b) }
  @inlinable public func sub (_ b:Self, _ dest:Self) { Element.sub(count, self.p, b.p, dest.p) }
  @inlinable public func sub_(_ b:Self) { sub(b, self) }
  @inlinable public func sub (_ b:Element)->Self { return new_call(sub, b) }
  @inlinable public func sub (_ b:Element, _ dest:Self) { Element.sub(count, self.p, b, dest.p) }
  @inlinable public func sub_(_ b:Element) { sub(b, self) }
  @inlinable public func mul (_ b:Self)->Self { return new_call(mul, b) }
  @inlinable public func mul (_ b:Self, _ dest:Self) { Element.mul(count, self.p, b.p, dest.p) }
  @inlinable public func mul_(_ b:Self) { mul(b, self) }
  @inlinable public func mul (_ b:Element)->Self { return new_call(mul, b) }
  @inlinable public func mul (_ b:Element, _ dest:Self) { Element.mul(count, self.p, b, dest.p) }
  @inlinable public func mul_(_ b:Element) { mul(b, self) }
  @inlinable public func div (_ b:Self)->Self { return new_call(div, b) }
  @inlinable public func div (_ b:Self, _ dest:Self) { Element.div(count, self.p, b.p, dest.p) }
  @inlinable public func div_(_ b:Self) { div(b, self) }
  @inlinable public func div (_ b:Element)->Self { return new_call(div, b) }
  @inlinable public func div (_ b:Element, _ dest:Self) { Element.div(count, self.p, b, dest.p) }
  @inlinable public func div_(_ b:Element) { div(b, self) }
  @inlinable public func subRev (_ b:Self)->Self { return new_call(subRev, b) }
  @inlinable public func subRev (_ b:Self, _ dest:Self) { Element.subRev(count, self.p, b.p, dest.p) }
  @inlinable public func subRev_(_ b:Self) { subRev(b, self) }
  @inlinable public func subRev (_ b:Element)->Self { return new_call(subRev, b) }
  @inlinable public func subRev (_ b:Element, _ dest:Self) { Element.subRev(count, self.p, b, dest.p) }
  @inlinable public func subRev_(_ b:Element) { subRev(b, self) }
  @inlinable public func divRev (_ b:Self)->Self { return new_call(divRev, b) }
  @inlinable public func divRev (_ b:Self, _ dest:Self) { Element.divRev(count, self.p, b.p, dest.p) }
  @inlinable public func divRev_(_ b:Self) { divRev(b, self) }
  @inlinable public func divRev (_ b:Element)->Self { return new_call(divRev, b) }
  @inlinable public func divRev (_ b:Element, _ dest:Self) { Element.divRev(count, self.p, b, dest.p) }
  @inlinable public func divRev_(_ b:Element) { divRev(b, self) }
  @inlinable public func min (_ b:Self)->Self { return new_call(min, b) }
  @inlinable public func min (_ b:Self, _ dest:Self) { Element.min(count, self.p, b.p, dest.p) }
  @inlinable public func min_(_ b:Self) { min(b, self) }
  @inlinable public func min (_ b:Element)->Self { return new_call(min, b) }
  @inlinable public func min (_ b:Element, _ dest:Self) { Element.min(count, self.p, b, dest.p) }
  @inlinable public func min_(_ b:Element) { min(b, self) }
  @inlinable public func max (_ b:Self)->Self { return new_call(max, b) }
  @inlinable public func max (_ b:Self, _ dest:Self) { Element.max(count, self.p, b.p, dest.p) }
  @inlinable public func max_(_ b:Self) { max(b, self) }
  @inlinable public func max (_ b:Element)->Self { return new_call(max, b) }
  @inlinable public func max (_ b:Element, _ dest:Self) { Element.max(count, self.p, b, dest.p) }
  @inlinable public func max_(_ b:Element) { max(b, self) }
  @inlinable public func pow (_ b:Self)->Self { return new_call(pow, b) }
  @inlinable public func pow (_ b:Self, _ dest:Self) { Element.pow(count, self.p, b.p, dest.p) }
  @inlinable public func pow_(_ b:Self) { pow(b, self) }
  @inlinable public func pow (_ b:Element)->Self { return new_call(pow, b) }
  @inlinable public func pow (_ b:Element, _ dest:Self) { Element.pow(count, self.p, b, dest.p) }
  @inlinable public func pow_(_ b:Element) { pow(b, self) }
  @inlinable public func atan2 (_ b:Self)->Self { return new_call(atan2, b) }
  @inlinable public func atan2 (_ b:Self, _ dest:Self) { Element.atan2(count, self.p, b.p, dest.p) }
  @inlinable public func atan2_(_ b:Self) { atan2(b, self) }
  @inlinable public func atan2 (_ b:Element)->Self { return new_call(atan2, b) }
  @inlinable public func atan2 (_ b:Element, _ dest:Self) { Element.atan2(count, self.p, b, dest.p) }
  @inlinable public func atan2_(_ b:Element) { atan2(b, self) }
  @inlinable public func copysign (_ b:Self)->Self { return new_call(copysign, b) }
  @inlinable public func copysign (_ b:Self, _ dest:Self) { Element.copysign(count, self.p, b.p, dest.p) }
  @inlinable public func copysign_(_ b:Self) { copysign(b, self) }
  @inlinable public func copysign (_ b:Element)->Self { return new_call(copysign, b) }
  @inlinable public func copysign (_ b:Element, _ dest:Self) { Element.copysign(count, self.p, b, dest.p) }
  @inlinable public func copysign_(_ b:Element) { copysign(b, self) }
  @inlinable public func fdim (_ b:Self)->Self { return new_call(fdim, b) }
  @inlinable public func fdim (_ b:Self, _ dest:Self) { Element.fdim(count, self.p, b.p, dest.p) }
  @inlinable public func fdim_(_ b:Self) { fdim(b, self) }
  @inlinable public func fdim (_ b:Element)->Self { return new_call(fdim, b) }
  @inlinable public func fdim (_ b:Element, _ dest:Self) { Element.fdim(count, self.p, b, dest.p) }
  @inlinable public func fdim_(_ b:Element) { fdim(b, self) }
  @inlinable public func fmax (_ b:Self)->Self { return new_call(fmax, b) }
  @inlinable public func fmax (_ b:Self, _ dest:Self) { Element.fmax(count, self.p, b.p, dest.p) }
  @inlinable public func fmax_(_ b:Self) { fmax(b, self) }
  @inlinable public func fmax (_ b:Element)->Self { return new_call(fmax, b) }
  @inlinable public func fmax (_ b:Element, _ dest:Self) { Element.fmax(count, self.p, b, dest.p) }
  @inlinable public func fmax_(_ b:Element) { fmax(b, self) }
  @inlinable public func fmin (_ b:Self)->Self { return new_call(fmin, b) }
  @inlinable public func fmin (_ b:Self, _ dest:Self) { Element.fmin(count, self.p, b.p, dest.p) }
  @inlinable public func fmin_(_ b:Self) { fmin(b, self) }
  @inlinable public func fmin (_ b:Element)->Self { return new_call(fmin, b) }
  @inlinable public func fmin (_ b:Element, _ dest:Self) { Element.fmin(count, self.p, b, dest.p) }
  @inlinable public func fmin_(_ b:Element) { fmin(b, self) }
  @inlinable public func hypot (_ b:Self)->Self { return new_call(hypot, b) }
  @inlinable public func hypot (_ b:Self, _ dest:Self) { Element.hypot(count, self.p, b.p, dest.p) }
  @inlinable public func hypot_(_ b:Self) { hypot(b, self) }
  @inlinable public func hypot (_ b:Element)->Self { return new_call(hypot, b) }
  @inlinable public func hypot (_ b:Element, _ dest:Self) { Element.hypot(count, self.p, b, dest.p) }
  @inlinable public func hypot_(_ b:Element) { hypot(b, self) }
  @inlinable public func nextafter (_ b:Self)->Self { return new_call(nextafter, b) }
  @inlinable public func nextafter (_ b:Self, _ dest:Self) { Element.nextafter(count, self.p, b.p, dest.p) }
  @inlinable public func nextafter_(_ b:Self) { nextafter(b, self) }
  @inlinable public func nextafter (_ b:Element)->Self { return new_call(nextafter, b) }
  @inlinable public func nextafter (_ b:Element, _ dest:Self) { Element.nextafter(count, self.p, b, dest.p) }
  @inlinable public func nextafter_(_ b:Element) { nextafter(b, self) }

  @inlinable public func abs ()->Self { return new_call(abs) }
  @inlinable public func abs(_ dest:Self) { Element.abs(count, self.p, dest.p) }
  @inlinable public func abs_() { abs(self) }
  @inlinable public func sqrt ()->Self { return new_call(sqrt) }
  @inlinable public func sqrt(_ dest:Self) { Element.sqrt(count, self.p, dest.p) }
  @inlinable public func sqrt_() { sqrt(self) }
  @inlinable public func acos ()->Self { return new_call(acos) }
  @inlinable public func acos(_ dest:Self) { Element.acos(count, self.p, dest.p) }
  @inlinable public func acos_() { acos(self) }
  @inlinable public func acosh ()->Self { return new_call(acosh) }
  @inlinable public func acosh(_ dest:Self) { Element.acosh(count, self.p, dest.p) }
  @inlinable public func acosh_() { acosh(self) }
  @inlinable public func asin ()->Self { return new_call(asin) }
  @inlinable public func asin(_ dest:Self) { Element.asin(count, self.p, dest.p) }
  @inlinable public func asin_() { asin(self) }
  @inlinable public func asinh ()->Self { return new_call(asinh) }
  @inlinable public func asinh(_ dest:Self) { Element.asinh(count, self.p, dest.p) }
  @inlinable public func asinh_() { asinh(self) }
  @inlinable public func atan ()->Self { return new_call(atan) }
  @inlinable public func atan(_ dest:Self) { Element.atan(count, self.p, dest.p) }
  @inlinable public func atan_() { atan(self) }
  @inlinable public func atanh ()->Self { return new_call(atanh) }
  @inlinable public func atanh(_ dest:Self) { Element.atanh(count, self.p, dest.p) }
  @inlinable public func atanh_() { atanh(self) }
  @inlinable public func cbrt ()->Self { return new_call(cbrt) }
  @inlinable public func cbrt(_ dest:Self) { Element.cbrt(count, self.p, dest.p) }
  @inlinable public func cbrt_() { cbrt(self) }
  @inlinable public func cos ()->Self { return new_call(cos) }
  @inlinable public func cos(_ dest:Self) { Element.cos(count, self.p, dest.p) }
  @inlinable public func cos_() { cos(self) }
  @inlinable public func cosh ()->Self { return new_call(cosh) }
  @inlinable public func cosh(_ dest:Self) { Element.cosh(count, self.p, dest.p) }
  @inlinable public func cosh_() { cosh(self) }
  @inlinable public func erf ()->Self { return new_call(erf) }
  @inlinable public func erf(_ dest:Self) { Element.erf(count, self.p, dest.p) }
  @inlinable public func erf_() { erf(self) }
  @inlinable public func erfc ()->Self { return new_call(erfc) }
  @inlinable public func erfc(_ dest:Self) { Element.erfc(count, self.p, dest.p) }
  @inlinable public func erfc_() { erfc(self) }
  @inlinable public func exp ()->Self { return new_call(exp) }
  @inlinable public func exp(_ dest:Self) { Element.exp(count, self.p, dest.p) }
  @inlinable public func exp_() { exp(self) }
  @inlinable public func exp2 ()->Self { return new_call(exp2) }
  @inlinable public func exp2(_ dest:Self) { Element.exp2(count, self.p, dest.p) }
  @inlinable public func exp2_() { exp2(self) }
  @inlinable public func expm1 ()->Self { return new_call(expm1) }
  @inlinable public func expm1(_ dest:Self) { Element.expm1(count, self.p, dest.p) }
  @inlinable public func expm1_() { expm1(self) }
  @inlinable public func log ()->Self { return new_call(log) }
  @inlinable public func log(_ dest:Self) { Element.log(count, self.p, dest.p) }
  @inlinable public func log_() { log(self) }
  @inlinable public func log10 ()->Self { return new_call(log10) }
  @inlinable public func log10(_ dest:Self) { Element.log10(count, self.p, dest.p) }
  @inlinable public func log10_() { log10(self) }
  @inlinable public func log1p ()->Self { return new_call(log1p) }
  @inlinable public func log1p(_ dest:Self) { Element.log1p(count, self.p, dest.p) }
  @inlinable public func log1p_() { log1p(self) }
  @inlinable public func log2 ()->Self { return new_call(log2) }
  @inlinable public func log2(_ dest:Self) { Element.log2(count, self.p, dest.p) }
  @inlinable public func log2_() { log2(self) }
  @inlinable public func logb ()->Self { return new_call(logb) }
  @inlinable public func logb(_ dest:Self) { Element.logb(count, self.p, dest.p) }
  @inlinable public func logb_() { logb(self) }
  @inlinable public func nearbyint ()->Self { return new_call(nearbyint) }
  @inlinable public func nearbyint(_ dest:Self) { Element.nearbyint(count, self.p, dest.p) }
  @inlinable public func nearbyint_() { nearbyint(self) }
  @inlinable public func rint ()->Self { return new_call(rint) }
  @inlinable public func rint(_ dest:Self) { Element.rint(count, self.p, dest.p) }
  @inlinable public func rint_() { rint(self) }
  @inlinable public func sin ()->Self { return new_call(sin) }
  @inlinable public func sin(_ dest:Self) { Element.sin(count, self.p, dest.p) }
  @inlinable public func sin_() { sin(self) }
  @inlinable public func sinh ()->Self { return new_call(sinh) }
  @inlinable public func sinh(_ dest:Self) { Element.sinh(count, self.p, dest.p) }
  @inlinable public func sinh_() { sinh(self) }
  @inlinable public func tan ()->Self { return new_call(tan) }
  @inlinable public func tan(_ dest:Self) { Element.tan(count, self.p, dest.p) }
  @inlinable public func tan_() { tan(self) }
  @inlinable public func tanh ()->Self { return new_call(tanh) }
  @inlinable public func tanh(_ dest:Self) { Element.tanh(count, self.p, dest.p) }
  @inlinable public func tanh_() { tanh(self) }
  @inlinable public func tgamma ()->Self { return new_call(tgamma) }
  @inlinable public func tgamma(_ dest:Self) { Element.tgamma(count, self.p, dest.p) }
  @inlinable public func tgamma_() { tgamma(self) }

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

