// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Preview",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Preview",
            targets: ["Preview"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Preview",
            dependencies: []),
        .testTarget(
            name: "PreviewTests",
            dependencies: ["Preview"]),
    ],
    swiftLanguageVersions: [.v5]
)
