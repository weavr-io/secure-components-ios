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
        .package(url: "https://gitlab.okaythis.com/public-package/fcc_spm.git", from: "1.4.2"),
        .package(url: "https://github.com/Okaythis/PSAiOS", from: "1.2.18"),
        .package(url: "https://github.com/SumSubstance/IdensicMobileSDK-iOS", from: "1.31.0")
    ],
    targets: [
        .binaryTarget(
            name: "WeavrComponentsStandalone",
            path: "./WeavrComponents.xcframework"
        ),
        .binaryTarget(
            name: "ApproovURLSession",
            path: "./dependencies/ApproovURLSession.xcframework"
        ),
        .binaryTarget(
            name: "Approov",
            url: "https://github.com/approov/approov-ios-sdk/releases/download/3.3.1/Approov.xcframework.zip",
            checksum: "8c8737a2cea95e7101f6e05114c37f3f45a600abd196aca05d2c58edb90634dd"
        ),
        .target(
            name: "WeavrComponents",
            dependencies: [
                .product(name: "FCC", package: "fcc_spm"),
                .product(name: "OkaySDK", package: "PSAiOS"),
                .product(name: "IdensicMobileSDK", package: "IdensicMobileSDK-iOS"),
                "WeavrComponentsStandalone",
                "ApproovURLSession",
                "Approov"
            ],
            path: "Wrapper"
        )
    ]
)
