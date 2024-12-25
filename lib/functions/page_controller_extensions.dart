part of '../flutter_ex_kit.dart';

/// Extension on [PageController] to provide convenient methods for navigating between pages.
///
/// This extension adds two methods to [PageController] for navigating to the next and previous pages.
/// It simplifies the process of page navigation in a [PageView] widget by providing convenient methods.
///
/// Example usage:
/// ```dart
/// PageController _pageController = PageController();
///
/// // Navigate to the next page
/// _pageController.goToNextPage();
///
/// // Navigate to the previous page
/// _pageController.goToPreviousPage();
/// ```
///
/// Methods:
/// - [goToNextPage]: Animates the page view to the next page with a duration of 300 milliseconds
///   and an easing curve of [Curves.easeIn].
/// - [goToPreviousPage]: Animates the page view to the previous page with a duration of 300 milliseconds
///   and an easing curve of [Curves.easeIn].
///
/// Both methods check if the [PageController] has clients before attempting to navigate. This prevents
/// errors if the controller is not attached to a [PageView].
extension PageControllerExtensions on PageController {
  /// Navigates to the next page in the [PageView].
  ///
  /// This method animates the page view to the next page with a duration of 300 milliseconds and
  /// an easing curve of [Curves.easeIn]. It only performs the animation if the [PageController] has clients.
  void goToNextPage() {
    if (hasClients) {
      nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  /// Navigates to the previous page in the [PageView].
  ///
  /// This method animates the page view to the previous page with a duration of 300 milliseconds and
  /// an easing curve of [Curves.easeIn]. It only performs the animation if the [PageController] has clients.
  void goToPreviousPage() {
    if (hasClients) {
      previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }
}
