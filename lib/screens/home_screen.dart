import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Home screen — entry point of the app.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BitFS'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'BitFS',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Decentralized Encrypted File System'),
            const SizedBox(height: 48),
            FilledButton.icon(
              onPressed: () => context.go('/files'),
              icon: const Icon(Icons.folder),
              label: const Text('Browse Files'),
            ),
            const SizedBox(height: 16),
            FilledButton.tonalIcon(
              onPressed: () => context.go('/wallet'),
              icon: const Icon(Icons.account_balance_wallet),
              label: const Text('Wallet'),
            ),
            const SizedBox(height: 16),
            OutlinedButton.icon(
              onPressed: () => context.go('/settings'),
              icon: const Icon(Icons.settings),
              label: const Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}
