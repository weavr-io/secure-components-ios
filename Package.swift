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
    targets: [
        .binaryTarget(
            name: "WeavrComponentsStandalone",
            path: "./WeavrComponents.xcframework"
        ),
        .binaryTarget(
            name: "Approov",
            url: "https://github.com/approov/approov-ios-sdk/releases/download/3.3.0/Approov.xcframework.zip",
            checksum: "8c8737a2cea95e7101f6e05114c37f3f45a600abd196aca05d2c58edb90634dd"
        ),
        .target(
            name: "WeavrComponents",
            dependencies: [
                "WeavrComponentsStandalone",
                "Approov"
            ],
            path: "Wrapper"
        )
    ]
)
