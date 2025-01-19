import 'package:flutter_test/flutter_test.dart';

void main() {
  // The actual function to perform the addition
  int add(int b) {
    return 1 + b;
  }

  // Test block
  test('Addition of 1 + b', () {
    // Arrange
    int b = 2;

    // Act
    int result = add(b);

    // Assert
    expect(result, 3); // Ensure that 1 + 2 equals 3
  });

  // Optional: Run the function and print the result
  print(add(2)); // This will print 3 in the console
}
