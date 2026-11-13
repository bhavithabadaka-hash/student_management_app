import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';
import '../models/student.dart';

class DatabaseHelper {
  DatabaseHelper._();
  static final instance = DatabaseHelper._();
  Database? _db;
  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await openDatabase(p.join(await getDatabasesPath(), 'students.db'), version: 1, onCreate: (db, version) async {
      await db.execute('CREATE TABLE students(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, roll_number TEXT NOT NULL UNIQUE, course TEXT NOT NULL, phone TEXT NOT NULL, email TEXT NOT NULL)');
    });
    return _db!;
  }
  Future<List<Student>> getStudents({String query = ''}) async {
    final rows = await (await database).query('students', where: query.isEmpty ? null : 'name LIKE ? OR roll_number LIKE ? OR course LIKE ?', whereArgs: query.isEmpty ? null : ['%$query%', '%$query%', '%$query%'], orderBy: 'name COLLATE NOCASE');
    return rows.map(Student.fromMap).toList();
  }
  Future<int> insertStudent(Student s) async => (await database).insert('students', s.toMap());
  Future<int> updateStudent(Student s) async => (await database).update('students', s.toMap(), where: 'id = ?', whereArgs: [s.id]);
  Future<int> deleteStudent(int id) async => (await database).delete('students', where: 'id = ?', whereArgs: [id]);
  Future<int> countStudents() async => Sqflite.firstIntValue(await (await database).rawQuery('SELECT COUNT(*) FROM students')) ?? 0;
}
