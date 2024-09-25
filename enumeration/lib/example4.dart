import 'package:flutter/material.dart';

void main() {
  print(AnimalType.values);
  print(AnimalType.cat.name);
  print('-------------');
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'donkey'));
  describe(animalType(fromStr: 'horse'));
}

void describe(AnimalType? animalType) {
  switch (animalType) {
    case AnimalType.dog:
      print('This is a dog');
    case AnimalType.rabbit:
      print('This is a rabbit');
    case AnimalType.cat:
      print('This is a cat');
    case AnimalType.donkey:
      print('This is a donkey');
    default:
      print('Unknown animal');
  }
}

AnimalType? animalType({
  required String fromStr,
}) {
  try {
    return AnimalType.values.firstWhere((element) => element.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  dog,
  rabbit,
  cat,
  donkey,
}
