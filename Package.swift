// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

@preconcurrency
import PackageDescription

let package = Package(
  name: "TarsKit",
  platforms: [
    .iOS(.v14),
    .tvOS(.v14),
  ],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "TarsKit",
      targets: ["TarsKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "TarsKit",
      dependencies: [
        .alamofire,
      ]),
    .testTarget(
      name: "TarsKitTests",
      dependencies: ["TarsKit"]),
  ])

extension Target.Dependency {
  static let alamofire = Target.Dependency.product(name: "Alamofire", package: "Alamofire")
}
