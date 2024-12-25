part of '../flutter_ex_kit.dart';

/// Handles the exit logic for a Flutter application.
///
/// This function is used to manage the app's exit behavior when the back button is pressed.
/// It allows the user to press the back button twice within a 2-second window to exit the app.
///
/// If the user presses the back button once, it shows a message instructing them to press again.
/// If the user presses the back button again within the 2-second window, the app will exit.
///
/// Example usage:
/// ```dart
/// exitApp(
///   currentBackPressTime: _lastBackPressTime,
///   exit: () {
///     // Custom exit behavior (if needed)
///   },
/// );
/// ```
///
/// Parameters:
/// - [currentBackPressTime]: The time when the back button was last pressed. This should be
///   updated with the current time on each back button press to track the time difference.
/// - [exit]: An optional callback function that will be executed if the back button is pressed
///   for the first time. If not provided, a default message will be shown.
/// - [notExit]: An optional callback that will be executed when the user chooses not to exit.
///
/// If the [currentBackPressTime] is null or the time difference since the last press is greater
/// than 2 seconds, it will update the [currentBackPressTime] and either call the [exit] callback
/// or show a default message using the [output] function. If the time difference is less than
/// 2 seconds, it will exit the app using [SystemNavigator.pop].
void exitApp({
  DateTime? currentBackPressTime,
  VoidCallback? exit,
  VoidCallback? notExit,
}) {
  DateTime now = DateTime.now();

  // If it's been more than 2 seconds since the last press
  if (currentBackPressTime == null ||
      now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
    // Update the time of the last press
    currentBackPressTime = now;

    // Execute custom exit behavior or fallback to default
    if (exit != null) {
      exit.call();
    } else {
      notExit?.call(); // Calls the notExit callback if provided
    }
  } else {
    // Exit the app if the second press is within 2 seconds
    SystemNavigator.pop(); // Exits the app
  }
}
