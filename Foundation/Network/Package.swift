// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Network",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Network",
            targets: ["Network"]),

        .library(
                name: "NetworkMock",
                targets: ["NetworkMock"]
            )

    ], dependencies: [
        .package(path: "./Logger"),
        .package(url: "https://github.com/AliSoftware/OHHTTPStubs", from: "9.1.0")
    ],
    targets: [

        .target(
            name: "Network", dependencies: ["Logger"]),
        .target(name: "NetworkMock",
                dependencies: ["Network",
                               .product(name: "OHHTTPStubsSwift", package: "OHHTTPStubs")]
               ),
        .testTarget(
            name: "NetworkTests",
            dependencies: ["Network", .product(name: "OHHTTPStubsSwift", package: "OHHTTPStubs"), "NetworkMock"])
    ]
)
