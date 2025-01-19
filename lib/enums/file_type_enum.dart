part of '../flutter_ex_kit.dart';

enum FileTypeFroImageEnum {
  jpg("jpg"),
  jpeg("jpeg"),
  png("png"),
  gif("gif"),
  svg("svg"),
  webp("webp");

  final String value;

  const FileTypeFroImageEnum(this.value);

  @override
  String toString() => value;

  static FileTypeFroImageEnum fromString(String type) {
    return FileTypeFroImageEnum.values.firstWhere(
      (e) => e.value == type,
      orElse: () => throw ArgumentError("Invalid FileType: $type"),
    );
  }
}
