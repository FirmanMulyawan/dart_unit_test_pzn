// ============ Group Function
// - group() function merupakan sebuah function yang bisa digunakan untuk melakukan grouping test function
// - melakukan grouping lebih bagus digunakan ketika sebuah file unit test berisikan banyak sekali test function

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test sum()", () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    });
    group("Test sum()", () {
      test("positive", () {
        expect(sum(1, 2), equals(3));
      });
      test("negative", () {
        expect(sum(10, -5), equals(5));
      });
    });
  });
}
