import 'dart:async';

void main() async {
  await for (final name in getNames().absorbErrorsUsingHandleError()) {
    print(name);
  }
  print("-------");
  await for (final name in getNames().absorbErrorsUsingHandlers()) {
    print(name);
  }
  print("----------");
  await for (final name in getNames().absorbErrorsUsingTransformer()) {
    print(name);
  }
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError(
        (_, __) {},
      );
  Stream<T> absorbErrorsUsingHandlers() =>
      transform(StreamTransformer.fromHandlers(
        handleError: (_, __, sink) => sink.close(),
      ));

  Stream<T> absorbErrorsUsingTransformer() => transform(StreamErrorAbsorber());
}

Stream<String> getNames() async* {
  yield "Erdem";
  yield "Celik";
  throw "Out of the world";
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final streamController = StreamController<T>();
    stream.listen(
      streamController.sink.add,
      onError: (_) {},
      onDone: streamController.close,
    );
    return streamController.stream;
  }
}
