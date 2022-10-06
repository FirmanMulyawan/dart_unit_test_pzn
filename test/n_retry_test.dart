// ============ Retry Test
// - saat membuat unit test, kadang ada kalanya unit test tersebut tidak stabil, misal butuh konek ke database atau ke sistem lain
// - hal ini kadang menyebabkan unit test sering gagal, bukan karena kode salah, tapi karena faktor seperti koneksi network, dan lain-lain
// - dart memiliki fitur untuk melakukan retry ketika unit test gagal dilakukan
// - kita bisa menggunakan annotation @Retry dan secara otomatis unit test akan di retry sejumlah yang kita tentukan

@Retry(10)

import 'package:test/test.dart';

void main() {
  test('test filed', () {
    expect(1, 2);
  });
}
