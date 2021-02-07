// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AWSLambdaOnSwift",
    
    platforms:[
        .macOS(.v11)
    ],
    products: [
        .executable(name: "AWSLambdaOnSwift", targets: ["AWSLambdaOnSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", .upToNextMajor(from: "0.3.0"))
    ],
    targets: [
        .target(
            name: "AWSLambdaOnSwift",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime")
            ]),
        .testTarget(
            name: "AWSLambdaOnSwiftTests",
            dependencies: ["AWSLambdaOnSwift"]),
    ]
)
