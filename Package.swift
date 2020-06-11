// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ESServiceHelper",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ESServiceHelper", targets: ["ESServiceHelper"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ESServiceHelper", dependencies: []),
        .testTarget(name: "ESServiceHelperTests", dependencies: ["ESServiceHelper"]),
    ]
)
