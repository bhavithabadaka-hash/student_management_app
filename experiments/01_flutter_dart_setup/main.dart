void main() {
  const name = 'Asha';
  const roll = '24CSE001';
  final marks = [85, 90, 78];
  final total = marks.reduce((a, b) => a + b);
  print('Hello, Dart!');
  print('Student: $name');
  print('Roll number: $roll');
  print('Total marks: $total');
}
