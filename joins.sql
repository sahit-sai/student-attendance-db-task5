
USE student_attendance;

-- 1. INNER JOIN (students with their courses)
SELECT s.name, c.title
FROM Students s
INNER JOIN Enrollments e ON s.id = e.student_id
INNER JOIN Courses c ON e.course_id = c.id;

-- 2. LEFT JOIN (all students, even without courses)
SELECT s.name, c.title
FROM Students s
LEFT JOIN Enrollments e ON s.id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.id;

-- 3. RIGHT JOIN (all courses, even without students)
-- Note: MySQL supports RIGHT JOIN, SQLite does not
SELECT s.name, c.title
FROM Students s
RIGHT JOIN Enrollments e ON s.id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.id;

-- 4. FULL OUTER JOIN (all students and all courses)
-- Not supported directly in MySQL/SQLite → use UNION of LEFT + RIGHT
SELECT s.name, c.title
FROM Students s
LEFT JOIN Enrollments e ON s.id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.id
UNION
SELECT s.name, c.title
FROM Students s
RIGHT JOIN Enrollments e ON s.id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.id;
