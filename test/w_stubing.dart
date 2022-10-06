// ============ Stubing
// - stubing adalah mengubah tingkah laku mock object sebelum digunakan
// - saat kita membuat mock object, kadang beberapa function butuh mengembalikan misalnya value
// - kita bisa menambahkan tingkah laku ke mock object ketika mock object tersebut dipanggil, dengan menggunakan when function
// - selanjutnya, kita bisa menentukan reaksi apa yang perlu dilakukan oleh mock stub tersebut dengan menggunakan thenReturn, thenAnswer atau thenThrowfunction

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

    test("find book by id not found", () {
      expect(() {
        bookService.find("1");
      }, throwsException);

      verify(bookRepository.findById("1")).called(1);
    });

    test("find book by id success", () {
      when(bookRepository.findById("1"))
          .thenReturn(Book("1", "Tutorial Dart", 100000));

      var book = bookService.find("1");
      expect(book, equals(Book("1", "Tutorial Dart", 100000)));

      verify(bookRepository.findById("1")).called(1);
    });
  });
}
