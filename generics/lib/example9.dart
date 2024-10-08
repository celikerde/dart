void main() {
  print(1.toInt());
  print(2.2.toInt());
  print("HEllo".toInt());
  print([1, 2, 3].toInt());
  print([1.1, 2.3, 3.2].toInt());
  print(["sef", "fsef", "sefse"].toInt());
  print(["4", "5"].toInt());
  print(["4.3", "5.6", "sdefesf"].toInt());
}

extension ToInt on Object {
  int toInt() {
    final list = [
      if (this is Iterable<Object>)
        ...this as Iterable<Object>
      else if (this is int)
        [this as int]
      else
        (double.tryParse(toString()) ?? 0.0).round()
    ];
    print(list);
    return list
        .map(
          (e) => (double.tryParse(
                    e.toString(),
                  ) ??
                  0.0)
              .round(),
        )
        .reduce((lhs, rhs) => lhs + rhs);
  }
}
