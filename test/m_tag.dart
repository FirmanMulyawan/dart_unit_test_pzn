// ============ Tag
// - saat membuat unit test yang sangat banyak, kadang kita ingin menambahkan tag terhadap unit test nya
// - biasanya ini digunakan sebagai penanda untuk tag
// - kita bisa menggunakan annotation @Tags, atau menggunakan named parameter tags di test atau group function
// - salah satu keuntungan menambahkan tag, kita bisa meminta dart untuk menjalankan unit test
//   dengan tag tertentu saja misalnya, dengan perintah :
//   dart test --tags "first || second"

@Tags(["pzn", "eko"])

import 'package:test/test.dart';

void main() {
  test("test first", () {
    print("first");
  }, tags: ["first"]);

  test("test second", () {
    print("second");
  }, tags: ["second"]);
}
