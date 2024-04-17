import 'package:flutter/material.dart';
import 'package:whale_file_explorer/screens/main_page.dart';
import 'package:window_size/window_size.dart';

const kName = "Whale File Explorer";
const kTitle = "Files";

void main() {
  runApp(const WhaleFileExplorerApp());
}

class WhaleFileExplorerApp extends StatelessWidget {
  const WhaleFileExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowTitle(kTitle);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      title: kName,
    );
  }
}
