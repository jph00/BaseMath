// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "SwiftyMKL",
    products: [
      .library( name: "BaseMath", type: .static, targets: ["BaseMath"]),
    ],
    targets: [
        .target( name: "CBaseMath"),
        .target( name: "BaseMath", dependencies: ["CBaseMath"]),
        .testTarget( name: "BaseMathTests", dependencies: ["BaseMath"]),
    ]
)

