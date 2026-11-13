CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, roll_number TEXT NOT NULL UNIQUE, course TEXT NOT NULL, phone TEXT NOT NULL, email TEXT NOT NULL);
INSERT INTO students(name, roll_number, course, phone, email) VALUES ('Asha Reddy','24CSE001','CSE','9876543210','asha@example.com');
SELECT * FROM students ORDER BY name;
SELECT * FROM students WHERE name LIKE '%Asha%' OR roll_number LIKE '%24CSE%' OR course LIKE '%CSE%';
UPDATE students SET course='Computer Science' WHERE roll_number='24CSE001';
DELETE FROM students WHERE roll_number='24CSE001';
SELECT COUNT(*) AS total_students FROM students;
