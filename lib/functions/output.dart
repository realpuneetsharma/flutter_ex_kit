import 'dart:developer';
import 'package:flutter/foundation.dart';
import '../flutter_ex_kit.dart';
import '../single_ton.dart';

/// Logs the provided response to the console with custom debug markers.
///
/// This function is intended for debugging purposes. It logs the provided [response]
/// to the console only when [kDebugMode] is true. The output is prefixed and suffixed
/// with custom emojis to visually distinguish debug logs.
///
/// Example usage:
/// ```dart
/// output('This is a debug message');
/// ```
///
/// Parameters:
/// - [response]: The object to log. It will be converted to a string using [toString()] method.
///
/// Debug output is only shown in development mode, helping to ensure that sensitive information
/// is not exposed in production logs.
void output(Object? response) {
  // Accessing the singleton instance of ExKit
  FlutterExKit exKit = FlutterExKit();

  // Log the response with emojis, but only in debug mode
  if (exKit.logEnable) {
    log(exKit.logEmoji);
    log(response.toString());
    log(exKit.logEmojiDown);
  }
}
