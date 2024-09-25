import 'dart:collection';

void main() {
  final names = ['Erdem', 'Celik'];
  names.add('Emre');
  print(names);
  final readOnlyList = UnmodifiableListView(names);
  try {
    readOnlyList.add('Besim');
  } catch (e) {
    print(e);
  }
  print(names);
}
