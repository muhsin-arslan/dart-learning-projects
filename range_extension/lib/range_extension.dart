extension RangeTo on int {
  List<int> rangeTo(int other) {
    if (other <= this) return [];

    List<int> list = [];
    for (var i = this; i <= other; i++) {
      list.add(i);
    }

    return list;
  }
}
