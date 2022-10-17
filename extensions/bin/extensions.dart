import 'package:extensions/iterable_sum.dart';
import 'package:extensions/number_parsing.dart';

void main(List<String> arguments) {
  var variableA = '123'.toIntOrNull();
  var variableB = '456'.toIntOrNull();
  var variableC = 'abc'.toIntOrNull();

  print(variableA);
  print(variableB);
  print(variableC);

  final totalOfMyNumbers = [11, 22, 33].sum();
  final totalOfMyDoubles = [2.5, 4.3, 7.4].sum();

  print(totalOfMyNumbers);
  print(totalOfMyDoubles);
}
