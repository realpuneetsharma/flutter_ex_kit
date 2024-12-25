part of '../flutter_ex_kit.dart';

/// A widget that prevents the overscroll indicator from appearing.
///
/// This widget listens for `OverscrollIndicatorNotification` and disables the overscroll
/// indicator when it is triggered. It is useful for preventing the visual feedback of
/// overscrolling in scrollable widgets.
///
/// Example usage:
/// ```dart
/// SingleChildScrollView(
///   child: _OverScrollOff(
///     child: YourWidget(),
///   ),
/// );
/// ```
///
/// Alternatively, use the extension method on [SingleChildScrollView]:
/// ```dart
/// SingleChildScrollView(
///   child: YourWidget(),
/// ).overScrollOff();
/// ```
class _OverScrollOff extends StatelessWidget {
  /// Creates an instance of [_OverScrollOff].
  ///
  /// [child] is the widget that will be wrapped and will not show the overscroll indicator.
  const _OverScrollOff({required this.child});

  /// The widget that will be wrapped by [_OverScrollOff].
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          // Disable the overscroll indicator.
          overscroll.disallowIndicator();
          return true;
        },
        child: child,
      );
}

/// Extension on [SingleChildScrollView] to prevent the overscroll indicator from appearing.
///
/// This extension provides a convenient method to wrap a [SingleChildScrollView] in an
/// [_OverScrollOff] widget, which disables the overscroll indicator.
///
/// Example usage:
/// ```dart
/// SingleChildScrollView(
///   child: YourWidget(),
/// ).overScrollOff();
/// ```
///
/// Returns:
/// A widget that prevents the overscroll indicator from being shown.
extension OverScrollOffExtension on Widget {
  /// Wraps the [SingleChildScrollView] with an [_OverScrollOff] widget to disable the overscroll indicator.
  ///
  /// This method provides a convenient way to apply the overscroll prevention behavior
  /// to a [SingleChildScrollView] without manually wrapping it in an [_OverScrollOff].
  Widget overScrollOff() {
    return _OverScrollOff(child: this);
  }
}
