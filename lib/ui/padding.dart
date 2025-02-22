part of '../flutter_ex_kit.dart';

/// Extension on [Widget] to provide convenient padding methods.
///
/// This extension simplifies the process of adding padding to widgets,
/// allowing for cleaner and more readable code.
///
/// Example usage:
/// ```dart
/// Text('Hello').all(16.0);
/// Container().symmetric(vertical: 8.0, horizontal: 16.0);
/// Icon(Icons.star).only(left: 8.0, top: 4.0);
/// ```
///
/// Methods:
/// - [all]: Applies uniform padding on all sides.
/// - [symmetric]: Applies padding symmetrically on vertical and horizontal axes.
/// - [only]: Applies padding to specific sides.
extension PaddingExtension on Widget {
  /// Applies uniform padding on all sides.
  Widget all(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  /// Applies padding symmetrically along vertical and horizontal axes.
  Widget symmetric({double vertical = 0.0, double horizontal = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  /// Applies padding to specific sides.
  Widget only({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }
}
