void main() {
  const names = ['se', 'ce', 'dse', 'esf'];
  for (final name in names) {
    print(name);
  }
  print('-----------------');
  for (final name in names.reversed) {
    print(name);
  }
  print('-----------------');
  for (final name in names.where((String name) => name.startsWith('s'))) {
    print(name);
  }
  print('-------------------');
  names.sublist(1).forEach(print);
  final ages = [20, 30, 40];
  ages[0] = 34;
  print(ages);
  print('-----------------');
  const ages1 = [20, 30, 40];
  const ages2 = [20, 30, 40];
  if (ages1 == ages2) {
    print('Equal');
  } else {
    print('Not equal');
  }
  ['erdem', 'seyfi', 'furkan'].map((name) => name.toUpperCase()).forEach(print);
  final sed = ['erdem', 'seyfi', 'furkan'].map((name) => name.toUpperCase());
  print(sed);
  print('----------------');
  final numbers = [1, 2, 3];
  int sum = numbers.fold(
    0,
    (
      previousValue,
      element,
    ) {
      return previousValue + element;
    },
  );
  print(sum);
  print('----------------');
  final namesWithSpace = names.fold(
    '',
    (result, str) {
      if (result == '') return '$result${str.toUpperCase()}';
      return '$result ${str.toUpperCase()}';
    },
  );
  print(namesWithSpace);
  print('-------------');
}
