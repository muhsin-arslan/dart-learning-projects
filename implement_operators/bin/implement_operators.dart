import 'dart:collection';

class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() => 'Point($x, $y)';

  Point operator +(Point other) {
    var newX = x + other.x;
    var newY = y + other.y;

    return Point(newX, newY);
  }

  Point operator *(Point other) {
    var newX = x * other.x;
    var newY = y * other.y;

    return Point(newX, newY);
  }
}

void main(List<String> arguments) {
  var firstPoint = Point(1, 1);
  var secondPoint = Point(2, 0);

  print(firstPoint + secondPoint);
  print(firstPoint * secondPoint);
}
