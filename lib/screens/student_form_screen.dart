import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/student.dart';

class StudentFormScreen extends StatefulWidget { const StudentFormScreen({super.key, this.student}); final Student? student; @override State<StudentFormScreen> createState() => _StudentFormScreenState(); }
class _StudentFormScreenState extends State<StudentFormScreen> {
  final key = GlobalKey<FormState>();
  late final name = TextEditingController(text: widget.student?.name ?? '');
  late final roll = TextEditingController(text: widget.student?.rollNumber ?? '');
  late final course = TextEditingController(text: widget.student?.course ?? '');
  late final phone = TextEditingController(text: widget.student?.phone ?? '');
  late final email = TextEditingController(text: widget.student?.email ?? '');
  bool saving = false;
  String? requiredField(String? v) => v == null || v.trim().isEmpty ? 'This field is required' : null;
  Future<void> save() async {
    if (!key.currentState!.validate()) return;
    setState(() => saving = true);
    final s = Student(id: widget.student?.id, name: name.text.trim(), rollNumber: roll.text.trim(), course: course.text.trim(), phone: phone.text.trim(), email: email.text.trim());
    try { if (widget.student == null) { await DatabaseHelper.instance.insertStudent(s); } else { await DatabaseHelper.instance.updateStudent(s); } if (mounted) Navigator.pop(context, true); }
    catch (e) { if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Could not save: $e'))); }
    finally { if (mounted) setState(() => saving = false); }
  }
  @override void dispose() { name.dispose(); roll.dispose(); course.dispose(); phone.dispose(); email.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: Text(widget.student == null ? 'Add student' : 'Edit student')), body: Form(key: key, child: ListView(padding: const EdgeInsets.all(16), children: [TextFormField(controller: name, decoration: const InputDecoration(labelText: 'Full name'), validator: requiredField), const SizedBox(height: 12), TextFormField(controller: roll, decoration: const InputDecoration(labelText: 'Roll number'), validator: requiredField), const SizedBox(height: 12), TextFormField(controller: course, decoration: const InputDecoration(labelText: 'Course / department'), validator: requiredField), const SizedBox(height: 12), TextFormField(controller: phone, keyboardType: TextInputType.phone, decoration: const InputDecoration(labelText: 'Phone number'), validator: (v) => v != null && RegExp(r'^\d{10}$').hasMatch(v.trim()) ? null : 'Enter a valid 10-digit phone'), const SizedBox(height: 12), TextFormField(controller: email, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(labelText: 'Email address'), validator: (v) => v != null && RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(v.trim()) ? null : 'Enter a valid email'), const SizedBox(height: 20), FilledButton.icon(onPressed: saving ? null : save, icon: const Icon(Icons.save), label: Text(saving ? 'Saving...' : 'Save student'))])));
}
