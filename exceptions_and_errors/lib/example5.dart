void main() {
  try {
    Dog(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }
  try {
    Dog(age: 6, isTired: true).run();
  } catch (e) {
    print(e);
  }
  try {
    Dog(age: 6, isTired: false).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;
  const Throws({required this.exceptions});
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;
  const Animal({required this.age});

  @Throws(exceptions: [UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;
  const Dog({
    required super.age,
    required this.isTired,
  });

  @Throws(exceptions: [DogIsTiredException, DogIsTooOldException])
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print("Dog is running");
    }
  }
}
