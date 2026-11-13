# Student Management System – Flutter

Flutter/Dart student records app with local SQLite storage plus ten syllabus-aligned Flutter lab experiments.

## Features
- Add, view, edit, delete and search student records
- Dashboard student count
- Form validation for name, roll number, course, 10-digit phone and email
- SQLite local storage; no cloud sync
- Material 3 interface

## Stack
Flutter, Dart, sqflite, path, Provider (practice), http (REST API experiment), flutter_test.

## Run
Install Flutter: https://docs.flutter.dev/get-started/install

```bash
flutter doctor
flutter create . # only if native platform folders are missing
flutter pub get
flutter run
flutter analyze
flutter test
flutter build apk --release
```

## Structure
`lib/` contains the main app; `experiments/01...10/` contains individual lab exercises; `database/schema.sql` contains SQL; `docs/commands.md` lists commands; `screenshots/README.md` explains how to capture genuine outputs.

## Experiments
1. Flutter/Dart setup and language basics
2. Widgets and Row/Column/Stack layouts
3. Responsive UI and breakpoints
4. Navigator and named routes
5. Stateful/Stateless widgets, setState and Provider
6. Custom widgets and themes
7. Forms and validation
8. Fade/slide-style animations
9. REST API fetch and display
10. Widget tests and debugging

Each experiment has its own folder with a Dart example and README. Run the primary app from `lib/main.dart`; copy an experiment widget into a route to run it.

## Database
SQLite table is created automatically on first app launch. See `database/schema.sql` for schema and CRUD/search examples. Records stay on the device.

## Screenshots
Capture real screenshots from your emulator/device and place them in `screenshots/`. No fabricated output images are included. See `screenshots/README.md`.

Educational project / portfolio starter.