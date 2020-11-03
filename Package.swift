// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription



let package = Package(
	name: "AsyncOperationResult",
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
