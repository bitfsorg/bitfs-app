# Native Bridge

Go FFI bridge for the BitFS Flutter app. Uses cgo to export C-compatible functions
that Dart calls via `dart:ffi`.

## Build

### macOS

```bash
make macos
```

Produces `../macos/Frameworks/libbitfs.dylib`.

### Linux

```bash
make linux
```

Produces `../linux/lib/libbitfs.so`.

### Windows

Requires a Windows host or cross-compilation toolchain:

```bash
make windows
```

Produces `../windows/runner/libbitfs.dll`.

### Android

Not yet implemented. Requires Android NDK for cross-compilation.

```bash
make android
```

### iOS

Not yet implemented. Requires Xcode and iOS SDK.

```bash
make ios
```

## API

| Function | Signature | Description |
|----------|-----------|-------------|
| `BitFS_Init` | `int (const char* dataDir)` | Initialize engine with data directory |
| `BitFS_GetStatus` | `char* (void)` | Get daemon status as JSON |
| `BitFS_Free` | `void (char* s)` | Free a string returned by this library |
