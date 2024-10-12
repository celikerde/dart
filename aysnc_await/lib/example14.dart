void main() async {
  final namesThreeTimes = getNames().asyncExpand((str) => times3(str));
  await for (final name in namesThreeTimes) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield "Bob";
  yield "Alice";
  yield "Joe";
}

Stream<String> times3(String str) => Stream.fromIterable(
      Iterable.generate(
        3,
        (_) => str,
      ),
    );
