import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whale_file_explorer/main.dart';
import 'package:whale_file_explorer/theme.dart';
import 'package:whale_file_explorer/widgets/directory_content.dart';
import 'package:whale_file_explorer/widgets/inspector.dart';
import 'package:whale_file_explorer/widgets/navigation_bar.dart';

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
      body: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          LeftBar(),
          MiddleBar(),
          Rightbar(),
        ],
      ),
    );
  }
}

class LeftBar extends StatelessWidget {
  const LeftBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          kTitle,
          style: kHeading,
        ),
        Flexible(
          fit: FlexFit.tight,
          child: QuickNavigation(),
        ),
      ],
    );
  }
}

class MiddleBar extends StatelessWidget {
  const MiddleBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      fit: FlexFit.tight,
      child: DirectoryContent(),
    );
  }
}

class Rightbar extends StatelessWidget {
  const Rightbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Inspector();
  }
}
