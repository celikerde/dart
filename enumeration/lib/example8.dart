import 'package:flutter/material.dart';

void main() {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2200),
  modelX(weightInKg: 2600),
  modelZ(weightInKg: 2400);

  final double weightInKg;
  const TeslaCars({required this.weightInKg});

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
