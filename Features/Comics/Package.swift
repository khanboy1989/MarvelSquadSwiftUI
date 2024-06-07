// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Comics",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Comics",
            targets: ["Comics"]),
    ],
    dependencies: [
        .package(path: "../Core/CommonUI"),
        .package(path: "../Foundation/Network"),
        .package(path: "../Foundation/Domain"),
        .package(path: "../Foundation/Router"),
        .package(path: "../Foundation/SystemDesign")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Comics",
            dependencies: [
                "Network",
                "CommonUI",
                "Domain",
                .product(name: "DomainData", package: "Domain"),
                "Router",
                "SystemDesign"
            ]
        ),
        .testTarget(
            name: "ComicsTests",
            dependencies: ["Comics"]),
    ]
)
