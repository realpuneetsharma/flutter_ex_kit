part of '../flutter_ex_kit.dart';

/// Represents the supported file types for image formats.
enum FileTypeForImageEnum {
  /// JPEG format with `.jpg` extension.
  jpg("jpg"),

  /// JPEG format with `.jpeg` extension.
  jpeg("jpeg"),

  /// PNG format with `.png` extension.
  png("png"),

  /// GIF format with `.gif` extension.
  gif("gif"),

  /// SVG format with `.svg` extension.
  svg("svg"),

  /// WEBP format with `.webp` extension.
  webp("webp");

  /// The string representation of the file type.
  final String value;

  /// Creates a file type with the specified string value.
  const FileTypeForImageEnum(this.value);

  /// Returns the string representation of the file type.
  @override
  String toString() => value;

  /// Returns the corresponding [FileTypeForImageEnum] from a string.
  ///
  /// Throws an [ArgumentError] if the provided [type] is not valid.
  static FileTypeForImageEnum fromString(String type) {
    return FileTypeForImageEnum.values.firstWhere(
          (e) => e.value == type,
      orElse: () => throw ArgumentError("Invalid FileType: $type"),
    );
  }
}
