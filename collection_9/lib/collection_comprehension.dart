void main() {
  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final num in allNumbers)
      if (num % 2 == 0) num
  ];
  //print(evenNumbers);
  //print('-------------');
  final evenNumbersFunctional = allNumbers.where((num) => num % 2 == 0);
  print(evenNumbersFunctional);

  final names = [
    'Erdem Celik',
    'Burak Örnek',
    'Emre Reyhanlioglu',
  ];
  final namesAndLength = {for (final name in names) name: name.length};
  print(namesAndLength);
}
