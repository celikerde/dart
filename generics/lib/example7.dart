void main() {
  const tuple = Tuple(1, "2");
  print(tuple);
  final swapTuple = tuple.swap();
  print(swapTuple);
  final tupleNew = Tuple(11, 22.2);
  print(tupleNew.sum);
  print(tupleNew.swap().sum);
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple(
    this.left,
    this.right,
  );
  @override
  String toString() {
    return "Tuple left : $left, right : $right";
  }
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
