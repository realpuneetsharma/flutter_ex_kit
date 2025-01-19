part of '../flutter_ex_kit.dart';

extension MediaQuerysValues on BuildContext {
  double get mw => MediaQuery.of(this).size.width;
  double get mh => MediaQuery.of(this).size.height;
  double get ar => MediaQuery.of(this).size.aspectRatio;
}
