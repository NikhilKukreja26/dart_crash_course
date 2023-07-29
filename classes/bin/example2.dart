void main(List<String> args) {
  const me = Person('Nikhil', 27);
  print(me.name);
  print(me.age);

  print('--------------------------');

  const foo = Person.foo();
  print(foo.name);
  print(foo.age);

  print('--------------------------');

  const bar = Person.bar(26);
  print(bar.name);
  print(bar.age);

  print('--------------------------');

  const baz = Person.other();
  print(baz.name);
  print(baz.age);

  print('--------------------------');

  const sanket = Person.other(name: 'Sanket');
  print(sanket.name);
  print(sanket.age);

  print('--------------------------');

  const tej = Person.other(name: 'Tej', age: 31);
  print(tej.name);
  print(tej.age);

  print('--------------------------');
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
        age = 20;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({String? name, int? age})
      : name = name ?? 'Baz',
        age = age ?? 40;
}
