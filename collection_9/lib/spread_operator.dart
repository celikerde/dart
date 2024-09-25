void main() {
  addTwoArrayWrong();
  print("-----------");
  addTwoArrayRight();
  print("--------------");
  addToDictionaryWrong();
  print("-------------");
  addToDictionaryRight();
}

void addTwoArrayWrong() {
  final names1 = {'Erdem', 'Celik', 'Ahmet', 'Hava'};
  final names2 = {'Besim', 'Burak', 'Emre', 'Fatih'};
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addTwoArrayRight() {
  final names1 = {'Erdem', 'Celik', 'Ahmet', 'Hava'};
  final names2 = {'Besim', 'Burak', 'Emre', 'Fatih'};
  final allNamesWrong = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addToDictionaryWrong() {
  const info = {
    'name': 'Erdem',
    'age': 28,
    'height': 182,
  };
  try {
    final temp = info;
    temp.addAll({"weight": 80});
  } catch (e) {
    print(e.toString());
  }
}

void addToDictionaryRight() {
  const info = {
    'name': 'Erdem',
    'age': 28,
    'height': 182,
  };
  final temp = {...info}..addAll({'weight': 89});
  print(temp);
}
