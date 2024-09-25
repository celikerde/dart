void main() {
  const names = ['Erdem', 'Besim', 'Ahmet', 'Emre', 'Cevdet'];
  final upperNames = names.map((name) {
    print('Map got called!');
    return name.toUpperCase();
  });
  for (final name in upperNames.take(3)) {
    print(name);
  }
}
