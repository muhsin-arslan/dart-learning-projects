void main() {
  var numbers = [1, 2, 3, 4, 5];

  var greaterThenThree = numbers.where((number) => number > 3);
  print(greaterThenThree);

  var findNine = numbers.firstWhere((number) => number == 9, orElse: () => -1);
  print(findNine);

  var findThree = numbers.firstWhere((number) => number == 3, orElse: () => -1);
  print(findThree);
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var results = <T>[];

  for (var item in items) {
    if (f(item)) results.add(item);
  }

  return results;
}

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) return item;
  }

  return orElse();
}
