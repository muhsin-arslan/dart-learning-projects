import 'package:sum_list_items/sum_list_items.dart';
import 'package:test/test.dart';

void main() {
  test('sumNumbers', () {
    final myNumbers = [1, 3, 5, 6, 8];
    expect(sumNumbers(myNumbers), 23);
  });
}
