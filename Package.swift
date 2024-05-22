// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CFLAC",
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "FLAC",
			targets: [
				"FLAC",
			]),
	],
	dependencies: [
		.package(url: "https://github.com/sbooth/COgg", from: "1.3.5"),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.target(
			name: "FLAC",
			dependencies: [
				.product(name: "ogg", package: "COgg")
			],
			cSettings: [
				.define("HAVE_CONFIG_H"),
				.headerSearchPath("."),
				.headerSearchPath("libFLAC/include"),
			]),
		.testTarget(
			name: "CFLACTests",
			dependencies: [
				"FLAC",
			]),
	]
)
