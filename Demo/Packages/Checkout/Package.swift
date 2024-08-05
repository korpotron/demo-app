// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Checkout",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "Checkout",
            targets: [
                "Checkout"
            ]
        ),
    ],
    dependencies: [
        .package(path: "../../../../design")
    ],
    targets: [
        .target(
            name: "Checkout"
        ),
        .testTarget(
            name: "CheckoutTests",
            dependencies: [
                "Checkout"
            ]
        ),
    ]
)
