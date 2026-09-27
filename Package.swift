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
            checksum: "17d57439ffc99b37c22b418283f145ae84b21c5e647ebc1e0d223480a2c1e45c",
        ),
        .binaryTarget(
            name: "ModelOrchestration",
            url: "https://github.com/nicholascross/ModelCommunication-binary/releases/download/v0.1.0/ModelOrchestration.xcframework.zip",
            checksum: "e85eda4149d61aa03134639d6d57bc3a38e3491720f5e8f6d16110ceb99de5f0",
        ),
        .binaryTarget(
            name: "ModelTools",
            url: "https://github.com/nicholascross/ModelCommunication-binary/releases/download/v0.1.0/ModelTools.xcframework.zip",
            checksum: "5e1d0f7739321167691c698002b1f62d0926e67da7d05a6d9bbf76b5826a4ab2",
        ),
    ],
)
