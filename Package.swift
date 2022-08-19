// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "AlignedCollectionView",
	platforms: [
		.iOS(.v13)
	],
	products: [
		.library(
			name: "AlignedCollectionView",
			targets: ["AlignedCollectionView"]
		),
	],
	dependencies: [],
	targets: [
		.target(
			name: "AlignedCollectionView",
			dependencies: []
		)
	],
	swiftLanguageVersions: [.v5]
)
