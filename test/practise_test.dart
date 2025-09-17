import 'package:practise/practise.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('odd number', () {
    List<int> expectedOddNumbers = [45, 77, 99, 11, 13, 67, 101];
    expect(oddNumbers, expectedOddNumbers);
  });

  test('counter', () {
    expect(counter(), emitsInOrder([1, 2, 3, 4, 5, emitsDone]));
  });
  test("names", () {
    expect(
      getNames(),
      emitsInOrder(["ram", "shyam", "ankit", "kamlesh", emitsDone]),
    );
  });
}
