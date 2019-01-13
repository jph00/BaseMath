import Foundation
import CBaseMath
import BaseMath

print("========")

// TODO: TLS RandGen
// TODO: Array/BaseVector generators
let gen = RandGen()
let dist = Int.uniform_int_distribution(gen,1,6); print(dist.gen())
let dist2 = Int32.uniform_int_distribution(gen,10,60); print(dist2[])
let dist3 = Float.uniform_real_distribution(gen,0,1); print(dist3[])
let dist4 = Double.uniform_real_distribution(gen,1,2); print(dist4[])
let dist5 = Bool.bernoulli_distribution(gen,0.5); print(dist5[])
let dist6 = Int.binomial_distribution(gen,100,0.5); print(dist6[])
let dist7 = Int.negative_binomial_distribution(gen,5,0.5); print(dist7[])
let dist8 = Int.geometric_distribution(gen,0.5); print(dist8[])
let dist9 = Int.poisson_distribution(gen,5); print(dist9[])
let dist10 = Double.exponential_distribution(gen,3.5); print(dist10[])
let dist11 = Float.gamma_distribution(gen,2,3.5); print(dist11[])
let dist12 = Float.weibull_distribution(gen,2,3.5); print(dist12[])
let dist13 = Float.normal_distribution(gen,1,3.5); print(dist13[])
let dist14 = Double.lognormal_distribution(gen,2,5.5); print(dist14[])
let dist15 = Double.chi_squared_distribution(gen,5.5); print(dist15[])
let dist16 = Double.cauchy_distribution(gen,2.1,3.5); print(dist16[])
let dist17 = Float.fisher_f_distribution(gen,2.1,3.5); print(dist17[])
let dist18 = Float.student_t_distribution(gen,15); print(dist18[])
let dist19 = Int.discrete_distribution(gen,[1,2,6]);
print(dist19[])

print("========")

/*
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
*/

