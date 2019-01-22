import XCTest
@testable import BaseMathTests


extension BaseMathTestsFloat {
  static var allTests : [(String, (BaseMathTestsFloat)->()->())] {
    return [
      ("testSum", testSum),
      ("testAbs", testAbs),
      ("testAdd", testAdd),
      ("testDiv", testDiv),
      ("testSubRev", testSubRev),
      ("testPow", testPow),
      ("testSumSqr", testSumSqr),
    ]
  }
}
extension BaseMathTestsDouble {
  static var allTests : [(String, (BaseMathTestsDouble)->()->())] {
    return [
      ("testSum", testSum),
      ("testAbs", testAbs),
      ("testAdd", testAdd),
      ("testDiv", testDiv),
      ("testSubRev", testSubRev),
      ("testPow", testPow),
      ("testSumSqr", testSumSqr),
    ]
  }
}

XCTMain([
  testCase(BaseMathTestsFloat.allTests),
  testCase(BaseMathTestsDouble.allTests),
])

