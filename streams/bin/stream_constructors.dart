Future<void> main(List<String> args) async {
  final stream = Stream.fromIterable([1, 2, 3, 4]);
  // Stream.value(10);
  // Stream.error(Exception('Something went wrong,'));
  // Stream.empty();
  // Stream.fromFuture(Future.delayed(Duration(seconds: 1), () => 42));
  // Stream.periodic(Duration(seconds: 1), (index) => index);

  final firstValueOfStream = await stream.first;
  print(firstValueOfStream);

  print('--------');

  await stream.forEach(print);

  print('--------');

  final doubledNumbers =
      stream.map((value) => value * 2).where((value) => value > 2);

  await doubledNumbers.forEach(print);
}
