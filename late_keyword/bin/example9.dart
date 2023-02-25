// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final nikhilKukreja = Person(name: 'Nikhil Kukreja');
  final simranKukreja = Person(name: 'Simran Kukreja');

  final kukrejaFamily =
      WrongImplementationOfFamily(members: [nikhilKukreja, simranKukreja]);

  final rightKukrejaFamily =
      RightImplementationOfFamily(members: [nikhilKukreja, simranKukreja]);

  print(kukrejaFamily);
  print(kukrejaFamily.membersCount);

  print(rightKukrejaFamily);
  print(rightKukrejaFamily.membersCount);
}

class Person {
  final String name;

  const Person({
    required this.name,
  });
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({
    required this.members,
  }) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({
    required this.members,
  });

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
