part of '../flutter_ex_kit.dart';
enum FileTypeEnum {
  jpg("jpg"),
  jpeg("jpeg"),
  png("png"),
  gif("gif"),
  svg("svg"),
  webp("webp");

  final String value;

  const FileTypeEnum(this.value);

  @override
  String toString() => value;

  static FileTypeEnum fromString(String type) {
    return FileTypeEnum.values.firstWhere(
          (e) => e.value == type,
      orElse: () => throw ArgumentError("Invalid FileType: $type"),
    );
  }
}
