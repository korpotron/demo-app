// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Main",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "Main",
            targets: [
                "Main",
            ]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/korpotron/route", exact: "0.8.1"),
        .package(url: "https://github.com/korpotron/toolbelt", exact: "1.0.7"),
        .package(url: "https://github.com/korpotron/construct", exact: "0.3.0"),
        .package(path: "../../../../design")
    ],
    targets: [
        .target(
            name: "Main",
            dependencies: [
                .product(name: "Route", package: "route"),
                .product(name: "Toolbelt", package: "toolbelt"),
                .product(name: "Construct", package: "construct"),
            ]
        ),
    ]
)
