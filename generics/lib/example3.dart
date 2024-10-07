void main() {
  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherAndSisterWithFish = {
    'brother': Person(),
    'sister': Person(),
    'fishy': Fish(),
  };

  final allFamily = [momAndDad, brotherAndSisterWithFish];
  describe(allFamily);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValues in map.entries) {
      print("Will call breathe() on ${keyAndValues.key}");
      keyAndValues.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print("Person is breathing...");
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
