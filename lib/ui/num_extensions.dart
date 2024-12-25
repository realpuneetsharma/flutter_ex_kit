part of '../flutter_ex_kit.dart';

/// Extension on the [num] type to provide convenience methods for creating [SizedBox] widgets.
///
/// This extension adds methods to the [num] type, allowing you to easily create [SizedBox] widgets
/// with specified height or width. This is particularly useful for creating spacing in your Flutter layouts.
///
/// Example usage:
/// ```dart
/// // Create a SizedBox with a height of 20.0
/// 20.height
///
/// // Create a SizedBox with a width of 30.0
/// 30.width
/// ```
///
/// The extension methods provided are:
/// - [height]: Creates a [SizedBox] with the specified height.
/// - [width]: Creates a [SizedBox] with the specified width.
///
/// These methods are useful for creating padding and spacing in your Flutter widgets without needing to
/// instantiate [SizedBox] manually each time.
extension Pad on num {
  /// Creates a [SizedBox] with the specified height.
  ///
  /// This method converts the [num] value to a [double] and uses it to set the height of the [SizedBox].
  ///
  /// Example:
  /// ```dart
  /// 40.height // Creates a SizedBox with a height of 40.0
  /// ```
  SizedBox get height => SizedBox(
        height: toDouble(),
      );

  /// Creates a [SizedBox] with the specified width.
  ///
  /// This method converts the [num] value to a [double] and uses it to set the width of the [SizedBox].
  ///
  /// Example:
  /// ```dart
  /// 50.width // Creates a SizedBox with a width of 50.0
  /// ```
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}
