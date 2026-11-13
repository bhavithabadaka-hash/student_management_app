import 'package:flutter_test/flutter_test.dart';
import 'package:student_management_app/main.dart';
void main() { testWidgets('home screen shows title and count', (tester) async { await tester.pumpWidget(const StudentManagementApp()); expect(find.text('Student Management'), findsOneWidget); expect(find.text('Total students'), findsOneWidget); }); }
