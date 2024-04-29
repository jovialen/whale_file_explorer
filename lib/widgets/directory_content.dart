import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whale_file_explorer/theme.dart';
import 'package:whale_file_explorer/utilities/file_system/platform_folders.dart';

class DirectoryContent extends StatefulWidget {
  late Directory directory = getHomeDirectory();

  DirectoryContent({super.key});

  @override
  State<DirectoryContent> createState() => _DirectoryContentState();
}

class _DirectoryContentState extends State<DirectoryContent> {
  changeDirectory(dir) {
    if (dir is! Directory) {
      return;
    }

    setState(() {
      widget.directory = dir;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<FileSystemEntity> content = widget.directory.listSync().toList();

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: content.length,
      itemBuilder: (context, index) => TextButton(
        onPressed: () => changeDirectory(content[index]),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            content[index].path,
            style: kParagraph,
          ),
        ),
      ),
    );
  }
}
