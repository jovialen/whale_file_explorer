import 'dart:io';

import 'package:path/path.dart' as path;

class Path {
  String raw;

  Path(this.raw) {
    raw = path.normalize(raw);
  }

  static Path fromFile(File file) {
    return Path(file.path);
  }

  static Path fromDirectory(Directory directory) {
    return Path(directory.path);
  }

  Future<bool> exists() async {
    return await isFile() || await isDirectory();
  }

  Path join(Path next) {
    return Path(path.join(next.raw));
  }

  bool isAbsolute() {
    return path.isAbsolute(raw);
  }

  bool isRelative() {
    return path.isRelative(raw);
  }

  String basename({bool extension = true}) {
    return extension ? path.basename(raw) : path.basenameWithoutExtension(raw);
  }

  String extension() {
    return path.extension(raw);
  }

  String dirname() {
    return path.dirname(raw);
  }

  Path canonicalize() {
    return Path(path.canonicalize(raw));
  }

  @override
  bool operator ==(other) {
    return other is Path && path.equals(raw, other.raw);
  }

  @override
  int get hashCode => raw.hashCode;

  Future<bool> isFile() async {
    final file = File(raw);
    return await file.exists();
  }

  Future<bool> isDirectory() async {
    final dir = Directory(raw);
    return await dir.exists();
  }

  File asFile() {
    return File(raw);
  }

  Directory asDirectory() {
    return Directory(raw);
  }
}