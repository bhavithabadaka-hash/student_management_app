import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/student.dart';
import 'student_form_screen.dart';

class HomeScreen extends StatefulWidget { const HomeScreen({super.key}); @override State<HomeScreen> createState() => _HomeScreenState(); }
class _HomeScreenState extends State<HomeScreen> {
  final search = TextEditingController();
  List<Student> students = [];
  int total = 0;
  bool loading = true;
  @override void initState() { super.initState(); search.addListener(load); load(); }
  Future<void> load() async {
    final list = await DatabaseHelper.instance.getStudents(query: search.text.trim());
    final count = await DatabaseHelper.instance.countStudents();
    if (!mounted) return;
    setState(() { students = list; total = count; loading = false; });
  }
  Future<void> openForm([Student? student]) async { final saved = await Navigator.push<bool>(context, MaterialPageRoute(builder: (_) => StudentFormScreen(student: student))); if (saved == true) load(); }
  Future<void> remove(Student s) async {
    final yes = await showDialog<bool>(context: context, builder: (ctx) => AlertDialog(title: const Text('Delete student?'), content: Text('Remove ${s.name}?'), actions: [TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')), FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Delete'))]));
    if (yes == true && s.id != null) { await DatabaseHelper.instance.deleteStudent(s.id!); load(); }
  }
  @override void dispose() { search.removeListener(load); search.dispose(); super.dispose(); }
  @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Management'), actions: [IconButton(onPressed: load, icon: const Icon(Icons.refresh))]), floatingActionButton: FloatingActionButton.extended(onPressed: () => openForm(), icon: const Icon(Icons.person_add), label: const Text('Add student')), body: Padding(padding: const EdgeInsets.all(16), child: Column(children: [Card(child: ListTile(leading: const Icon(Icons.groups), title: const Text('Total students'), trailing: Text('$total', style: Theme.of(context).textTheme.headlineSmall))), const SizedBox(height: 12), TextField(controller: search, decoration: InputDecoration(hintText: 'Search name, roll number or course', prefixIcon: const Icon(Icons.search), suffixIcon: IconButton(onPressed: search.clear, icon: const Icon(Icons.clear)))), const SizedBox(height: 12), Expanded(child: loading ? const Center(child: CircularProgressIndicator()) : students.isEmpty ? const Center(child: Text('No students found. Add a student to begin.')) : ListView.builder(itemCount: students.length, itemBuilder: (_, i) { final s = students[i]; return Card(child: ListTile(leading: CircleAvatar(child: Text(s.name.isEmpty ? '?' : s.name[0].toUpperCase())), title: Text(s.name), subtitle: Text('${s.rollNumber} • ${s.course}\n${s.email}'), isThreeLine: true, onTap: () => openForm(s), trailing: IconButton(onPressed: () => remove(s), icon: const Icon(Icons.delete_outline)))); }))) ])));
}
