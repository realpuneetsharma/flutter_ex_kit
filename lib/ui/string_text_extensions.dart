part of '../flutter_ex_kit.dart';

/// A global variable to store the default font family.
/// This value can be changed throughout the app to apply a consistent font family to all text widgets.
String globalFontFamily = '';

/// Extension on the `String` class to provide a convenient method for creating styled [Text] widgets.
///
/// This extension allows any [String] to be easily converted into a [Text] widget with a variety of styling options.
/// You can customize text appearance such as color, font size, weight, decoration, and alignment.
///
/// Example usage:
/// ```dart
/// 'Hello, World!'.style(
///   color: Colors.blue,
///   fontSize: 24.0,
///   fontWeight: FontWeight.bold,
///   textAlign: TextAlign.center,
/// );
/// ```
///
/// Parameters:
/// - [color]: The color of the text.
/// - [fontSize]: The size of the font.
/// - [decorationThickness]: The thickness of the text decoration (e.g., underline).
/// - [height]: The line height of the text.
/// - [fontWeight]: The weight of the font (e.g., bold).
/// - [decorationStyle]: The style of the text decoration (e.g., dashed underline).
/// - [decoration]: The type of text decoration (e.g., underline, strike-through).
/// - [maxLines]: The maximum number of lines the text can span.
/// - [overflow]: How to handle text overflow (e.g., ellipsis, fade).
/// - [textAlign]: The alignment of the text (e.g., left, center, right).
/// - [fontFamily]: The font family for the text; if not provided, defaults to [globalFontFamily].
extension StringTextExtensions on String {
  /// Creates a [Text] widget with the specified styling options.
  ///
  /// This method allows you to apply various styles to the text, including color, size, weight, decoration, and alignment.
  ///
  /// Example:
  /// ```dart
  /// 'Styled Text'.style(
  ///   color: Colors.red,
  ///   fontSize: 20.0,
  ///   fontWeight: FontWeight.w500,
  ///   textAlign: TextAlign.right,
  /// );
  /// ```
  ///
  /// [color] - The color of the text.
  /// [fontSize] - The font size.
  /// [decorationThickness] - Thickness of the text decoration.
  /// [height] - The line height of the text.
  /// [fontWeight] - The weight of the font.
  /// [decorationStyle] - Style of the text decoration.
  /// [decoration] - Type of text decoration.
  /// [maxLines] - Maximum number of lines.
  /// [overflow] - Handling of text overflow.
  /// [textAlign] - Text alignment.
  /// [fontFamily] - Font family; defaults to [globalFontFamily] if not provided.
  Widget style({
    Color? color,
    double? fontSize,
    double? decorationThickness,
    double? height,
    FontWeight? fontWeight,
    TextDecorationStyle? decorationStyle,
    TextDecoration? decoration,
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? textAlign,
    String? fontFamily,
  }) =>
      Text(
        this,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily ?? globalFontFamily,
          height: height,
          decorationThickness: decorationThickness,
          decorationStyle: decorationStyle,
          decoration: decoration,
        ),
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
      );
}
