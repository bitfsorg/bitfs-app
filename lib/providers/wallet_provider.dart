import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/wallet_info.dart';

/// Provider for wallet information.
///
/// TODO: Implement actual wallet data fetching from daemon.
final walletInfoProvider = FutureProvider<WalletInfo?>((ref) async {
  // TODO: Query daemon for wallet info via FFI bridge or HTTP.
  return null;
});
