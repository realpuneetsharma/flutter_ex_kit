part of '../flutter_ex_kit.dart';

/// Extension on the [Scaffold] widget to add a method for customizing the status bar and navigation bar colors.
///
/// This extension allows you to easily modify the appearance of the status bar and system navigation bar when using a [Scaffold].
/// It also provides options to adjust the brightness of the icons and enforce contrast settings for better visibility.
///
/// Example usage:
/// ```dart
/// Scaffold(
///   body: Center(child: Text('Hello, World!')),
/// ).withStatusBarColor(
///   statusBarColor: Colors.blue,  // Background color of the status bar
///   systemNavigationBarColor: Colors.black,  // Background color of the system navigation bar
///   statusBarIconBrightness: Brightness.light,  // Brightness of the status bar icons
/// );
/// ```
///
/// Parameters:
/// - [statusBarColor]: The color of the status bar background. This parameter is required.
/// - [systemNavigationBarColor]: The color of the system navigation bar background. Defaults to [Colors.white].
/// - [statusBarIconBrightness]: The brightness of the status bar icons. Defaults to [Brightness.light].
///
/// Returns:
/// - A [Widget] wrapped in an [AnnotatedRegion] that applies the specified [SystemUiOverlayStyle] settings to the status bar and navigation bar.
///
/// The [SystemUiOverlayStyle] allows for customization of system UI elements like the status bar and navigation bar.
/// By using this extension, you can easily apply consistent styling to these areas across your app.
extension ScaffoldExtensions on Scaffold {
  /// Wraps the [Scaffold] widget with an [AnnotatedRegion] that applies the specified system UI overlay style settings.
  ///
  /// This method customizes the status bar and navigation bar appearance by setting their background colors,
  /// icon brightness, and contrast enforcement.
  ///
  /// Example:
  /// ```dart
  /// Scaffold(
  ///   body: Center(child: Text('Custom StatusBar and NavigationBar')),
  /// ).withStatusBarColor(
  ///   statusBarColor: Colors.teal,
  ///   systemNavigationBarColor: Colors.blueGrey,
  ///   statusBarIconBrightness: Brightness.dark,
  /// );
  /// ```
  ///
  /// [statusBarColor] - The color to use for the status bar background. This is a required parameter.
  /// [systemNavigationBarColor] - The color to use for the system navigation bar background. Defaults to [Colors.white].
  /// [statusBarIconBrightness] - The brightness level of the status bar icons. Defaults to [Brightness.light].
  ///
  /// Returns a [Widget] that includes the specified [SystemUiOverlayStyle] settings for the status bar and navigation bar.
  Widget withStatusBarColor({
    required Color statusBarColor,
    Color systemNavigationBarColor = Colors.white,
    Brightness statusBarIconBrightness = Brightness.light,
  }) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: statusBarColor,
        statusBarIconBrightness: statusBarIconBrightness,
        systemNavigationBarColor: systemNavigationBarColor,
        statusBarBrightness: Brightness.light,
        systemStatusBarContrastEnforced: true,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: this,
    );
  }
}
