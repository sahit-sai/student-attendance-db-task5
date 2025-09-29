---

# 2) `schema.sql`
```sql
-- schema.sql
CREATE DATABASE IF NOT EXISTS student_attendance;
USE student_attendance;

-- Students table
CREATE TABLE IF NOT EXISTS Students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150)
);

-- Courses table
CREATE TABLE IF NOT EXISTS Courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

-- Enrollments table (bridge table)
CREATE TABLE IF NOT EXISTS Enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE
);

-- Insert sample students
INSERT INTO Students (name, email) VALUES 
('Rahul Sharma', 'rahul@example.com'),
('Priya Singh', 'priya@example.com'),
('Amit Kumar', NULL);

-- Insert sample courses
INSERT INTO Courses (title) VALUES
('Mathematics'),
('Physics'),
('Computer Science');

-- Insert sample enrollments
INSERT INTO Enrollments (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 3);
