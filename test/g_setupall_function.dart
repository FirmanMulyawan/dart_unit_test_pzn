// ============ setUpAll Function
// - jika setUp function akan dieksekusi diawal sebelum tiap test function di eksekusi
// - setUpAll function hanya dieksekusi sekali saja, diawal sebelum semua test function dieksekusi
// - jika setUpAll function di tempatkan di dalam group function, maka setUpAll function ini hanya berlaku untuk test function di dalam group function tersebut

// ============ urutan eksekusi
// - setUpAll -> setUp -> test-> tearDown -> setUp -> test-> tearDown

import 'package:test/test.dart';

void main() {
  var data = "Eko";

  setUpAll(() {
    print('start unit test');
  });

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
