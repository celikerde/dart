import 'dart:collection';

void main() {
  //final List<String> names = [];
  //print(names.first);
  const notFound = "NOT_FOUND";
  const defaultString = '';
  final mySafeList = SafeList(
      absentValue: notFound,
      defaultValue: defaultString,
      values: ['Bar', 'Baz']);
  print(mySafeList[0]);
  print(mySafeList[2]);
  mySafeList.length = 4;
  print(mySafeList[3]);
  mySafeList.length = 0;
  print(mySafeList.first);
}

class SafeList<T> extends ListBase<T> {
  final T absentValue;
  final T defaultValue;
  final List<T> _list;
  SafeList({
    required this.absentValue,
    required this.defaultValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, value) {
    _list[index] = value;
  }

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
