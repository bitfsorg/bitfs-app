# BitFS App

Cross-platform Flutter client for BitFS daemon.

## Build & Run
flutter run                    # Run on connected device
flutter build apk              # Android APK
flutter build ios               # iOS (requires Xcode)
flutter build macos             # macOS desktop
flutter build windows           # Windows desktop
flutter build linux             # Linux desktop

## Architecture
- State management: Riverpod 2
- Routing: GoRouter
- Go FFI: native/ directory contains cgo bridge
- Platform-specific code in lib/platform/

## Dependencies
- flutter_riverpod 2.6 — compile-time safe state management
- go_router 14 — declarative routing with deep links
- ffi 2.1 — Dart FFI for Go native bridge
