class value1 {
  static final value1 _instance = value1._internal();

  factory value1() => _instance;

  value1._internal() {
    _myValue = 0;
  }

  int _myValue;

  int get myVariable => _myValue;

  set myValue(int value) => myValue = value;

  void incrementMyVariable() => _myValue;
}
