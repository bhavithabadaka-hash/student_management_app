# Student Management System Using Flutter

A mobile application built with Flutter and Dart to manage student records locally using SQLite.

## Features
- Dashboard with total student count
- Add student records
- View saved student records
- Edit student information
- Delete students with confirmation
- Search by name, roll number, or course
- Form validation for required fields, phone, and email
- Local SQLite storage; records remain on the device
- Material 3 user interface

## Student fields
- Full name
- Roll number (must be unique)
- Course / department
- Phone number
- Email address

## Requirements
- Flutter SDK
- Dart SDK (included with Flutter)
- Android Studio or VS Code
- Android emulator or physical Android device

## Run the app
```bash
flutter pub get
flutter run
```

## Run tests
```bash
flutter test
```

## Project structure
```text
lib/
├── main.dart
├── database/
│   └── database_helper.dart
├── models/
│   └── student.dart
└── screens/
    ├── home_screen.dart
    └── student_form_screen.dart
```

## Database
The app uses SQLite through `sqflite`. Student records are stored locally on the device. They are not automatically synced to the cloud.

## GitHub commits
This repository includes 15 incremental commits documenting the project setup and feature development.

## Future improvements
- Attendance tracking
- Marks and grades
- Export to CSV
- Student profile photos
- Cloud backup and authentication

## License
This project is provided for educational use.

<!-- Commit 01: Create project README -->

<!-- Commit 02: Configure Flutter dependencies -->

<!-- Commit 03: Add Student model -->

<!-- Commit 04: Set up SQLite database helper -->

<!-- Commit 05: Create app entry point and theme -->

<!-- Commit 06: Create student form screen -->

<!-- Commit 07: Add student form validation -->

<!-- Commit 08: Implement local student insertion -->

<!-- Commit 09: Display student records -->

<!-- Commit 10: Add student search -->

<!-- Commit 11: Implement student editing -->

<!-- Commit 12: Add delete confirmation -->

<!-- Commit 13: Show dashboard student statistics -->

<!-- Commit 14: Improve empty states and error handling -->

<!-- Commit 15: Add widget test and final documentation -->
