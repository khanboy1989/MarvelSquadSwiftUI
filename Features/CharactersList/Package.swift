// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CharactersList",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "CharactersList",
            targets: ["CharactersList"]),
    ],
    dependencies: [
        .package(path: "../Core/CommonUI")
    ],
    targets: [
        .target(
            name: "CharactersList",
            dependencies: [
                "CommonUI"
            ]
        ),
        .testTarget(
            name: "CharactersListTests",
            dependencies: ["CharactersList"]),
    ]
)
