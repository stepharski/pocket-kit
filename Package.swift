// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "PocketKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "PocketKit",
            targets: ["PocketKit"]),
    ],
    targets: [
        .target(
            name: "PocketKit"),
    ]
)
