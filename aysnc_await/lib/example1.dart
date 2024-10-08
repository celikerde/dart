void main() async {
  print(await getString());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getCountry());
  print(await getZipCode());
}

Future<String> getString() async => "Uncle Bob";
Future<String> getAddress() => Future.value("Station Street");
Future<String> getPhoneNumber() =>
    Future<String>.delayed(const Duration(seconds: 1), () => "5858585858");

Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return "Sivas";
}

Future<String> getCountry() async => "USA";
Future<String> getZipCode() => Future.delayed(const Duration(seconds: 1), () {
      return "58058";
    });
