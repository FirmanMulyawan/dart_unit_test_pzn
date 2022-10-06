// ============ Setup function
// - setup function merupakan sebuah function yang bisa kita gunakan untuk meregistrasikan kode yang selalu dieksekusi setiap kalo test function di eksekusi
// - setup function cocok sekali ketika kita butuh membuat sebuah kode yang berulang di awal test function
// - jika setup function ditempatkan didalam group function, maka setup function ini hanya berlaku untuk test function didalam group function tersebut

import 'package:test/test.dart';

void main() {
  var data = "Eko";

  setUp(() {
    data = "Eko";
  });

  group("Test string", () {
    test("String first", () {
      // data = "Eko";
      data = "$data Kurniawan";
      expect(data, equals("Eko Kurniawan"));
    });

    test("String second", () {
      // data = "Eko";
      data = "$data Khannedy";
      expect(data, equals("Eko Khannedy"));
    });
  });
}
