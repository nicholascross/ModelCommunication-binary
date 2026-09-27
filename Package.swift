// swift-tools-version: 6.3
import PackageDescription

let package = Package(
    name: "ModelCommunication",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "ModelCommunication", targets: ["ModelCommunication"]),
        .library(name: "ModelOrchestration", targets: ["ModelOrchestration", "ModelCommunication"]),
        .library(name: "ModelTools", targets: ["ModelTools", "ModelOrchestration", "ModelCommunication"]),
    ],
    targets: [
        .binaryTarget(
            name: "ModelCommunication",
            url: "https://github.com/nicholascross/ModelCommunication-binary/releases/download/v0.1.0/ModelCommunication.xcframework.zip",
            checksum: "b14f053b7d28462a1cf4a99d1ac8192a57ce7faa9ab01df60b886488ac9c1853",
        ),
        .binaryTarget(
            name: "ModelOrchestration",
            url: "https://github.com/nicholascross/ModelCommunication-binary/releases/download/v0.1.0/ModelOrchestration.xcframework.zip",
            checksum: "12c0b4c07d7fb60e0ac9d5d34648a5405281c92fb5349c569c16a278271e7c67",
        ),
        .binaryTarget(
            name: "ModelTools",
            url: "https://github.com/nicholascross/ModelCommunication-binary/releases/download/v0.1.0/ModelTools.xcframework.zip",
            checksum: "6826d06b0fe4497a4ca350a2a5ffce11aef0861d53410ee0d24e251d0a7d98c5",
        ),
    ],
)
