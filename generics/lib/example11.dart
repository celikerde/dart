void main() {
  const intList = [15, 3, 2];
  const doubleList = [33.0, 3.0, 2.0];
  print(intList.reduce(divide));
  print(doubleList.reduce(divide));
}

T divide<T extends num>(T lhs, T rhs) {
  if (lhs is int && rhs is int) {
    return lhs ~/ rhs as T;
  } else {
    return lhs / rhs as T;
  }
}
