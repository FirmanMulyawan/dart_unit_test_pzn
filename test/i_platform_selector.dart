// ============ Platform selector
// - pada beberapa kasus, mungkin kita membuat kode dart yang dikhususkan untuk platform tertentu, misal untuk sistem operasi tertentu misalnya
// - kita bisa menandai sebuah unit test dengan anotation @TestOn, untuk memberi tahu bahwa unit test ini untuk platform yang kita sebutkan, sehingga jika kita menjalankan unit test tersebut di platform yang berbeda, secara otomatis unit test tersebut akan di skip
// - platform selector mendukung operator boolean, seperti &&, || dan !

// ============ Daftar platform yang di dukung unit test dart
// vm: test di command line Dart VM
// chrome: test di browser chrome
// firefox: test di browser firefox
// safari: test di browser safari
// ie: test di browser internet explorer
// node: test di NodeJS
// browser: test di browser apapun
// js: test telah di compile ke javascript
// blink: test di browser yang memiliki blinkn render engine
// windows: test di os windows
// mac-os: test di os mac
// linux: test di os linux
// android: test di os android
// ios: test di os IOS
// posix: test di os POSIX

@TestOn("windows || mac-os || linux")

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group("Test sum()", () {
    test("positive", () {
      expect(sum(1, 2), equals(3));
    });
    test("negative", () {
      expect(sum(10, -5), equals(5));
    });
    group("Test sum()", () {
      test("positive", () {
        expect(sum(1, 2), equals(3));
      });
      test("negative", () {
        expect(sum(10, -5), equals(5));
      });
    });
  });
}
