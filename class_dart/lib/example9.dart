void main() {
  final mom = Mom();
  print(mom.role);
  final dad = Dad();
  print(dad.role);
}

enum Role {
  mom,
  dad,
  son,
  daughter,
  grandma,
  grandpa,
}

class Person {
  final Role role;
  const Person({required this.role});
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
