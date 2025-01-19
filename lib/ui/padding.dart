part of '../flutter_ex_kit.dart';

extension PaddingExtension on Widget {
  // Creates Padding with all sides padded equally
  Widget all(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  // Creates Padding with symmetric vertical and horizontal padding
  Widget symmetric({double vertical = 0.0, double horizontal = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  // Creates Padding with specific padding for each side
  Widget only(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }
}
