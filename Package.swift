// swift-tools-version: 6.0
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
        .package(url: "https://github.com/SumSubstance/IdensicMobileSDK-iOS", from: "1.31.0"),
        .package(url: "https://github.com/approov/approov-service-urlsession", from: "3.3.1")
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
                .product(name: "ApproovURLSession", package: "approov-service-urlsession"),
                "WeavrComponentsStandalone"
            ],
            path: "Wrapper"
        )
    ]
)