void main() {
  const JSON<String> example = {
    'name': 'Erdem',
    'surname': 'Celik',
  };
  print(example);
}

typedef JSON<T> = Map<String, T>;
