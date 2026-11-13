import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StudentManagementApp());
}

class StudentManagementApp extends StatelessWidget {
  const StudentManagementApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Student Management System',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3157A4)), inputDecorationTheme: const InputDecorationTheme(border: OutlineInputBorder())),
        home: const HomeScreen(),
      );
}
