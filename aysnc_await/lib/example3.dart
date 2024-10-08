void main() async {
  //final length = await calculateLength(await getFullName());
  final length = await getFullName().then((res) => calculateLength(res));
  print(length);
}

Future<String> getFullName() => Future.delayed(
      const Duration(seconds: 1),
      () => "Erdem Celik",
    );

Future<int> calculateLength(String str) => Future.delayed(
      const Duration(seconds: 1),
      () => str.length,
    );
