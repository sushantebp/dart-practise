// the _Greeting class is library and work only with this file only (good topic)
class _Greeting {
  String? _message;
  String? _name;
  void showMessage() => print('$_name,$_message');
}

// usecase of polymorphism here applying parent methoid in child clas abnd override
class NewGreeting extends _Greeting {
  set setName(String name) => _name = name;
  set setMessage(String message) => _message = message;
  @override
  void showMessage() => print('Overridden: $_name says $_message');
  
}
