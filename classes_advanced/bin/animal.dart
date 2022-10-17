class Animal {
  void sleep() => print('sleep');
}

class Dog extends Animal {
  void bark() => print('bark');
}

class Cow extends Animal {
  void moo() => print('moo');
}

class CleverDog extends Dog {
  void catchBall() => print('catch');
}

void main(List<String> args) {
  final animal = Animal();
  print(animal.runtimeType);
  animal.sleep();

  final dog = Dog();
  print(dog.runtimeType);
  dog.bark();
  dog.sleep();

  final cow = Cow();
  print(cow.runtimeType);
  cow.moo();
  cow.sleep();

  final cleverDog = CleverDog();
  print(cleverDog.runtimeType);
  cleverDog.sleep();
  cleverDog.bark();
  cleverDog.catchBall();
}
