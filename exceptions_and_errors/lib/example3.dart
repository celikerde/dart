void main() {
  try {
    tryCreatingPerson(age: 21);
    tryCreatingPerson(age: -4);
    tryCreatingPerson(age: 156);
  } catch (error, strackTrace) {
    print(error);
    print(strackTrace);
  }
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
  } on InvalidAgeException {
    rethrow;
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
