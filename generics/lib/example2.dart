void main() {
  print(doTypesMatch(2, 4));
  print(doTypesMatch(2.2, 4));
  print(doTypesMatch("sefsef", 4));
}

bool doTypesMatch<P, V>(P a, V b) => P == V;
