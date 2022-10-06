// ============ Skip parameter
// menggunakan annotation @skip secara otomatis akan melakukan skip ke seluruh test di file tersebut
// kadang, ada kalanya kita hanya ingin melakukan skip di satu buah test function atau group function
// kita bisa menambahkan object parameter skip pada test function dan group function

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test sum()", () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    }, skip: "this test function still broken");
  }, skip: "this test skip", testOn: "windows");
}
