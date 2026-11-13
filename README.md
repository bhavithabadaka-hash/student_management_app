# Student Management System Using Flutter

A mobile application built with Flutter and Dart to manage student records locally using SQLite. This repository also includes ten Flutter lab experiments aligned with the college syllabus.

## Features
- Dashboard with total student count
- Add, view, edit and delete student records
- Search by name, roll number or course
- Validation for required fields, 10-digit phone and email
- Local SQLite storage and Material 3 interface

## Student fields
Full name, unique roll number, course/department, phone number and email address.

## Requirements
Flutter SDK (Dart is included), Android Studio or VS Code, and an Android emulator or device.

## Run
```bash
flutter doctor
flutter pub get
flutter run
```
If native platform folders are missing, run `flutter create .` once first.

## Checks and APK
```bash
flutter analyze
flutter test
flutter build apk --release
```

## Project structure
```text
lib/                  Main Student Management app
experiments/          Ten individual Flutter lab folders
database/schema.sql   SQLite schema and example queries
docs/commands.md      Flutter and Git commands
screenshots/          Genuine app output screenshots
test/                 Widget tests
```

## Ten Flutter lab experiments
1. Flutter/Dart installation and Dart basics
2. Widgets and Row, Column, Stack layouts
3. Responsive UI and breakpoints
4. Navigator and named routes
5. Stateful/Stateless widgets, setState and Provider
6. Custom widgets and themes
7. Forms and validation
8. Fade and size animations
9. REST API data fetching and display
10. Widget tests and debugging

Each numbered folder under `experiments/` contains a Dart example and README with its aim.

## Database
SQLite is initialized automatically on the device using sqflite. Data is local and is not cloud-synced. See [database/schema.sql](database/schema.sql) for table creation and sample insert, select, search, update, delete and count queries.

## Screenshots
See [screenshots/README.md](screenshots/README.md). Capture genuine screenshots from your running emulator/device and add them to that folder; no fabricated screenshots are included.

## Commands
See [docs/commands.md](docs/commands.md) for setup, run, test, build and Git commands.

## Future improvements
Attendance, marks and grades, CSV export, profile photos, cloud backup and authentication.

## License
Educational use.
