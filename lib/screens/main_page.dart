import 'package:flutter/material.dart';
import 'package:whale_file_explorer/main.dart';
import 'package:whale_file_explorer/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          "Hello $kName",
          style: TextStyle(
            fontFamily: "Noto Sans Regular",
            color: kForegroundColor,
          ),
        ),
      ),
    );
  }
}
