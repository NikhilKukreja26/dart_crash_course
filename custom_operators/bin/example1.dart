void main(List<String> args) {
  final mom = FamilyMember(name: 'Mom');
  final dad = FamilyMember(name: 'Dad');
  final family = dad + mom;
  print(family);
}

class FamilyMember {
  final String name;

  const FamilyMember({
    required this.name,
  });

  @override
  String toString() => 'FamilyMember(name: $name)';
}

class Family {
  final List<FamilyMember> members;

  const Family({
    required this.members,
  });

  @override
  String toString() => 'Family(members: $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(
        members: [this, other],
      );
}
