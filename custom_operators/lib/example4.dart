void main() {
  final str = "Erdem";
  final em = str - ("rde");
  print(em);
}

extension Remove on String {
  String operator -(String other) => replaceAll(other, "");
}
