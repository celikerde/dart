import 'dart:async';

void main() async {
  StreamController<String> controller = StreamController();
  controller.sink.add("Erdem");
  controller.sink.add("Celik");
  await for (final str in controller.stream) {
    print(str);
  }
  controller.close();
}
