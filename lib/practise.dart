import 'package:practise/extensions/captalize_extension.dart';

int calculate() => 6 * 7;

Stream<int> counter() async* {
  for (int i = 1; i <= 5; ++i) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  for (int i = 1; i <= 4; ++i) {
    await Future.delayed(const Duration(seconds: 1));
    switch (i) {
      case 1:
        yield "ram";
        break;
      case 2:
        yield 'shyam';
        break;
      case 3:
        yield "ankit";
        break;
      case 4:
        yield "kamlesh";
        break;
    }
  }
}

List<int> numbers = [24, 45, 77, 99, 11, 13, 67, 98, 101];
List<int> oddNumbers = numbers.where((number) => number.isOdd).toList();

List<String> days = [
  "sundAy",
  "MoNday",
  "tuEsDay",
  "wedNesDAY",
  "thurSdaY",
  "friDAy",
  "satURDay",
];

var formattedDays = days.map((day) => day.captalize()).toList();
