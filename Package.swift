// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StaticLib",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "StaticLib",
            targets: ["StaticLib", "StaticLibResBundle"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        // (I'm providing path to non-zip here bcus I dont want to deploy to a URL for a demo and bcus Xcode 13.1,
        //  which I need compatibility with, doesnt support zip files in the path initializer.)
        .binaryTarget(
            name: "StaticLib",
            path: "xcframework/StaticLib.xcframework"),
        .target(
            name: "StaticLibResBundle",
            dependencies: [],
            path: "Resources/ResourceMockSource.swift", // required to make spm happy
            resources: [
                .process("Resources/sample.json"),
            ]
        ),
    ]
)
