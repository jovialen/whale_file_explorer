import 'dart:io';

Directory getHomeDirectory() {
  switch (Platform.operatingSystem) {
    case 'linux':
    case 'macos':
      return Directory(Platform.environment["HOME"]!);
    case 'windows':
      return Directory(Platform.environment["USERPROFILE"]!);
    default:
      throw Exception("Unsupported platform ${Platform.operatingSystem}");
  }
}