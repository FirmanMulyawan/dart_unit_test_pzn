// ============ Matcher package
// - saat kita membuat assertion pada unit test, pengecekannya tidak hanya menggunakan kondisi equals, kandang ada kondisi lain
// - kita bisa menggunakan matcher package, dimana terdapat banyak sekali function dan constant yang bisa kita gunakan untuk mempermudah kita melakukan assertion
// - https://pub.dev/packages/matcher
// - saat menginstall test package, matcher package otomatis terinstall, sehingga kita tidak perlu menginstallnya secara manual

// ============ menggunakan matcher
// - https://pub.dev/documentation/matcher/latest/matcher/Matcher-class.html
// - cara penggunaan matcher, kita bisa menggunakannya pada parameter kedua pada expect function: expect(value, matcher)

import 'package:test/test.dart';

String sayHello(String name) {
  return "Hello $name";
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Test sayHello() with matcher', () {
    expect(sayHello('Eko'), endsWith('Eko'));
    expect(sayHello('Eko'), startsWith('Hello'));
    expect(sayHello('Eko'), equalsIgnoringCase('hello eko'));
    expect(sayHello('Eko'), isA<String>());
  });

  test("test sum() with matcher", () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(10));
  });
}
