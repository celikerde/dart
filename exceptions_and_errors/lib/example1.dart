void main() {
  tryCreatingPerson(age: 21);
  tryCreatingPerson(age: -3);
  tryCreatingPerson(age: 156);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e.toString());
  }
  print("-------------");
}

class Person {
  final int age;
  Person({required this.age}) {
    if (age < 0) {
      throw Exception("Age cannot be negative");
    } else if (age > 140) {
      throw "Age cannot be greater than 140";
    }
  }
}
