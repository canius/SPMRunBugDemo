// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Demo",
    products: [
        .library(name: "Demo", targets: ["Demo"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Demo",
                dependencies: ["AlipaySDK"],
                linkerSettings: [.linkedLibrary("z"), .linkedLibrary("c++"), .linkedFramework("WebKit")]),
        
        .binaryTarget(name: "AlipaySDK",
                      url: "https://github.com/canius/SPMBinary/releases/download/1.0.0/AlipaySDK-15.8.03.3.xcframework.zip",
                      checksum: "7dfa090ff9bc0b0a4320c76b7695e9f57f85166fee47051d9b92038e050ef19a")
    ]
)
