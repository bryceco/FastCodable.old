// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "FastCodable",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v11),
		.tvOS(.v11),
		.watchOS(.v4)
	],
    products: [
        .library(
            name: "FastCodable",
            targets: ["FastCodable"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "FastCodable",
            dependencies: []),
        .testTarget(
            name: "FastCodableTests",
            dependencies: ["FastCodable"]),
    ],
	swiftLanguageVersions: [.v5]
)
