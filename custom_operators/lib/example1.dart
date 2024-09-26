void main() {
  final dad = FamilyMember(name: 'Dad');
  final mom = FamilyMember(name: 'Mom');
  final family = dad + mom;
  print(family);
}

class FamilyMember {
  final String name;
  const FamilyMember({required this.name});
  @override
  String toString() => "Family member (name =$name)";
}

class Family {
  final List<FamilyMember> members;
  const Family({required this.members});
  @override
  String toString() => "Family members are ($members)";
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) {
    return Family(members: [this, other]);
  }
}
