import 'dart:async';

void main() async {
  try {
    await for (final name in getNames().withTimeOutBetweenEvents(
      const Duration(seconds: 3),
    )) {
      print(name);
    }
  } on TimeoutBetweenEventsException catch (e, stackTrace) {
    print("TimeoutBetweenEventsException: $e");
    print("Stack trace $stackTrace");
  }
}

Stream<String> getNames() async* {
  yield "John";
  await Future.delayed(const Duration(seconds: 1));
  yield "Jane";
  await Future.delayed(const Duration(seconds: 10));
  yield "Doe";
}

extension WithTimeoutBetweenEvents<T> on Stream<T> {
  Stream<T> withTimeOutBetweenEvents(Duration duration) {
    return transform(TimeoutBetweenEvents(duration: duration));
  }
}

class TimeoutBetweenEvents<E> extends StreamTransformerBase<E, E> {
  final Duration duration;
  const TimeoutBetweenEvents({required this.duration});
  @override
  Stream<E> bind(Stream<E> stream) {
    StreamController<E>? streamController;
    StreamSubscription<E>? streamSubscription;
    Timer? timer;
    streamController = StreamController(
      onListen: () {
        streamSubscription = stream.listen(
          (data) {
            timer?.cancel();
            timer = Timer.periodic(duration, (timer) {
              streamController
                  ?.addError(TimeoutBetweenEventsException('Timeout'));
            });
            streamController?.add(data);
          },
          onError: streamController?.addError,
          onDone: streamController?.close,
        );
      },
      onCancel: () {
        streamSubscription?.cancel();
        timer?.cancel();
      },
    );
    return streamController.stream;
  }
}

class TimeoutBetweenEventsException implements Exception {
  final String errorMessage;
  TimeoutBetweenEventsException(this.errorMessage);
}
