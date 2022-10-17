import 'package:range_extension/range_extension.dart';

void main(List<String> arguments) {
  var myRange = 5.rangeTo(15);

  for (var number in myRange) {
    print(number);
  }
}
