import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/storage_stats.dart';

/// Provider for storage statistics.
///
/// TODO: Implement actual storage stats fetching from daemon.
final storageStatsProvider = FutureProvider<StorageStats?>((ref) async {
  // TODO: Query daemon for storage stats via FFI bridge or HTTP.
  return null;
});
