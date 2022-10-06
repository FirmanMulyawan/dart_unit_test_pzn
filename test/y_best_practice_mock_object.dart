// ============ Best Practice Mock Object
// - testing menggunakan real object lebih baik dibandingkan menggunakan mock object
// - selama kita bisa membuat real objectnya, selalu gunakan real object, dibandingkan menggunakan mock object
// - gunakan mock object, hanya ketika kita tidak bisa membuat real object nya di unit test
// - jika menggunakan mock object, pastikan selalu melakukan verifikasi interaksi yang terjadi terhadap mock object tersebut

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

    test("Find book by id eko123", () {
      when(bookRepository.findById(any))
          .thenReturn(Book("eko123", "Tutorial Dart", 100000));
    });

    test("Find book by id eko123", () {
      when(bookRepository.findById(argThat(startsWith("eko"))))
          .thenReturn(Book("eko123", "Tutorial Dart", 100000));

      var book = bookService.find("eko123");
      expect(book, equals(Book("eko123", "Tutorial Dart", 100000)));

      verify(bookRepository.findById(any)).called(1);
    });
  });
}
