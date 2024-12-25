part of '../flutter_ex_kit.dart';

/// Adds pagination functionality to a scrollable widget.
///
/// This function allows you to trigger a callback function when the user scrolls
/// to the end of the list. It uses a [ScrollController] to monitor the scroll
/// position and invokes the provided [fun] callback when the maximum scroll extent
/// is reached.
///
/// Example usage:
/// ```dart
/// ScrollController _controller = ScrollController();
/// paginationFunction(
///   fun: () {
///     // Load more data or perform pagination
///   },
///   controller: _controller,
/// );
/// ```
///
/// Parameters:
/// - [fun]: A required callback function to be executed when the user scrolls
///   to the end of the scrollable widget. This function is called when the maximum
///   scroll extent is reached.
/// - [controller]: A required [ScrollController] instance that controls the scrollable
///   widget and is used to listen to scroll events.
///
/// The [paginationFunction] attaches a listener to the provided [ScrollController],
/// which checks if the current scroll offset has reached the maximum scroll extent.
/// When this condition is met, it calls the provided callback function [fun].
void paginationFunction({
  required Function() fun,
  required ScrollController controller,
}) {
  controller.addListener(
    () {
      if (controller.position.maxScrollExtent == controller.offset) {
        fun.call();
      }
    },
  );
}
