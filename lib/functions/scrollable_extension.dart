part of '../flutter_ex_kit.dart';

/// Extension on [BuildContext] to provide a method for scrolling a widget into view.
///
/// This extension adds a convenient method to the [BuildContext] for ensuring a widget is visible
/// and optionally scrolling it by a specific number of pixels using a [ScrollController].
///
/// Example usage:
/// ```dart
/// context.scrollToVisible(
///   scrollController: myScrollController,
///   pixels: 50.0,
///   duration: Duration(milliseconds: 200),
///   curve: Curves.easeInOut,
/// );
/// ```
///
/// Parameters:
/// - [scrollController]: An optional [ScrollController] used to perform the scroll action. If not provided,
///   the method will only ensure the widget is visible without scrolling further.
/// - [pixels]: The number of pixels to scroll. Defaults to 30.0.
/// - [duration]: The duration of the scrolling animation. Defaults to 100 milliseconds.
/// - [curve]: The animation curve used for scrolling. Defaults to [Curves.easeInOut].
///
/// This method first ensures that the widget is visible on the screen using [Scrollable.ensureVisible],
/// and then, if a [ScrollController] is provided, scrolls the widget by the specified number of pixels
/// after a delay.
extension ScrollableExtension on BuildContext {
  /// Ensures that the widget associated with this [BuildContext] is visible and scrolls it by the specified number of pixels.
  ///
  /// The method uses [Scrollable.ensureVisible] to ensure that the widget is visible. If a [ScrollController]
  /// is provided, it scrolls the widget by the specified number of pixels after the initial visibility check.
  ///
  /// Example:
  /// ```dart
  /// context.scrollToVisible(
  ///   scrollController: myScrollController,
  ///   pixels: 50.0,
  ///   duration: Duration(milliseconds: 200),
  ///   curve: Curves.easeInOut,
  /// );
  /// ```
  ///
  /// [scrollController] - An optional [ScrollController] for controlling the scrolling action. If null, only visibility is ensured.
  /// [pixels] - The number of pixels to scroll after ensuring the widget is visible. Defaults to 30.0.
  /// [duration] - The duration of the scrolling animation. Defaults to 100 milliseconds.
  /// [curve] - The animation curve for the scrolling. Defaults to [Curves.easeInOut].
  void scrollToVisible({
    ScrollController? scrollController,
    double pixels = 30.0,
    Duration duration = const Duration(milliseconds: 100),
    Curve curve = Curves.easeInOut,
  }) {
    // Ensure the widget is visible
    Scrollable.ensureVisible(
      this,
      duration: Duration.zero,
      curve: curve,
    );

    // Scroll by a specific number of pixels
    if (scrollController != null) {
      Future.delayed(duration, () {
        scrollController.animateTo(
          scrollController.offset - pixels,
          duration: duration,
          curve: curve,
        );
      });
    }
  }
}
