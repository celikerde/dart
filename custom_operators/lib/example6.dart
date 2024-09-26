void main() {
  print({'name': 'Erdem', 'age': 45} + {'name': 'Erdem'});
  print({'name': 'Erdem', 'age': 45} + {'team': 'Sivasspor'});
  print({'name': 'Erdem', 'age': 45} - {'name': 'Erdem'});
  print({'name': 'Erdem', 'age': 45} * (2));
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};
  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield this;
    }
  }
}
