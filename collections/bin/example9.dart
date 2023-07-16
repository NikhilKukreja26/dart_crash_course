import 'package:collection/collection.dart';

void main(List<String> args) {
  final person = Person(
    name: 'Nikhil',
    siblings: [
      Person(name: 'Simran'),
    ],
  );
  person._siblings?.add(
    Person(name: 'Karun'),
  );

  try {
    person.siblings?.add(
      Person(
        name: 'Tej',
      ),
    );
  } catch (e) {
    print(e);
  }
}

class Person {
  final String name;
  final List<Person>? _siblings;

  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;

  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView<Person>(_siblings!);

  @override
  String toString() => 'Person(name: $name, _siblings: $_siblings)';
}
