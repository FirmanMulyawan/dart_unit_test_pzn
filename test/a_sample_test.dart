// ============ test function
// - untuk membuat unit test, kita bisa menggunakan function test yang terdapat di package test
// - test function tersebut memiliki parameter nama function dan juga anonymous function yang berisikan kode unit test nya

// ============ menjalankan test
// - untuk menjalankan file test, kita bisa menggunakan perintah: dart test/test/namafile_test.dart
// - atau jika kita ingin menjalankan semua unit file unit test. kita bisa gunakan perintah: dart test,
// secara otomatis dart akan menjalankan semua unit test di folder test

import 'package:test/test.dart';

void main() {
  test('Contoh Test', () {});
  test('Contoh Test 2', () {});
  test('Contoh Test 3', () {});
}
