part of '../flutter_ex_kit.dart';

/// Extension on the `String` class to provide a convenient method for creating styled [Text] widgets.
///
/// This extension allows any [String] to be easily converted into a [Text] widget with various styling options.
/// You can customize text appearance such as color, font size, weight, decoration, alignment, and more.
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
extension StringTextExtensions on String {
  /// Converts the string into a styled [Text] widget.
  ///
  /// This method provides a flexible way to style text directly from a [String].
  /// It supports a wide range of text styling properties available in [TextStyle].
  ///
  /// ### Parameters:
  /// - [key]: An optional key to uniquely identify this widget.
  /// - [color]: The color of the text.
  /// - [fontSize]: The size of the font.
  /// - [fontWeight]: The weight of the font (e.g., bold).
  /// - [fontFamily]: The font family for the text; if not provided, defaults to [globalFontFamily].
  /// - [fontFamilyFallback]: A list of fallback font families.
  /// - [fontStyle]: The style of the font (normal, italic).
  /// - [letterSpacing]: The space between letters.
  /// - [wordSpacing]: The space between words.
  /// - [height]: The line height of the text.
  /// - [textAlign]: The alignment of the text (left, center, right, etc.).
  /// - [textDirection]: The direction of the text (LTR/RTL).
  /// - [maxLines]: The maximum number of lines the text can span.
  /// - [overflow]: Defines how the text should handle overflow.
  /// - [textScaler]: Controls the scaling behavior of the text.
  /// - [decoration]: The type of text decoration (underline, line-through, etc.).
  /// - [decorationColor]: The color of the decoration.
  /// - [decorationThickness]: The thickness of the decoration.
  /// - [decorationStyle]: The style of the decoration (dashed, dotted, etc.).
  /// - [backgroundColor]: The background color of the text.
  /// - [foreground]: A paint object that replaces the text color.
  /// - [background]: A paint object that replaces the background color.
  /// - [shadows]: A list of shadows for the text.
  /// - [textBaseline]: The baseline alignment of the text.
  /// - [strutStyle]: Defines the minimum line height of the text.
  /// - [textHeightBehavior]: Defines how the height of the text behaves.
  /// - [textWidthBasis]: Defines whether the width is based on the longest or tightest line.
  /// - [semanticsLabel]: A label for accessibility purposes.
  /// - [softWrap]: Defines whether the text should break at soft line breaks.
  /// - [selectionColor]: The color used when the text is selected.
  /// - [leadingDistribution]: Defines how extra leading space is distributed.
  /// - [inherit]: Whether to inherit styles from the parent text theme.
  /// - [locale]: The locale used for text rendering.
  /// - [debugLabel]: Debugging label for developers.
  /// - [package]: The name of the package from which the font is loaded.
  /// - [fontVariations]: Specifies font variations.
  /// - [fontFeatures]: Defines OpenType font features.
  Widget style({
    Key? key,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    double? height,
    TextAlign? textAlign,
    TextDirection? textDirection,
    int? maxLines,
    TextOverflow? overflow,
    TextScaler? textScaler,
    TextDecoration? decoration,
    Color? decorationColor,
    double? decorationThickness,
    TextDecorationStyle? decorationStyle,
    Color? backgroundColor,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    TextBaseline? textBaseline,
    StrutStyle? strutStyle,
    TextHeightBehavior? textHeightBehavior,
    TextWidthBasis? textWidthBasis,
    String? semanticsLabel,
    bool? softWrap,
    List<FontVariation>? fontVariations,
    Locale? locale,
    String? debugLabel,
    String? package,
    List<FontFeature>? fontFeatures,
    Color? selectionColor,
    bool inherit = false,
    TextLeadingDistribution? leadingDistribution,
  }) =>
      Text(
        this,
        key: key,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          fontFamilyFallback: fontFamilyFallback,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          height: height,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationThickness: decorationThickness,
          decorationStyle: decorationStyle,
          backgroundColor: backgroundColor,
          foreground: foreground,
          background: background,
          shadows: shadows,
          textBaseline: textBaseline,
          leadingDistribution: leadingDistribution,
          debugLabel: debugLabel,
          inherit: inherit,
          locale: locale,
          fontVariations: fontVariations,
          fontFeatures: fontFeatures,
          overflow: overflow,
          package: package,
        ),
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        overflow: overflow,
        textScaler: textScaler,
        strutStyle: strutStyle,
        textHeightBehavior: textHeightBehavior,
        textWidthBasis: textWidthBasis,
        semanticsLabel: semanticsLabel,
        softWrap: softWrap,
        locale: locale,
        selectionColor: selectionColor,
      );
}
