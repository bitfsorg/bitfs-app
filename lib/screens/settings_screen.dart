import 'package:flutter/material.dart';

/// Settings screen — app and daemon configuration.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: const [
          // TODO: Implement settings options.
          ListTile(
            leading: Icon(Icons.dns),
            title: Text('Daemon'),
            subtitle: Text('Configure daemon connection'),
          ),
          ListTile(
            leading: Icon(Icons.storage),
            title: Text('Storage'),
            subtitle: Text('Manage local storage'),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text('Security'),
            subtitle: Text('Encryption and key management'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            subtitle: Text('BitFS v0.1.0'),
          ),
        ],
      ),
    );
  }
}
