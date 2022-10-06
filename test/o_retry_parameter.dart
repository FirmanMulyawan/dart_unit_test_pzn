// ============ Retry parameter
// - jika hanya ingin melakukan retry pada test atau group function tertentu, kita juga bisa menambahkan named parameter retry

import 'package:test/test.dart';

void main() {
  test('test filed', () {
    expect(1, 2);
  }, retry: 5);
}
