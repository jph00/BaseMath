import Foundation

public protocol Nullary {
  associatedtype Element:SignedNumeric
  subscript()->Element {get}
}

public protocol BaseVector:
    RandomAccessCollection, MutableCollection, ExpressibleByArrayLiteral, Equatable, CustomStringConvertible
  where Index==Int, Element:SignedNumeric {
  typealias PtrT = UnsafePointer<Element>
  typealias MutPtrT = UnsafeMutablePointer<Element>
  typealias NullaryF = ()->(Element)
  typealias UnaryF = (Element)->(Element)
  typealias BinaryF = (Element,Element)->(Element)
  typealias TernaryF = (Element,Element,Element)->(Element)

  init(_ data:[Element])
  init(_ count:Int)

  func new(_ size:Int)->Self
  func copy()->Self
  var p:MutPtrT {get}

  static func fill<T:Nullary>(_ f:T, _ n:Int)->Self where T.Element==Self.Element
  static func fill(_ f:NullaryF, _ n:Int)->Self
  func fill<T:Nullary>(_ f:T) where T.Element==Self.Element
  func fill(_ f:NullaryF)
  func map(_ f:UnaryF, _ dest: Self)
  func map(_ f:BinaryF, _ b:Self, _ dest: Self)
  func map(_ f:TernaryF, _ b:Self, _ c:Self, _ dest: Self)
}

extension BaseVector {
  public init(arrayLiteral data: Element...) { self.init(data) }
  public var indices: Range<Int> { return 0..<endIndex }
  public var startIndex: Int { return 0 }

  @inlinable public func new(_ size:Int)->Self { return .init(size) }
  @inlinable public func new()  -> Self { return new(count) }
  @inlinable public var c:Int32 {get {return numericCast(count)}}

  @inlinable public static func ==(lhs:Self, rhs:Self) -> Bool { return lhs.elementsEqual(rhs) }
  @inlinable public static func ==(lhs:[Element], rhs:Self) -> Bool { return self.init(lhs) == rhs }
  @inlinable public static func ==(lhs:Self, rhs:[Element]) -> Bool { return lhs == self.init(rhs) }

  public var description: String { return "\(Array(self))" }

  @inlinable public static func fill<T:Nullary>(_ f:T, _ n:Int)->Self where T.Element==Self.Element {
    let res = Self(n); res.fill(f); return res
  }
  @inlinable public static func fill(_ f:NullaryF, _ n:Int)->Self {
    let res = Self(n); res.fill(f); return res
  }
  @inlinable public func fill<T:Nullary>(_ f:T) where T.Element==Self.Element {
    let pDest = p; let n = count
    for i in 0..<n {pDest[i] = f[]}
  }
  @inlinable public func fill(_ f:NullaryF) {
    let pDest = p; let n = count
    for i in 0..<n {pDest[i] = f()}
  }
  @inlinable public func map(_ f:UnaryF, _ dest:Self) {
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
}

