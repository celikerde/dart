void main() {
  final double doubleVal = eitherIntOrDouble();
  final int intVal = eitherIntOrDouble();
  print(doubleVal);
  final String str = eitherIntOrDouble();
  //print(str);
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('An error occured');
  }
}
