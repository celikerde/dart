import 'package:collection/collection.dart';

void main() {
  final names = {
    'Erdem',
    'Ahmet',
    'Ertuğrul',
  };
  print(names);
  print('----------');
  final names2 = [
    'Erdem',
    'Celik',
    'Ismet',
    'besim',
    'Erdem',
    'Besim',
    'Celik'
  ];
  final uniqueNames = {names2};
  print(names2);
  print('-----------');
  print(uniqueNames);
  //for same values, both of them returned same hash codes.
  final foo1 = 'foo';
  final foo2 = 'foo';
  print(foo1.hashCode);
  print(foo2.hashCode);
  print('----------');
  final ages1 = {11, 46, 58};
  final ages2 = {11, 46, 58};
  if (ages1 == ages2) {
    print('Equal');
  } else {
    print('Not equal');
  }
  const ages3 = {11, 46, 58};
  const ages4 = {11, 46, 58};
  if (ages3 == ages4) {
    print('Equal');
  } else {
    print('Not equal');
  }

  if (SetEquality().equals(ages1, ages2)) {
    print('Sets are equal');
  } else {
    print('Sets are not equal');
  }
  print('--------------');
  final ages5 = {12, 22, 32};
  final ages6 = {22, 12, 32};
  if (SetEquality().equals(ages5, ages6)) {
    print('Sets are equal');
  } else {
    print('Sets are not equal');
  }
}
