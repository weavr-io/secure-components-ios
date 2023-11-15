// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WeavrComponents",
    products: [
        .library(
            name: "WeavrComponents",
            targets: ["WeavrComponents"])
    ],
    dependencies: [
        .package(url: "https://github.com/SumSubstance/IdensicMobileSDK-iOS.git", .upToNextMajor(from: "1.28.0")),
    ],
    targets: [
        .binaryTarget(
            name: "WeavrComponents",
            path: "WeavrComponents.xcframework"
        )
    ]
)
