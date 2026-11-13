class Student {
  const Student({this.id, required this.name, required this.rollNumber, required this.course, required this.phone, required this.email});
  final int? id;
  final String name, rollNumber, course, phone, email;
  Map<String, Object?> toMap() => {'id': id, 'name': name, 'roll_number': rollNumber, 'course': course, 'phone': phone, 'email': email};
  factory Student.fromMap(Map<String, Object?> map) => Student(id: map['id'] as int?, name: map['name'] as String, rollNumber: map['roll_number'] as String, course: map['course'] as String, phone: map['phone'] as String, email: map['email'] as String);
}
