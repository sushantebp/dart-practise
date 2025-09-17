// extension ,a method define to use
// convert [String] type to[int]
extension NumberExtension on String {
  int parseInt() => int.parse(this);
}
