/// Storage statistics from the BitFS content-addressed store.
///
/// TODO: Add freezed annotation for immutable data class generation.
class StorageStats {
  /// Total number of stored files.
  final int totalFiles;

  /// Total storage size in bytes.
  final int totalBytes;

  /// Number of hash-sharded directories.
  final int shardCount;

  const StorageStats({
    required this.totalFiles,
    required this.totalBytes,
    required this.shardCount,
  });

  // TODO: Add fromJson/toJson via json_serializable or freezed.
}
