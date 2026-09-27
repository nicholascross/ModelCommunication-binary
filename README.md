# ModelCommunication binary distributions

This public repository contains versioned binary distributions and package metadata only. It does not contain the project source code.

## Products

- `ModelCommunication`: native Swift HTTP transport and model protocol library.
- `ModelOrchestration`: native Swift orchestration library.
- `ModelTools`: filesystem and process tools for macOS and Linux. Its Apple binary is macOS only.
- `ModelCommunicationFieldTest`: Linux command line binary in the Linux release archives.

## Apple platforms

The SwiftPM products support macOS 12 and later. `ModelCommunication` and `ModelOrchestration` also support iOS 15 and later on device and simulator. `ModelTools` is distributed for macOS; process execution is not an iOS use case.

The package manifest requires Swift tools 6.3 or newer. The XCFrameworks contain static Swift libraries and public module interfaces generated with library evolution enabled.

Add this package to a consumer manifest:

```swift
dependencies: [
    .package(url: "https://github.com/nicholascross/ModelCommunication-binary.git", from: "0.1.0"),
]

// In a target declaration:
dependencies: [
    .product(name: "ModelCommunication", package: "modelcommunication-binary"),
]
```

The release tag and SwiftPM version are the same SemVer version. Each versioned public Git tag contains a manifest with checksums and URLs for that version's XCFramework releases.

## Linux binaries

SwiftPM does not consume these native Swift library archives as binary package targets. Download `ModelCommunication-linux-x86_64.tar.gz` or `ModelCommunication-linux-aarch64.tar.gz` from [Releases](https://github.com/nicholascross/ModelCommunication-binary/releases).

Each archive includes three static `.a` libraries, Swift module interfaces, and the static `ModelCommunicationFieldTest` executable. The libraries were built with Swift 6.3.3 on Ubuntu 24.04 and require glibc 2.39 or newer. Linux Swift libraries do not have a stable cross-version ABI; compile consumers with a compatible Swift 6.3.3 toolchain and runtime. These archives are for manual/system-level integration, not SwiftPM binary targets. The CLI uses the Swift Static Linux SDK and musl and has no dynamic library dependencies.

Example manual integration:

```sh
tar -xzf ModelCommunication-linux-x86_64.tar.gz
cd ModelCommunication-linux-x86_64
swiftc -I Modules Consumer.swift -L lib \\
    -lModelTools -lModelOrchestration -lModelCommunication \\
    -o consumer
./consumer
./bin/ModelCommunicationFieldTest --help
```

Select the archive matching the host architecture. Linux archives are manual/system-level integration artifacts, not SwiftPM binary targets.

## Integrity, versions, and issues

Every release includes `SHA256SUMS` for all downloadable artifacts. The package manifest also contains the SwiftPM checksum for every XCFramework ZIP.

Apple XCFramework slices contain static Swift libraries. Releases use immutable SemVer tags such as `v0.1.0`. Issues about downloads, checksums, SwiftPM resolution, or binary compatibility can be reported in this repository's Issues. Please do not include API keys or other secrets.

This repository contains no Swift implementation sources. Public module interfaces are included inside binary artifacts so Swift compilers can import the declared APIs.
