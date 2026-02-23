import 'package:flutter/material.dart';

/// A list tile representing a single file or directory entry.
///
/// TODO: Accept a file model object and display its metadata
/// (name, size, permissions, last modified).
class FileListTile extends StatelessWidget {
  final String name;
  final bool isDirectory;

  const FileListTile({
    super.key,
    required this.name,
    this.isDirectory = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        isDirectory ? Icons.folder : Icons.insert_drive_file,
        color: isDirectory
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      title: Text(name),
      subtitle: const Text('TODO: file metadata'),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        // TODO: Navigate to file detail or directory contents.
      },
    );
  }
}
