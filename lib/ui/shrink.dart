part of '../flutter_ex_kit.dart';

extension SizedBoxShrink on Widget? {
  Widget shrink() => this ?? const SizedBox.shrink();
}
