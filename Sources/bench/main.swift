import Foundation
import CBaseMath
import BaseMath

protocol RealType:BinaryFloatingPoint {}
extension Float: RealType { }
extension Double: RealType { }

/*
func sin_<T:RealType>(_ a:T)->T {
  return sin(a)
}
let s = sin_(0.3)
print(s)
*/

protocol IntType:SignedNumeric {
  associatedtype BinomialDistributionC:DistributionC
  typealias U = BinomialDistributionC.Element
  typealias BinomialDistribution=Distribution<BinomialDistributionC>
  static func binomial_distribution_create(_ t:Self,_ p:Double)->BinomialDistributionC
}
extension IntType {
  public static func binomial_distribution(_ t:Self,_ p:Double)->BinomialDistribution {
    return BinomialDistribution(Self.binomial_distribution_create(t,p), mt19937.stored)
  }
}
extension Int32: IntType {
  public typealias BinomialDistributionC=binomial_distributionintC
  public static func binomial_distribution_create(_ t:Int32,_ p:Double)->BinomialDistributionC {
    return CBaseMath.binomial_distribution_create(t,p,.init())
  }
}
extension Int: IntType {
  public typealias BinomialDistributionC=binomial_distributionlongC
  public static func binomial_distribution_create(_ t:Int,_ p:Double)->BinomialDistributionC {
    return CBaseMath.binomial_distribution_create(t,p,.init())
  }
}

func gen_binomial<T:IntType>(_ t:T, _ p:Double)->T.U {
  let d = T.binomial_distribution(t,p)
  return d[]
}

let r = gen_binomial(3,0.5)
print(r)

let arr = Int.discrete_distribution([40, 10, 10, 40])[10000]
let counts = arr.reduce(into: [:]) { $0[$1, default:0] += 1 }
counts.sorted(by:<).forEach { print("\($0) generated \($1) times") }

let dist01 = Int.uniform_int_distribution(1,6);       print(dist01[])
let dist02 = Int32.uniform_int_distribution(10,60);   print(dist02[])
let dist03 = Float.uniform_real_distribution(0,1);    print(dist03[])
let dist04 = Double.uniform_real_distribution(1,2);   print(dist04[])
let dist06 = Int.binomial_distribution(100,0.5);      print(dist06[])
let dist07 = Int.negative_binomial_distribution(5,2); print(dist07[])
let dist08 = Int.geometric_distribution(0.5);         print(dist08[])
let dist09 = Int.poisson_distribution(5);             print(dist09[])
let dist10 = Double.exponential_distribution(3.5);    print(dist10[])
let dist11 = Float.gamma_distribution(2,3.5);         print(dist11[])
let dist12 = Float.weibull_distribution(2,3.5);       print(dist12[])
let dist13 = Float.normal_distribution(1,3.5);        print(dist13[])
let dist14 = Double.lognormal_distribution(2,5.5);    print(dist14[])
let dist15 = Double.chi_squared_distribution(5.5);    print(dist15[])
let dist16 = Double.cauchy_distribution(2.1,3.5);     print(dist16[])
let dist17 = Float.fisher_f_distribution(2.1,3.5);    print(dist17[])
let dist18 = Float.student_t_distribution(15);        print(dist18[])

print("***")
let dist19 = Int.discrete_distribution([1.5,2,6]);                          print(dist19[])
let dist20 = Float.piecewise_constant_distribution([0,1,10,15], [1,0,1]);   print(dist20[])
let dist21 = Float.piecewise_constant_distribution([0,5,10,15], [0,1,1,0]); print(dist21[])

print("***")
let v1 = dist01[20];             print(v1); print(type(of:v1))
let v2 = dist01.gen_aligned(20); print(v2); print(type(of:v2))
let v3 = dist01.gen_pointer(20); print(v3); print(type(of:v3))

print("========")
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
benchmark(title:"C sum") {a1 = smSum(ar1.p, ar1.c)}
print(a1)

/*
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

