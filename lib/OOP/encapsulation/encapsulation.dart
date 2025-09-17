class Employee {
  String? _name;
  int? _age;

  String get getName {
    if (_name!.isNotEmpty) {
      return _name!;
    }
    return "No Name";
  }

  set age(int age) => _age = age;
  set name(String name) => _name = name;

  int get getAge {
    if (_age != null) {
      return _age!;
    }
    return 0;
  }
}
