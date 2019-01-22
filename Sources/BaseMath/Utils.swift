import Foundation
import CoreFoundation

public func benchmarkTime(f: ()->()) -> Double {
  f() // warmup
  let start = CFAbsoluteTimeGetCurrent()
  for _ in 0..<1 {f()}
  return (CFAbsoluteTimeGetCurrent()-start)*1000
}

public func benchmark(title:String, f:()->()) {
  let time = benchmarkTime(f:f)
  print("\(title): \(time.string(3)) ms")
}

extension Thread {
  static func setToTLS<T>(_ value: T, _ key: String)->T {
    Thread.current.threadDictionary[key] = value
    return value
  }
}

