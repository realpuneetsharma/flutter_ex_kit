part of '../flutter_ex_kit.dart';

/// Extension on [BuildContext] to provide easy access to common MediaQuery properties.
///
/// This extension allows quick retrieval of screen width, height, aspect ratio,
/// and view insets (such as keyboard height).
///
/// Example usage:
/// ```dart
/// double screenWidth = context.mw;
/// double screenHeight = context.mh;
/// ```
///
/// Provided properties:
/// - [mw]: Screen width.
/// - [mh]: Screen height.
/// - [ar]: Screen aspect ratio.
/// - [vIb]: Bottom view inset (e.g., keyboard height).
extension MediaQuerysValues on BuildContext {
  /// Returns the screen width.
  double get mw => MediaQuery.of(this).size.width;

  /// Returns the screen height.
  double get mh => MediaQuery.of(this).size.height;

  /// Returns the screen aspect ratio.
  double get ar => MediaQuery.of(this).size.aspectRatio;

  /// Returns the bottom view inset (e.g., keyboard height).
  double get vIb => MediaQuery.of(this).viewInsets.bottom;
}
