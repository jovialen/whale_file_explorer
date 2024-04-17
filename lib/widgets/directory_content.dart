import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whale_file_explorer/theme.dart';
import 'package:whale_file_explorer/utilities/file_system/platform_folders.dart';

class DirectoryContent extends StatefulWidget {
  const DirectoryContent({super.key});

  @override
  State<DirectoryContent> createState() => _DirectoryContentState();
}

class _DirectoryContentState extends State<DirectoryContent> {
  @override
  Widget build(BuildContext context) {
    List<FileSystemEntity> content = getHomeDirectory().listSync().toList();
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: content.length,
      itemBuilder: (context, index) => Text(
        content[index].path,
        style: kParagraph,
      ),
    );
  }
}
