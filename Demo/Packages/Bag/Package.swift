// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Bag",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "Bag",
            targets: [
                "Bag",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/korpotron/route", exact: "0.8.1"),
        .package(url: "https://github.com/korpotron/toolbelt", exact: "1.0.7"),
        .package(path: "../../../../design")
    ],
    targets: [
        .target(
            name: "Bag",
            dependencies: [
                .product(name: "Route", package: "route"),
                .product(name: "Toolbelt", package: "toolbelt"),
            ]
        ),
    ]
)
