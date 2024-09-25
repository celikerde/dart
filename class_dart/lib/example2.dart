void main() {
  const me = Person('Erdem', 32);
  print(me.name);
  print(me.age);
  print('-------');
  const foo = Person.foo();
  print(foo.name);
  print(foo.age);
  print('-------');
  const bar = Person.bar(35);
  print(bar.name);
  print(bar.age);
  print('-------');
  const baz = Person.other(age: 25);
  print(baz.name);
  print(baz.age);
  print('-------');
  const jack = Person.other(name: 'Jack');
  print(jack.name);
  print(jack.age);
}

class Person {
  final String name;
  final int age;

  const Person(
    this.name,
    this.age,
  );

  const Person.foo()
      : name = 'Foo',
        age = 21;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Ali',
        age = age ?? 12;
}
