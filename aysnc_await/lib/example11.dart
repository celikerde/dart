void main() async {
  final myList = await allNames().toList();
  print(myList);
}

Stream<String> allNames() async* {
  yield "Erdem";
  yield "Besim";
  yield "Burak";
}
