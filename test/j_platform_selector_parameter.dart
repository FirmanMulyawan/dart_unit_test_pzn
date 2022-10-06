// ============ Platoform selector parameter
// saat menggunakan annotation @TestOn, maka seluruh unit test di file tersebut akan menggunakan platform selector yang sudah ditentukan
// kadang, kita hanya ingin beberapa test function atau group function saja misalnya, pada kasus ini kita bisa menambahkan parameter testOn

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test sum()", () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    }, testOn: "windows");
  }, testOn: "windows");
}
