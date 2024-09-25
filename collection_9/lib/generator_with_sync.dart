void main() {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Erdem');
  yield "Erdem";
  print('Producing Emre');
  yield "Emre";
  print("Producing Burak");
  yield "Burak";
  print("Producing Fatih");
  yield "Fatih";
  print("Producing template names");
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing Erdem');
  yield "Foo";
  print('Producing Emre');
  yield "Bar";
  print("Producing Burak");
  yield "Baz";
  print("Producing Fatih");
  yield "Que";
}
