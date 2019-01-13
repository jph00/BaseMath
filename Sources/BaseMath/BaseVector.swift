import Foundation

public protocol BaseVector:
    RandomAccessCollection, MutableCollection, ExpressibleByArrayLiteral, Equatable, CustomStringConvertible
  where Index==Int, Element:SignedNumeric {
  typealias PtrT = UnsafePointer<Element>
  typealias MutPtrT = UnsafeMutablePointer<Element>
  typealias UnaryF = (Element)->(Element)
  typealias BinaryF = (Element,Element)->(Element)
  typealias TernaryF = (Element,Element,Element)->(Element)

  init(_ data:Array<Element>)
  init(_ count:Int)

  func new(_ size:Int)->Self
  func copy()->Self
  var p:MutPtrT {get}
}

extension BaseVector {
  public init(arrayLiteral data: Element...) { self.init(data) }
  public var indices: Range<Int> { return 0..<endIndex }
  public var startIndex: Int { return 0 }

  @inlinable public func new(_ size:Int)->Self { return .init(size) }
  @inlinable public func new()  -> Self { return new(count) }
  @inlinable public var c:Int32 {get {return numericCast(count)}}

  @inlinable public static func ==(lhs:Self, rhs:Self) -> Bool { return lhs.elementsEqual(rhs) }
  @inlinable public static func ==(lhs:Array<Element>, rhs:Self) -> Bool { return self.init(lhs) == rhs }
  @inlinable public static func ==(lhs:Self, rhs:Array<Element>) -> Bool { return lhs == self.init(rhs) }

  public var description: String { return "\(Array(self))" }
}

