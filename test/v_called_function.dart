// ============ Valled Function
// - selain melakukan verifikasi terhadap mock object, kita juga wajib memastikan jumlah eksekusi kode mock object
// - misal, saat save data book, kita harus pastikan bahwa, bookRepository.save() hanya dipanggil satu kali
// - kita bisa menggunakan called() function setelah melakukan verify

import 'package:dart_unit_test/book.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateNiceMocks([MockSpec<BookRepository>()])
import "t_mockito.mocks.dart";

void main() {
  group("BookService", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", () {
      bookService.save("1", "Tutorial dart", 100000);
      verify(bookRepository.save(Book("1", "Tutorial dart", 100000))).called(1);
    });
  });
}
