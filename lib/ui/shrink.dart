part of '../flutter_ex_kit.dart';

/// Extension on [Widget] to provide convenient methods for handling nullable widgets.
///
/// This extension ensures that a nullable widget does not cause layout issues by returning a [SizedBox.shrink()]
/// when the widget is `null`. It also includes additional methods for spacing and visibility handling.
extension WidgetExtensions on Widget? {
  /// Returns the widget if it's not null; otherwise, returns an empty [SizedBox.shrink()].
  Widget shrink() => this ?? const SizedBox.shrink();
}
