/// String extensions to add useful utility methods.
extension StringExt on String {
  /// Capitalizes each word in the string.
  ///
  /// Example:
  /// ```dart
  /// print('hello world'.capitalize()); // Hello World
  /// ```
  String capitalize() {
    return split(' ').map((e) => e.capitalizeFirst()).join(' ');
  }

  /// Capitalizes only the first letter of the string.
  ///
  /// Example:
  /// ```dart
  /// print('hello world'.capitalizeFirst()); // Hello world
  /// ```
  String capitalizeFirst() {
    if (isEmpty) return '';
    if (length == 1) return toUpperCase();
    return substring(0, 1).toUpperCase() + substring(1);
  }

  /// Mocks a string that needs to be translated.
  ///
  /// Example:
  /// ```dart
  /// print('hello'.mock); // hello 🧨
  /// ```
  String get mock => '$this 🧨';

  /// Checks if the string represents a boolean value.
  ///
  /// If [caseSensitive] is `true` (default), it only accepts `"true"` and `"false"`.
  ///
  /// Example:
  /// ```dart
  /// print('true'.isBool()); // true
  /// print('false'.isBool()); // true
  /// print('TRUE'.isBool()); // false
  /// print('TRUE'.isBool(caseSensitive: false)); // true
  /// ```
  bool isBool({bool caseSensitive = true}) {
    final lowerCaseValue = caseSensitive ? this : toLowerCase();
    return lowerCaseValue == 'true' || lowerCaseValue == 'false';
  }

  /// Converts the string into a boolean value.
  ///
  /// Throws an error if the string is not `"true"` or `"false"`.
  ///
  /// Example:
  /// ```dart
  /// print('true'.toBool()); // true
  /// print('false'.toBool()); // false
  /// ```
  bool toBool({bool caseSensitive = true}) {
    if (!isBool(caseSensitive: caseSensitive)) {
      throw FormatException('Invalid boolean value: $this');
    }
    return (caseSensitive ? this : toLowerCase()) == 'true';
  }

  /// Checks if the string represents a numeric value.
  ///
  /// Example:
  /// ```dart
  /// print('2021'.isNum()); // true
  /// print('3.14'.isNum()); // true
  /// print('abc'.isNum()); // false
  /// ```
  bool isNum() => num.tryParse(this) != null;

  /// Converts the string into a numeric value.
  ///
  /// Throws an error if the string is not a valid number.
  num toNum() => num.parse(this);

  /// Checks if the string represents a double value.
  ///
  /// Example:
  /// ```dart
  /// print('3.14'.isDouble()); // true
  /// print('10'.isDouble()); // true
  /// print('abc'.isDouble()); // false
  /// ```
  bool isDouble() => double.tryParse(this) != null;

  /// Converts the string into a double.
  ///
  /// Throws an error if the string is not a valid double.
  double toDouble() => double.parse(this);

  /// Checks if the string represents an integer value.
  ///
  /// Example:
  /// ```dart
  /// print('10'.isInt()); // true
  /// print('3.14'.isInt()); // false
  /// ```
  bool isInt() => int.tryParse(this) != null;

  /// Converts the string into an integer.
  ///
  /// Throws an error if the string is not a valid integer.
  int toInt() => int.parse(this);

  /// Removes all whitespace from the string.
  ///
  /// Example:
  /// ```dart
  /// print('hello world'.removeAllWhitespace()); // helloworld
  /// ```
  String removeAllWhitespace() => replaceAll(RegExp(r'\s+'), '');

  /// Checks whether the string matches a given regex [pattern].
  ///
  /// Example:
  /// ```dart
  /// print('hello123'.hasMatch(r'\d+')); // true
  /// ```
  bool hasMatch(String pattern) => RegExp(pattern).hasMatch(this);
}
