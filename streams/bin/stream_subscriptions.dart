Future<void> main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);

  await stream.forEach(print);

  final doubledNumbers =
      stream.map((value) => value * 2).where((value) => value > 2);

  await doubledNumbers.forEach(print);
}
