void main() {
  Dog(isTired: false).run();
  try {
    Dog(isTired: true).run();
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
}

class DogIsTiredException implements Exception {
  final String message;
  const DogIsTiredException({this.message = "Dog is tired."});
}

class Dog {
  final bool isTired;
  const Dog({required this.isTired});
  void run() {
    if (isTired) {
      throw const DogIsTiredException(message: "Doggo is tired");
    } else {
      print("Doggo is running");
    }
  }
}
