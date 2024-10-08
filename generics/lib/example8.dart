void main() {
  sort(ascending: false);
  sort(ascending: true);
}

const l1 = [1, 4, 2, 5];
const l2 = ["sef", "drgf", "bffn", "vsef"];
const l3 = [1.2, 1.1, 0.6, 14.5];

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThan;
  print([...l1]..sort(comparator));
  print([...l2]..sort(comparator));
  print([...l3]..sort(comparator));
}
