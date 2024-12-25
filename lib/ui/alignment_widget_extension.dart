import 'package:flutter/material.dart';
/// Extension methods for aligning a widget within a parent widget.
///
/// This extension adds multiple alignment helper methods to the [Widget] class, making it easier
/// to align widgets at specific positions within a parent container.
///
/// These alignment methods use the [Align] widget and allow the widget to be positioned at the
/// top-left, top-center, top-right, center, bottom-left, bottom-center, or bottom-right of its
/// parent. Additionally, optional width and height parameters are available to control the size of
/// the widget during alignment.
extension AlignmentWidgetExtension on Widget {

  /// Aligns the widget to the top-left corner of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Top Left').alignTopLeft(width: 100, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignTopLeft({double? width, double? height}) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the top-center of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Top Center').alignTopCenter(width: 200, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignTopCenter({double? width, double? height}) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the top-right corner of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Top Right').alignTopRight(width: 100, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignTopRight({double? width, double? height}) {
    return Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the center of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Center').alignCenter(width: 150, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignCenter({double? width, double? height}) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the bottom-left corner of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Bottom Left').alignBottomLeft(width: 100, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignBottomLeft({double? width, double? height}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the bottom-center of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Bottom Center').alignBottomCenter(width: 150, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignBottomCenter({double? width, double? height}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }

  /// Aligns the widget to the bottom-right corner of its parent container.
  /// Optionally, width and height can be provided to constrain the widget's size.
  ///
  /// Example usage:
  /// ```dart
  /// Text('Bottom Right').alignBottomRight(width: 100, height: 50);
  /// ```
  ///
  /// Parameters:
  /// - [width]: Optional width for the widget.
  /// - [height]: Optional height for the widget.
  Widget alignBottomRight({double? width, double? height}) {
    return Align(
      alignment: Alignment.bottomRight,
      child: SizedBox(
        width: width,
        height: height,
        child: this,
      ),
    );
  }
}
