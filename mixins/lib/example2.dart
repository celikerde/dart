void main() {
  final erdemCelik = Person(
    firstName: 'Erdem',
    lastName: 'Celik',
  );
  print(erdemCelik.fullName);
  print(getFullName(erdemCelik));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => "$firstName $lastName";
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;
  @override
  final String lastName;
  const Person({required this.firstName, required this.lastName});
}
