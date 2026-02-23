import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Daemon connection status.
enum DaemonStatus {
  disconnected,
  connecting,
  connected,
  error,
}

/// Provider for the current daemon connection status.
///
/// TODO: Implement actual daemon health check via FFI bridge or HTTP.
final daemonStatusProvider = StateProvider<DaemonStatus>((ref) {
  return DaemonStatus.disconnected;
});
