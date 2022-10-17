class Stack<T> {
  final List<T> _items = [];

  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
}

void main(List<String> arguments) {
  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);

  final removedItem = stack.pop();
  print(removedItem);

  final anotherStack = Stack<String>();
  anotherStack.push('Alice');
  anotherStack.push('Michael');

  final anotherRemovedItem = anotherStack.pop();
  print(anotherRemovedItem);
}
