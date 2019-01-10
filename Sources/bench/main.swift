import Foundation
import CBaseMath
import BaseMath

//public typealias E=Double

public typealias E=Float
public let size = 1000000
public var ar1 = Array<E>(repeating:1, count:size)
ar1[3] = 1.2;ar1[5] = 0.2
public var ar2 = Array<E>(repeating:0, count:size)
public var a1:E=0

benchmark(title:"reduce sum") {a1 = ar1.reduce(0.0, +)}
print(a1)
benchmark(title:"loop sum") { a1 = 0; for i in 0..<size {a1+=ar1[i]} }
print(a1)
benchmark(title:"pointer sum") {
  let p1 = ar1.p
  a1 = 0; for i in 0..<size {a1+=p1[i]}
}
print(a1)
benchmark(title:"C sum") {a1 = smSum_float(ar1.p, ar1.c)}
print(a1)

let p = ar1.p
let p2 = ar2.p
let c = Int32(ar1.c)

benchmark(title:"swift add") { for i in 0..<ar1.count {ar2[i]=ar1[i]+2.0} }
print(ar2.sum())
benchmark(title:"swift ptr add") {
  let (p1,p2) = (ar1.p,ar2.p)
  for i in 0..<ar1.count {p2[i]=p1[i]+2.0}
}
print(ar2.sum())
benchmark(title:"C add") {sm_add_float(ar1.p, 2.0, ar2.p, ar1.c)}
print(ar2.sum())
benchmark(title:"map add") { ar1.map({$0+2.0}, ar2) }
print(ar2.sum())
benchmark(title:"lib") { ar1.add(2.0, ar2) }
print(ar2.sum())

benchmark(title:"swift sin") { for i in 0..<ar1.count {ar2[i]=sin(ar1[i])} }
print(ar2.sum())
benchmark(title:"swift ptr sin") {
  let (p1,p2) = (ar1.p,ar2.p)
  for i in 0..<ar1.count {p2[i]=sin(p1[i])} 
}
print(ar2.sum())
benchmark(title:"C sin") {sm_sin_float(ar1.p, ar2.p, ar1.c)}
print(ar2.sum())

print("func reduce")
@inlinable public func absO(_ a:Float)->Float {return E.sqr(a)}
benchmark(title:"lib sum(sqr)") {a1 = ar1.sum(Float.sqr)}
print(a1)
benchmark(title:"reduce sumsqr") {a1 = ar1.reduce(0.0, {$0+Float.sqr($1)})}
print(a1)
benchmark(title:"c sumsqr") {a1 = smSum_sqr_float(ar1.p, ar1.c)}
print(a1)
benchmark(title:"lib sumsqr") {a1 = ar1.sumsqr()}
print(a1)

// Not faster yet - need ffast-math or similar for swift code
@inlinable func f()->Float {
  a1 = 0;
  let p = ar1.p
  for i in 0..<size {a1+=p[i]}
  return a1
}
benchmark(title:"loop sum") { a1=f() }

