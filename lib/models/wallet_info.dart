/// Wallet information from the BitFS daemon.
///
/// TODO: Add freezed annotation for immutable data class generation.
class WalletInfo {
  /// BSV address (P2PKH).
  final String address;

  /// Balance in satoshis.
  final int balance;

  /// Number of unspent transaction outputs.
  final int utxoCount;

  const WalletInfo({
    required this.address,
    required this.balance,
    required this.utxoCount,
  });

  // TODO: Add fromJson/toJson via json_serializable or freezed.
}
