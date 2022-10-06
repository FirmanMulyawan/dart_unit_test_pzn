// ============ expect function
// - saat kita membuat unit test, salah satu yang paling penting adalah memastikan apakah data yang kita test benar atau salah
// hal ini disebut assertion
// - di dart untuk melakukan assertion, kita bisa menggunakan function expect, dimamana terdapat dua parameter, pertama adalah data yang akan di test, dan kedua adalah harapan datanya
// - jika ternyata data tidak sesuai yang diharapkan, maka secara otomatis akan terjadi error yang menyebabkan unit test dianggap gagal

import 'package:test/test.dart';

String sayHello(String name) {
  return "Hello $name";
}

void main() {
  test('Test sayHello()', () {
    var response = sayHello('Dart');
    expect(response, 'Hello Dart');
  });
}
