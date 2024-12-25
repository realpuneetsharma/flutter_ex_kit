part of '../flutter_ex_kit.dart';

/// An extension on the String class to convert hex color codes to Flutter's [Color] object.
///
/// This extension allows you to easily convert a string representing a hex color code
/// (with or without the '#' prefix) into a [Color] object that can be used in your Flutter UI.
///
/// Example usage:
/// ```dart
/// String hexColor = "#FF5733";
/// Color color = hexColor.toColor();
/// ```
///
/// If the hex code is invalid, the extension will return a default color (black by default).
extension HexColorExtension on String {
  /// Converts the current string to a [Color] object.
  ///
  /// This method assumes the string is a hex color code, either with or without the '#' prefix.
  /// It will add full opacity ('FF') if the color code is 6 characters long.
  /// If the color code is invalid, it will return a default color.
  ///
  /// Returns:
  /// - A [Color] object representing the color.
  /// - A default color (black) if the hex code is invalid.
  Color toColor({Color defaultColor = Colors.black}) {
    try {
      // Remove leading '#' if present
      String hexString = replaceAll("#", "");

      // If the hex code is 6 characters long, add 'FF' for full opacity
      if (hexString.length == 6) {
        hexString = "FF$hexString";
      }

      // Check if the string is exactly 8 characters long (for ARGB hex code)
      if (hexString.length != 8) {
        throw const FormatException("Invalid hex color format");
      }

      // Convert the hex string to an integer and create a Color object
      return Color(int.parse(hexString, radix: 16));
    } catch (e) {
      // If any error occurs (invalid hex format), return the default color
      return defaultColor;
    }
  }
}
