// ============ Verifikasi Mock Object
// - saat kita membuat unit test menggunakan mock object, yang perlu diperhatikan adalah kita harus bisa
//   memastikan bahwa mock object tersebut benar-benar dipanggil, karena jika tidak, resikonya unit test kita menjadi tidak valid
// - contoh, misal kita hapus kode yang memanggil BookRepository di BookService, dan lihat apa yang terjadi

// ============ Kenapa unit test sukses?
// - walaupun kode BookRepository sudah dihapus, namun unit test tetap sukses, hal ini dikarenakan kita tidak melakukan verifikasi apapun pada unit test nya
// - oleh karena itu, ketika menggunakan mock object, biasakan kita selalu melakukan verifikasi interaksi yang terjadi
// - kita bisa menggunakan function verify untuk memastikan bahwa mock object dipanggil

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
      verify(bookRepository.save(Book("1", "Tutorial dart", 100000)));
    });
  });
}
