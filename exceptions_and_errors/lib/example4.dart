void main() async {
  final db = Database();
  try {
    await db.getData();
  } on DatabaseNotOpenException {
    print("Database opening function do not call!");
  } finally {
    await db.closeDb();
  }
}

class Database {
  bool _isDbOpen = false;
  Future<void> open() {
    return Future.delayed(const Duration(seconds: 1), () {
      _isDbOpen = true;
      print("Database opened");
    });
  }

  Future<String> getData() {
    if (!_isDbOpen) {
      throw DatabaseNotOpenException();
    }
    return Future.delayed(
      const Duration(seconds: 1),
      () => "Data is fetched",
    );
  }

  Future<void> closeDb() {
    return Future.delayed(
      const Duration(seconds: 1),
      () {
        _isDbOpen = false;
        print("Database closed");
      },
    );
  }
}

class DatabaseNotOpenException implements Exception {
  @override
  String toString() => "DatabaseNotOpenException";
}
