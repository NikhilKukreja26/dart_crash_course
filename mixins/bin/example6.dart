import 'dart:mirrors';

void main(List<String> args) {
  const person = Person(name: 'Nikhil Kukreja', age: 27);
  print(person);
  const house = House(address: 'Lower Parel, Kamala Mills', rooms: 8);
  print(house);
}

mixin HasDescription {
  @override
  String toString() {
    final reflection = reflect(this);
    final thisType = MirrorSystem.getName(
      reflection.type.simpleName,
    );
    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final field in variables)
        field.asKey: reflection
            .getField(
              field.simpleName,
            )
            .reflectee
      // Giving value of that field
    }.toString();
    return '$thisType = $properties';
  }
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);
    return '$fieldName ($fieldType)';
  }
}
// Reflection works using mirror system so they're the key to reflection in dart is usually a function called reflect.
// So this reflect function will basically give you an object of type instance mirror. It's called instance mirror
// Using this instance mirror you can get the for instance the name of the type which you're reflecting upon and you can also get that types declarations and this declarations will give you for instance the variables it will give you list of functions that are available on that type

class Person with HasDescription {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });
}

class House with HasDescription {
  final String address;
  final int rooms;

  const House({
    required this.address,
    required this.rooms,
  });
}
