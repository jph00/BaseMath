import Foundation

extension Array where Element:SignedNumeric {
  public init(_ count:Int) { self.init(repeating:0, count:count) }
  public func copy() -> Array { return (self as NSCopying).copy(with: nil) as! Array }
  public var p:UnsafeMutablePointer<Element> {get {return UnsafeMutablePointer(mutating: self)}}
}

extension Array: BaseVector  where Element:SignedNumeric { }
extension Array: FloatVector where Element:SupportsBasicMath { }

public protocol ComposedStorage {
  associatedtype Storage:MutableCollection where Storage.Index==Int
  typealias Index=Int

  var data:Storage {get set}
  var endIndex:Int {get}
  subscript(i:Int)->Storage.Element {get set}
}
public extension ComposedStorage {
  subscript(i:Int)->Storage.Element { get {return data[i]} set {data[i] = newValue} }
  var endIndex: Int { return data.count }
}

extension UnsafeMutableBufferPointer where Element:SignedNumeric {
  public init(_ count:Int) {
    let sz = MemoryLayout<Element>.stride
    let raw = UnsafeMutableRawBufferPointer.allocate(byteCount: sz*count, alignment: 64)
    self.init(rebasing: raw.bindMemory(to: Element.self)[0...])
  }
  public init(_ array:Array<Element>) {
    self.init(array.count)
    _ = initialize(from:array)
  }
  public var p:UnsafeMutablePointer<Element> {get {return baseAddress!}}
  public func copy()->UnsafeMutableBufferPointer { return .init(Array(self)) }
}

extension UnsafeMutableBufferPointer: BaseVector,ExpressibleByArrayLiteral,Equatable where Element:SignedNumeric {
  public typealias ArrayLiteralElement=Element
}
extension UnsafeMutableBufferPointer: FloatVector where Element:SupportsBasicMath { }

public final class AlignedStorage<Element:SignedNumeric>: BaseVector,ComposedStorage {
  public var data:UnsafeMutableBufferPointer<Element>

  public init(_ data: UnsafeMutableBufferPointer<Element>) {self.data=data}
  public convenience init(_ count:Int)      { self.init(UnsafeMutableBufferPointer(count)) }
  public convenience init(_ array:Array<Element>) { self.init(UnsafeMutableBufferPointer(array)) }

  deinit { UnsafeMutableRawBufferPointer(data).deallocate() }

  public var p:MutPtrT {get {return data.p}}
  public func copy()->Self { return .init(data.copy()) }
}

extension AlignedStorage:FloatVector where Element:SupportsBasicMath {}

