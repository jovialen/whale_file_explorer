import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whale_file_explorer/file_system/platform_folders.dart';
import 'package:window_size/window_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle("Files");
    return const MaterialApp(
      title: 'Whale File Explorer',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: "Whale File Explorer"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<FileSystemEntity> homeDir = getHomeDirectory().listSync().toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: homeDir.length,
        itemBuilder:(context, index) {
          return Text(homeDir[index].path);
        },
      )
    );
  }
}
