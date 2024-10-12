void main() async {
  await for (final name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield "Erdem";
  yield "Besim";
  yield "Burak";
}

Stream<String> femaleNames() async* {
  yield "Jessie";
  yield "Betty";
  yield "Katerina";
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
