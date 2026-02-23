import 'package:flutter/material.dart';

/// A card widget displaying wallet summary information.
///
/// TODO: Accept WalletInfo model and display real data.
class WalletCard extends StatelessWidget {
  final String? address;
  final int? balanceSatoshis;

  const WalletCard({
    super.key,
    this.address,
    this.balanceSatoshis,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet',
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              address ?? 'Not connected',
              style: theme.textTheme.bodySmall?.copyWith(
                fontFamily: 'monospace',
              ),
            ),
            const SizedBox(height: 4),
            Text(
              balanceSatoshis != null
                  ? '${balanceSatoshis! / 100000000} BSV'
                  : '-- BSV',
              style: theme.textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
