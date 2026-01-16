// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RenameUsingPackageSwift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RenameUsingPackageSwift",
            targets: ["RenameUsingPackageSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/andre-statsig/rename-kit.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RenameUsingPackageSwift",
            dependencies: [.product(name: "RenameKit", package: "rename-kit")]
        ),
        .testTarget(
            name: "RenameUsingPackageSwiftTests",
            dependencies: ["RenameUsingPackageSwift"]
        ),
    ]
)
