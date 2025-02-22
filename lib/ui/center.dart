part of '../flutter_ex_kit.dart';

/// Extension on [Widget] to provide a convenience method for centering widgets.
///
/// This extension allows any widget to be easily wrapped in a [Center] widget,
/// making it simple to align elements centrally in a layout.
///
/// Example usage:
/// ```dart
/// Text('Hello').center();
/// ```
///
/// Parameters:
/// - [heightFactor]: Multiplier for the child's height (optional).
/// - [widthFactor]: Multiplier for the child's width (optional).
/// - [key]: An optional key for the [Center] widget.
extension CenteredWidget on Widget {
  /// Wraps the widget with a [Center] widget.
  ///
  /// Allows for optional height and width factors to control the scaling of the centered child.
  ///
  /// Example:
  /// ```dart
  /// Container(width: 100, height: 100, color: Colors.red).center();
  /// ```
  Widget center({Key? key, double? heightFactor, double? widthFactor}) {
    return Center(
      key: key,
      heightFactor: heightFactor,
      widthFactor: widthFactor,
      child: this,
    );
  }
}