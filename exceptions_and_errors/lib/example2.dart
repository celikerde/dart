void main() {
  tryCreatingPerson(age: 21);
  tryCreatingPerson(age: -34);
  tryCreatingPerson(age: 156);
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;
  InvalidAgeException(this.age, this.message);
  @override
  String toString() => "Invalid age exception: $message $age";
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (exception, strackTrace) {
    print(exception);
    print(strackTrace);
  }
  print("-------------");
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw InvalidAgeException(age, "Age cannot be negative!");
    } else if (age > 140) {
      throw InvalidAgeException(age, "Age cannot be greater than 140");
    }
  }
}
