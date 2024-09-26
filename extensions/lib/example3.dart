void main() {
  print(5.to(12));
  print(1.to(23, inclusive: false));
  print(5.to(5));
  print(5.to(5, inclusive: false));
}

extension on int {
  Iterable<int> to(int end, {bool inclusive = true}) => end > this
      ? [for (var i = this; i < end; i++) i, if (inclusive) end]
      : [for (var i = this; i > end; i--) i, if (inclusive) end];
}
