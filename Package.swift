// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription



let package = Package(
	name: "AsyncOperationResult",
	platforms: [
		.macOS(.v10_10),
		.iOS(.v8),
		.tvOS(.v9),
		.watchOS(.v2)
	],
	products: [
		.library(
			name: "AsyncOperationResult",
			targets: ["AsyncOperationResult"]
		)
	],
	dependencies: [
	],
	targets: [
		.target(
			name: "AsyncOperationResult",
			dependencies: []
		),
		.testTarget(
			name: "AsyncOperationResultTests",
			dependencies: ["AsyncOperationResult"]
		)
	]
)
