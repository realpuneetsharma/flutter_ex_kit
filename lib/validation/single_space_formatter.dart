import 'package:flutter/services.dart';

/// A custom [TextInputFormatter] that prevents consecutive spaces
/// and ensures that a single space is only allowed between words.
///
/// This formatter helps maintain clean and structured user input
/// by restricting multiple consecutive spaces.
class SingleSpaceFormatter extends TextInputFormatter {
  /// Tracks whether the last entered character was a space.
  ///
  /// This prevents multiple consecutive spaces in the text input.
  bool _isPreviousSpace = false;

  /// Formats the text input by allowing only a single space between words.
  ///
  /// - If the new input contains only a space, the previous value is retained.
  /// - If a space is entered consecutively, it is ignored.
  /// - Otherwise, the input is updated normally.
  ///
  /// **Parameters:**
  /// - [oldValue]: The previous text input value.
  /// - [newValue]: The updated text input value.
  ///
  /// **Returns:**
  /// A [TextEditingValue] that ensures only single spaces are allowed.
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text == ' ') {
      // If only a space is entered, keep the previous value
      return oldValue;
    }

    // Allow a single space only if not preceded by another space
    if (newValue.text == ' ' && _isPreviousSpace) {
      return TextEditingValue(
        text: oldValue.text,
        selection: TextSelection.collapsed(offset: oldValue.text.length),
      );
    }

    // Update the flag based on the last character
    _isPreviousSpace = newValue.text.endsWith(' ');
    return newValue;
  }
}
