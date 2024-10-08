void main() async {
  print(await getFullName(
    firstName: 'Erdem',
    lastName: "Celik",
  ));
  try {
    print(await getFullName(
      firstName: 'Erdem',
      lastName: "",
    ));
  } on FirstOrLastNameMissingException {
    print("First name or last name is missing");
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw const FirstOrLastNameMissingException();
  } else {
    return Future.value("$firstName $lastName");
  }
}

class FirstOrLastNameMissingException implements Exception {
  const FirstOrLastNameMissingException();
}
