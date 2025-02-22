/// Int extensions
extension IntExt on int {
  /// Converts [int] into English ordinal representation
  ///
  /// ```dart
  /// print(1.ordinal);  // 1st
  /// print(22.ordinal); // 22nd
  /// print(143.ordinal);// 143rd
  /// print(0.ordinal);  // 0th
  /// print(12.ordinal); // 12th
  /// print(69.ordinal); // 69th
  /// ```
  String get ordinal {
    if (this % 100 >= 11 && this % 100 <= 13) return '${this}th';
    switch (this % 10) {
      case 1:
        return '${this}st';
      case 2:
        return '${this}nd';
      case 3:
        return '${this}rd';
      default:
        return '${this}th';
    }
  }

  /// Returns the Roman numeral representation of an integer from 1 to 3999
  ///
  /// ```dart
  /// print(12.roman);   // XII
  /// print(455.roman);  // CDLV
  /// print(1.roman);    // I
  /// print(3999.roman); // MMMCMXCIX
  /// ```
  String get roman {
    if (this < 1 || this > 3999) {
      throw ArgumentError('Number out of range (1 to 3999)');
    }

    final romanMap = {
      1000: 'M',
      900: 'CM',
      500: 'D',
      400: 'CD',
      100: 'C',
      90: 'XC',
      50: 'L',
      40: 'XL',
      10: 'X',
      9: 'IX',
      5: 'V',
      4: 'IV',
      1: 'I',
    };

    var num = this;
    final buffer = StringBuffer();

    for (final entry in romanMap.entries) {
      while (num >= entry.key) {
        buffer.write(entry.value);
        num -= entry.key;
      }
    }

    return buffer.toString();
  }
}
