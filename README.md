# ModelCommunication binary distributions

This public repository contains versioned binary distributions and package metadata only. It does not contain the project source code.

## Products

- : native Swift HTTP transport and model protocol library.
- : native Swift orchestration library.
- : filesystem and process tools for macOS and Linux. Its Apple binary is macOS only.
- : Linux command line binary in the Linux release archives.

## Apple platforms

The SwiftPM products support macOS 12 and later.  and  also support iOS 15 and later on device and simulator.  is distributed for macOS; process execution is not an iOS use case.

The package manifest requires Swift tools 6.3 or newer. The XCFrameworks contain static Swift libraries and public module interfaces generated with library evolution enabled.

Add this package to a consumer manifest:


Welcome to Swift!

Subcommands:

  swift build      Build Swift packages
  swift package    Create and work on packages
  swift run        Run a program from a package
  swift test       Run package tests
  swift repl       Experiment with Swift code interactively

  Use `swift --version` for Swift version information.

  Use `swift --help` for descriptions of available options and flags.

  Use `swift help <subcommand>` for more information about a subcommand.

The release tag and SwiftPM version are the same SemVer version. Each versioned public Git tag contains a manifest with checksums and URLs for that version's XCFramework releases.

## Linux binaries

SwiftPM does not consume these native Swift library archives as binary package targets. Download  or  from [Releases](https://github.com/nicholascross/ModelCommunication-binary/releases).

Each archive includes three static  libraries, Swift module interfaces, and the static  executable. The libraries were built with Swift 6.3.3 on Ubuntu 24.04 and require glibc 2.39 or newer. Linux Swift libraries do not have a stable cross-version ABI; compile consumers with a compatible Swift 6.3.3 toolchain and runtime. These archives are for manual/system-level integration, not SwiftPM binary targets. The CLI uses the Swift Static Linux SDK and musl and has no dynamic library dependencies.

Example manual integration:



Select the archive matching the host architecture. Linux archives are manual/system-level integration artifacts, not SwiftPM binary targets.

## Integrity, versions, and issues

Every release includes  for all downloadable artifacts. The package manifest also contains the SwiftPM checksum for every XCFramework ZIP.

Apple XCFramework slices contain static Swift libraries. Releases use immutable SemVer tags such as . Issues about downloads, checksums, SwiftPM resolution, or binary compatibility can be reported in this repository's Issues. Please do not include API keys or other secrets.

This repository contains no Swift implementation sources. Public module interfaces are included inside binary artifacts so Swift compilers can import the declared APIs.
