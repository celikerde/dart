import 'dart:async';

void main() async {
  await nonBroadcastStreamExample();
  await broadcastStreamExample();
}

Future<void> nonBroadcastStreamExample() async {
  final controller = StreamController<String>();
  controller.sink.add('Erdem');
  controller.sink.add('Mustafa');
  controller.sink.add("Ernest");

  try {
    await for (final name in controller.stream) {
      print(name);
      await for (final name in controller.stream) {
        print(name);
      }
    }
  } catch (e) {
    print(e);
  }
}

Future<void> broadcastStreamExample() async {
  late final StreamController<String> controller;
  controller = StreamController.broadcast();
  final sub1 = controller.stream.listen((name) => print("sub1: $name"));
  final sub2 = controller.stream.listen((name) => print("sub2: $name"));
  controller.sink.add("Erdem");
  controller.sink.add("Mustafa");
  controller.sink.add("Ernest");
  controller.close();
  controller.onCancel = () {
    print("OnCancel");
    sub1.cancel();
    sub2.cancel();
  };
}
