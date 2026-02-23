import 'package:flutter/material.dart';

/// File browser screen — lists files from the Metanet DAG.
class FileBrowserScreen extends StatelessWidget {
  const FileBrowserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Files'),
      ),
      body: ListView(
        children: const [
          // TODO: Populate with actual file entries from daemon.
          ListTile(
            leading: Icon(Icons.folder),
            title: Text('No files loaded'),
            subtitle: Text('Connect to daemon to browse files'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement file upload / put action.
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
