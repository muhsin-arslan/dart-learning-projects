import 'package:sets_exercise/sets_exercise.dart';

void main(List<String> arguments) {
  const a = {1, 3};
  const b = {3, 5};
  
  final mySet = a.union(b).difference(a.intersection(b));
  print(mySet);

  var sumResult = sumSetItems(mySet);
  print(sumResult);
}
