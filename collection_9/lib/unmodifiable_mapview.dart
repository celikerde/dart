import 'dart:collection';

void main() {
  final myMap = {
    'name': 'Erdem',
    'surname': 'Celik',
  };
  myMap.addAll(
    {'phone': '23094824'},
  );
  print(myMap);
  final readOnlyMap = UnmodifiableMapView(myMap);
  try {
    readOnlyMap.addAll({'phone': '9328409'});
  } catch (e) {
    print(e);
  }
}
