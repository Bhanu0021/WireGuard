// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MyLibrary",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]),
    ],
    dependencies: [
        .package(url: "https://github.com/safehousetech/wireguard-apple.git", .branch("main")), // Use a specific version tag or release here, not "master"
    ],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: [
                .product(name: "WireGuardKit", package: "wireguard-apple"), // Use the correct product name here
            ]),
        .testTarget(
            name: "MyLibraryTests",
            dependencies: ["MyLibrary"]),
    ]
)
