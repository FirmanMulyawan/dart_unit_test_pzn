// ============ Skip test
//  saat kita membuat unit test, kadang ada kalanya sebuah unit test bermasalah dan belum bisa diperbaiki
// pada kasus ini, jangan hapus unit test tersebut, tapi tandai unit test tersebut agar tidak dijalankan, atau diskip
// kita bisa menggunakan annotation @skip untuk menandai sebuah file unit test agar di skip

@Skip('This is unit test still broken')
import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test sum()", () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    }, testOn: "windows");
  }, testOn: "windows");
}
