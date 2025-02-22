import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A singleton utility class that provides commonly used constants and configurations.
///
/// This class ensures a single instance throughout the application lifecycle.
/// It includes logging configurations, UI-related properties, and utility values.
class FlutterExKit {
  /// Private static variable holding the single instance of [FlutterExKit].
  static final FlutterExKit _instance = FlutterExKit._internal();

  /// Private constructor to prevent external instantiation.
  FlutterExKit._internal();

  /// Factory constructor that returns the single instance of [FlutterExKit].
  factory FlutterExKit() {
    return _instance;
  }

  /// A log emoji used for debugging messages.
  ///
  /// Example usage:
  /// ```dart
  /// print('${FlutterExKit().logEmoji} Debug message');
  /// ```
  String get logEmoji => '💢💢💢💢💢💢';

  /// A secondary log emoji used for emphasizing logs.
  ///
  /// Example usage:
  /// ```dart
  /// print('${FlutterExKit().logEmojiDown} Error message');
  /// ```
  String get logEmojiDown => '💯💯💯💯💯💯';

  /// Determines whether logging is enabled.
  ///
  /// Logs are enabled only in debug mode (`kDebugMode`).
  bool get logEnable => kDebugMode;

  /// The default color used for image loaders.
  ///
  /// The color is set to black (`0xff000000`).
  Color get imageLoader => const Color(0xff000000);
}
