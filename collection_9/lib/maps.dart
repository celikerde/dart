void main() {
  final map = {
    'name': 'Erdem',
    'surname': 'Celik',
    'age': 28,
  };
  print(map);
  print(map.keys);
  print(map.values);
  map.putIfAbsent('height', () => 180);
  //map['height'] = 190; ->OK
  print(map);
  for (final entry in map.entries) {
    //print(entry);
    print(entry.key);
    print(entry.value);
  }
}
