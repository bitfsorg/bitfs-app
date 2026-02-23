# BitFS App

Cross-platform client for the BitFS decentralized encrypted file system.

Platforms: iOS, Android, macOS, Windows, Linux

## Prerequisites

- Flutter SDK >= 3.27
- Go >= 1.25 (for native bridge)
- Platform-specific toolchains (Xcode, Android SDK, etc.)

## Getting Started

1. Build native bridge: `cd native && make <platform>`
2. Run app: `flutter run`

## Project Structure

- `lib/` — Dart source code
- `native/` — Go FFI bridge (cgo)
- `android/`, `ios/`, `macos/`, `windows/`, `linux/` — Platform shells
