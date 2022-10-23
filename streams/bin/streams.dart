Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;

  await for (var value in stream) {
    sum += value;
  }

  return sum;
}

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    await Future.delayed(Duration(seconds: 1));
    print(i);
    yield i;
  }
}

Future<void> main(List<String> arguments) async {
  // final stream = Stream<int>.fromIterable([1, 2, 3, 4, 5]);
  // final sum = await sumStream(stream);
  // print(sum);

  final anotherStream = countStream(4);
  final anotherSum = await sumStream(anotherStream);
  print(anotherSum);
}
