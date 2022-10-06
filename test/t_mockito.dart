// ============ Mockito
// - dart sudah menyediakan package khusus untuk membuat mock object yaitu mockito
// - https://pub.dev/packages/mockito
// - mockito merupakan package yang terinspirasi dari library mock object java dengan nama sama, yaitu mockito https://github.com/mockito/mockito

// ============ menginstall Mockito
// - sebelum kita menggunakan mockito, silakan tambahkan package mockito terlebih dahulu
// - selain itu, mockito juga membutuhkan package build_runner, jadi pastikan kita menambahkan package build_runner juga
// - https://pub.dev/packages/build_runner

// ============ membuat Mock object
// - cara kerja mockito adalah dengan membuat generated file berisi mock class yang bisa kita gunakan sebagai pengganti class aslinya
// - pertama, kita perlu memberitahu mockito untuk membuat mock object dengan menggunakan annotation generateNiceMocks, dan lakukan import ke file dengan format
//   namafile_test.mocks.dart
// - selanjutnya, kita perlu menjalankan build_runner, agar file mock otomatis dibuatkan oleh mockito

import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "t_mockito.mocks.dart";

void main() {
  group("BookService", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", () {
      bookService.save("1", "Tutorial dart", 100000);
    });
  });
}
