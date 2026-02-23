/// Information about a BitFS daemon node.
///
/// TODO: Add freezed annotation for immutable data class generation.
class NodeInfo {
  final String id;
  final String address;
  final String version;
  final Duration uptime;

  const NodeInfo({
    required this.id,
    required this.address,
    required this.version,
    required this.uptime,
  });

  // TODO: Add fromJson/toJson via json_serializable or freezed.
}
