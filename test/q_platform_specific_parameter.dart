// ============ Platofrm Specific Parameter
// - sama dengan annotation lainnya, jika misal kita hanya ingin menambahkan konfigurasi platform pada test atau group tertentu, kita bisa tambahkan named parameter onPlatform

@OnPlatform({"windows": Skip("this test not working in mac os")})

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
      }, onPlatform: {"mac-os": Skip("this test is not working in mac")});
    });
  });
}
