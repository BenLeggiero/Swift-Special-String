// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SpecialString",
    
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SpecialString",
            targets: ["SpecialString"]),
        
        // DEPRECATED: Does not play nice with App Store requirements
        .library(
            name: "SpecialString_dynamic",
            type: .dynamic,
            targets: ["SpecialString"]),
        
        .library(
            name: "SpecialStringDynamic",
            type: .dynamic,
            targets: ["SpecialString"]),
    ],
    
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "SpecialString",
            dependencies: []),
        .testTarget(
            name: "SpecialStringTests",
            dependencies: ["SpecialString"]),
    ]
)
