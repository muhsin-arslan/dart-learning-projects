Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    await Future.delayed(
      Duration(seconds: 1),
      () => print(i),
    );
  }
}

Future<void> main() async {
  countdown(5).whenComplete(() => print('Done'));
}
