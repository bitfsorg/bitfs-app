import 'package:flutter/material.dart';

/// Wallet screen — displays BSV wallet information and transactions.
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance_wallet, size: 64),
            SizedBox(height: 16),
            Text(
              'Wallet',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('TODO: Display wallet address, balance, and UTXOs'),
          ],
        ),
      ),
    );
  }
}
