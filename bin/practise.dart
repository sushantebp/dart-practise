import 'package:practise/OOP/encapsulation/class_prac.dart';
import 'package:practise/OOP/encapsulation/encapsulation.dart';
import 'package:practise/practise.dart' as practise;

void main(List<String> arguments) {
  print('Hello world: ${practise.calculate()}!');
  print('Odd numbers : ${practise.oddNumbers}');

  practise.getNames().listen(
    (value) => print("Value: $value"),
    onError: (error) => print("Error : $error"),
    onDone: () => print("Done."),
  );
  Employee emp = Employee();
  emp.age = 33;
  emp.name = "Kishan Lal";

  print(emp.getAge);
  print(emp.getName);
  print("Not Formatted days:\n${practise.days}");
  print("Formatted days : \n${practise.formattedDays}");
  NewGreeting greet = NewGreeting();
  greet.showMessage();
  greet.setName = "Kishor";
  greet.setMessage = "Good Evening";
  greet.showMessage();
}
