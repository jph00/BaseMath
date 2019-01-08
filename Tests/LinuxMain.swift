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
    ]
  }
}

XCTMain([
  testCase(BaseMathTestsFloat.allTests),
  testCase(BaseMathTestsDouble.allTests),
])

