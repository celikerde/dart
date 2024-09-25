void main() {
  final person = Person(
    firstName: 'Erdem',
    lastName: 'Celikj',
  );
  print(person.fullName);
}

// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;
//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = "$firstName $lastName";
// }

class Person {
  final String firstName;
  final String lastName;
  const Person({
    required this.firstName,
    required this.lastName,
  });
  String get fullName => "$firstName $lastName";
}
