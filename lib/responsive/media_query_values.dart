part of '../flutter_ex_kit.dart';

/// Extension on [BuildContext] to provide convenient access to media query values.
///
/// This extension adds properties to [BuildContext] that allow for easy retrieval of
/// the media query's width and height values. This is useful for responsive design
/// and layout calculations based on the screen size.
///
/// Example usage:
/// ```dart
/// double width = context.mw;
/// double height = context.mh;
/// ```
///
/// Properties:
/// - [mw]: The width of the screen in logical pixels.
/// - [mh]: The height of the screen in logical pixels.
///
/// These properties use the [MediaQuery] to access the screen dimensions, simplifying the
/// process of getting these values in your widget's build methods.
extension MediaQueryValues on BuildContext {
  /// Gets the width of the screen in logical pixels.
  ///
  /// This property retrieves the width of the screen using [MediaQuery.of(this).size.width].
  /// It's a shortcut to access the screen width without needing to call [MediaQuery] directly.
  double get mw => MediaQuery.of(this).size.width;

  /// Gets the height of the screen in logical pixels.
  ///
  /// This property retrieves the height of the screen using [MediaQuery.of(this).size.height].
  /// It's a shortcut to access the screen height without needing to call [MediaQuery] directly.
  double get mh => MediaQuery.of(this).size.height;
}

/// Extension on [BuildContext] to provide additional properties for querying media query information.
///
/// This extension adds various helper methods to easily check screen orientation, device size,
/// and other device-specific properties. It's designed to simplify responsive design
/// and allow for conditional UI elements based on the device's properties.
///
/// Example usage:
/// ```dart
/// bool isLandscape = context.isLandscape;
/// bool isTablet = context.isTablet;
/// double devicePixelRatio = context.devicePixelRatio;
/// ```
///
/// Properties:
/// - [alwaysUse24HourFormat]: Returns whether the device uses 24-hour format.
/// - [devicePixelRatio]: The ratio of logical pixels to physical pixels for the screen.
/// - [height]: The height of the screen.
/// - [isLandscape]: Returns true if the device is in landscape mode.
/// - [isLargeTablet]: Returns true if the device is a large tablet (shortest side >= 720px).
/// - [isPhone]: Returns true if the device is a phone (shortest side < 600px).
/// - [isPortrait]: Returns true if the device is in portrait mode.
/// - [isSmallTablet]: Returns true if the device is a small tablet (shortest side >= 600px).
/// - [isTablet]: Returns true if the device is a tablet (either small or large).
/// - [mediaQueryPadding]: The padding of the screen.
extension MediaQueryExt on BuildContext {
  /// Returns whether the device uses 24-hour format.
  bool get always24HourFormat => MediaQuery.of(this).alwaysUse24HourFormat;

  /// Returns the device pixel ratio (scaling factor).
  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  /// Returns the height of the screen, updated when the screen is resized.
  double get mh => mediaQuerySize.height;

  /// Returns true if the device is in landscape mode.
  bool get isLandscape => orientation == Orientation.landscape;

  /// Returns true if the shortest side of the screen is greater than or equal to 720 pixels.
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// Returns true if the shortest side of the screen is smaller than 600 pixels (phone).
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// Returns true if the device is in portrait mode.
  bool get isPortrait => orientation == Orientation.portrait;

  /// Returns true if the shortest side of the screen is greater than or equal to 600 pixels (small tablet).
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// Returns true if the device is a tablet (either small or large).
  bool get isTablet => isSmallTablet || isLargeTablet;

  /// Returns the padding of the screen (e.g., notches, status bars).
  EdgeInsets get mediaQueryPadding => MediaQuery.of(this).padding;

  /// Returns the shortest side of the screen (width or height).
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// Returns the size of the screen.
  Size get mediaQuerySize => MediaQuery.of(this).size;

  /// Returns the view insets of the screen (e.g., keyboard).
  EdgeInsets get mediaQueryViewInsets => MediaQuery.of(this).viewInsets;

  /// Returns the view padding of the screen.
  EdgeInsets get mediaQueryViewPadding => MediaQuery.of(this).viewPadding;

  /// Returns whether the device uses 24-hour format, same as [alwaysUse24HourFormat].
  bool get mqAlwaysUse24HourFormat => MediaQuery.alwaysUse24HourFormatOf(this);

  /// Returns the device pixel ratio, same as [devicePixelRatio].
  double get mqDevicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// Returns the height of the screen, same as [height].
  double get mqHeight => mqSize.height;

  /// Returns the orientation of the screen (portrait or landscape).
  Orientation get mqOrientation => MediaQuery.orientationOf(this);

  /// Returns the padding of the screen, same as [mediaQueryPadding].
  EdgeInsets get mqPadding => MediaQuery.paddingOf(this);

  /// Returns the platform brightness of the screen (light or dark mode).
  Brightness get mqPlatformBrightness => MediaQuery.platformBrightnessOf(this);

  /// Returns the size of the screen, same as [mediaQuerySize].
  Size get mqSize => MediaQuery.sizeOf(this);

  /// Returns the text scale factor of the screen.
  TextScaler get mqTextScaleFactor => MediaQuery.textScalerOf(this);

  /// Returns the view insets of the screen, same as [mediaQueryViewInsets].
  EdgeInsets get mqViewInsets => MediaQuery.viewInsetsOf(this);

  /// Returns the view padding of the screen, same as [mediaQueryViewPadding].
  EdgeInsets get mqViewPadding => MediaQuery.viewPaddingOf(this);

  /// Returns the width of the screen, same as [width].
  double get mqWidth => mqSize.width;

  /// Returns the orientation of the screen, same as [orientation].
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// Returns the platform brightness of the screen, same as [platformBrightness].
  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  /// Returns true if the width is larger than 800 pixels (useful for showing navigation bars on larger devices).
  bool get showNavbar => (mw > 800);

  /// Returns the width of the screen, same as [mediaQuerySize.width].
  double get mw => mediaQuerySize.width;

  /// Returns a responsive value based on the device width.
  /// - If the device width is >= 1200, returns [desktop] value.
  /// - If the device width is >= 600 but < 1200, returns [tablet] value.
  /// - If the device width is < 600, returns [mobile] value.
  ///
  /// Usage example:
  /// ```dart
  /// var layout = context.responsiveValue(
  ///   mobile: 'Mobile Layout',
  ///   tablet: 'Tablet Layout',
  ///   desktop: 'Desktop Layout'
  /// );
  /// ```
  T? responsiveValue<T>({
    T? mobile,
    T? tablet,
    T? desktop,
  }) {
    var deviceWidth = mediaQuerySize.shortestSide;
    if (Platform.isWindows) {
      deviceWidth = mediaQuerySize.width;
    }
    if (deviceWidth >= 1200 && desktop != null) return desktop;
    if (deviceWidth >= 600 && tablet != null) return tablet;
    return mobile;
  }
}
