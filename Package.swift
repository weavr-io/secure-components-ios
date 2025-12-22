// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WeavrComponents",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WeavrComponents",
            targets: [
                "WeavrComponents"
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SumSubstance/IdensicMobileSDK-iOS", .upToNextMinor(from: "1.31.0")),
        .package(url: "https://github.com/approov/approov-ios-sdk", .upToNextMinor: "3.5.1")
    ],
    targets: [
        .binaryTarget(
            name: "WeavrComponentsStandalone",
            path: "./WeavrComponents.xcframework"
        ),
        .target(
            name: "WeavrComponents",
            dependencies: [
                .product(name: "IdensicMobileSDK", package: "IdensicMobileSDK-iOS"),
                .product(name: "Approov", package: "approov-ios-sdk"),
                "WeavrComponentsStandalone"
            ],
            path: "Wrapper"
        )
    ]
)