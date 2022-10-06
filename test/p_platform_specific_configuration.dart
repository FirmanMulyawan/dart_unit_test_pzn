// ============ Platofrm Specific Configuration
// - saat menggunakan @Skip, secara otomatis tidak akan melihat platform apapun, dia akan di skip secara otomatis
// - bagaimana jika kasusnya misalnya, kita ingin melakukan skip, namun hanya untuk platform "mac-os" saja?
// - pada kasus seperti ini, kita bisa menggunakan annotation @OnPlatform

@OnPlatform({"mac-os": Skip("this test not working in mac os")})

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
