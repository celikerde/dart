void main() async {
  final res = await getNames().asyncMap((name) => extractChars(name)).fold("", (
    previous,
    element,
  ) {
    final elements = element.join(" ");

    return "$previous $elements";
  });
  print(res);
}

Stream<String> getNames() async* {
  yield "John";
  yield "Jill";
  yield "Hill";
}

Future<List<String>> extractChars(String from) async {
  final characters = <String>[];
  for (final character in from.split("")) {
    await Future.delayed(const Duration(milliseconds: 100));
    characters.add(character);
  }
  return characters;
}
