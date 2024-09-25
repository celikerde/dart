import 'package:collection/collection.dart';

void main() {
  testBoolList();
  print('-------------');
  testCanonicalizedMap();
  print('-------------');
  testCombinedIterableView();
  print('----------------');
  testCombinedListView();
  print('--------------');
  testCombinedMapView();
  print('-------------------');
  testMapMerging();
  print('-----------');
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[3] = true;
  boolList.length *= 2;
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Erdem',
    'age': 34,
    'sex': 'male',
    'address': 'Istanbul',
  };
  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      return key.length;
    },
  );
  print(canonMap);
}

void testCombinedIterableView() {
  final one = [1, 2, 3];
  final two = [10, 20, 30];
  final three = [40, 50, 60];
  var combined = CombinedIterableView([one, two, three]);
  print(combined);
  two.add(40);
  print(combined);

  final Iterable<int> first = [1, 2, 3];
  final Iterable<int> second = [10, 20, 30];
  final Iterable<int> third = [40, 50, 60];
  var combined2 = CombinedIterableView([first, second, third]);
  print(combined2);
}

void testCombinedListView() {
  final names1 = ['Erdem', 'Celik'];
  final names2 = ['Burak', 'Örnek'];
  final names3 = ['Fatih', 'Ozturk'];
  final names = CombinedListView([names1, names2, names3]);
  print(names);
  if (names.contains('Erdem')) {
    //names.removeAt(0); It is an unmodifiable list view.
  }
}

void testCombinedMapView() {
  final map1 = {'a': 1, 'b': 2, 'c': 3};
  final map2 = {'b': 4, 'c': 5, 'd': 6};
  final map3 = {'c': 7, 'd': 8, 'e': 9};
  final combinedMap = CombinedMapView([map1, map2, map3]);
  print(combinedMap);
}

void testMapMerging() {
  const info1 = {
    'name': 'Erdem',
    'age': 34,
    'height': 182,
  };

  const info2 = {
    'name': 'Rami',
    'age': 56,
    'height': 145,
    'weight': 75,
  };
  final mergingMaps = mergeMaps(info1, info2, value: (one, two) => two);
  print(mergingMaps);
}
