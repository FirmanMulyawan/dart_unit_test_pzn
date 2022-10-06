// ============ tearDownAll Function
// - jika tearDown function akan dieksekusi di akhir setelah tiap test function di eksekusi
// - terDownAll function hanya dieksekusi sekali saja, di akhir setelah semua test function di eksekusi
// - jika tearDownAll function ditempatkan didalam group function, maka tearDownAll function ini hanya berlaku untuk test function di dalam group function tersebut

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

  tearDownAll(() {
    print('end unit test');
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
