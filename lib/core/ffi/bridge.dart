import 'dart:ffi';

/// FFI bridge to the native Go library (libbitfs).
///
/// The native library exposes a C ABI with the following signatures:
///
///   int    BitFS_Init(const char* dataDir);
///   char*  BitFS_GetStatus(void);
///   void   BitFS_Free(char* s);
///
/// See `native/bridge.go` for the Go implementation.

// Native function typedefs (C signatures).
typedef BitFSInitNative = Int32 Function(Pointer<Utf8> dataDir);
typedef BitFSGetStatusNative = Pointer<Utf8> Function();
typedef BitFSFreeNative = Void Function(Pointer<Utf8> s);

// Dart function typedefs (after marshalling).
typedef BitFSInitDart = int Function(Pointer<Utf8> dataDir);
typedef BitFSGetStatusDart = Pointer<Utf8> Function();
typedef BitFSFreeDart = void Function(Pointer<Utf8> s);

/// Provides access to the native BitFS engine via FFI.
///
/// Usage:
///   final bridge = BitFSBridge();
///   bridge.init('/path/to/data');
///   final status = bridge.getStatus();
class BitFSBridge {
  // TODO: Load the dynamic library based on platform.
  // On macOS: DynamicLibrary.open('libbitfs.dylib')
  // On Linux: DynamicLibrary.open('libbitfs.so')
  // On Windows: DynamicLibrary.open('libbitfs.dll')
  // On iOS: DynamicLibrary.process()
  // On Android: DynamicLibrary.open('libbitfs.so')

  /// Initialize the BitFS engine with the given data directory.
  ///
  /// Returns 0 on success, non-zero on error.
  int init(String dataDir) {
    // TODO: look up BitFS_Init, convert dataDir to Pointer<Utf8>, call native
    throw UnimplementedError('BitFSBridge.init not yet implemented');
  }

  /// Query the daemon status as a JSON string.
  String getStatus() {
    // TODO: look up BitFS_GetStatus, call native, convert result,
    //       free the returned C string with BitFS_Free
    throw UnimplementedError('BitFSBridge.getStatus not yet implemented');
  }

  /// Free a C string previously allocated by the native library.
  void free(Pointer<Utf8> ptr) {
    // TODO: look up BitFS_Free, call native
    throw UnimplementedError('BitFSBridge.free not yet implemented');
  }
}
