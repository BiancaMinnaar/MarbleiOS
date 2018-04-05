// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Marble.Mobile",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.6.0")
    ]
)
