// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "DemoKit",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "DemoKit",
            targets: [
                "DemoKit",
            ]
        ),
    ],
    dependencies: [
        .package(path: "../Bag"),
        .package(path: "../Catalog"),
        .package(path: "../Checkout"),
        .package(path: "../Main"),
    ],
    targets: [
        .target(
            name: "DemoKit",
            dependencies: [
                "Bag",
                "Checkout",
                "Main",
                "Catalog",
            ]
        ),
    ]
)
