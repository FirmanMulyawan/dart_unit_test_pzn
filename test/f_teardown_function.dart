// ============ tearDown Function
// - jika setUp function adalah function yang selalu dieksekusi diawal unit test, maka tearDown adalah function yang selalu dieksekusi di akhir unit test
// - cocok untuk melakukan hal yang harus dilakukan setelah semua unit test berjalan
// - jika tearDown function ditempatkan didalam group function, maka tearDown function ini hanya berlaku untuk test function didalam group function tersebut

import 'package:test/test.dart';

void main() {
  var data = "Eko";

  setUp(() {
    data = "Eko";
    print(data);
  });

  tearDown(() {
    print(data);
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
