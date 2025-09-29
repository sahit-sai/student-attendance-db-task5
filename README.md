# Student Attendance DB – Task 5

This project is an extension of the **Student Attendance Database** for practicing  
**SQL Joins (INNER, LEFT, RIGHT, FULL)**.

---

## 📂 Files
- **schema.sql** → Simple tables (Students, Courses, Enrollments)
- **joins.sql** → Example join queries (inner, left, right, full)
- **sample_output.txt** → Notes / Expected results

---

## 🚀 How to Use
1. Open MySQL Workbench or DB Browser for SQLite.
2. Run `schema.sql` to create tables and sample data.
3. Run `joins.sql` to practice different join types.

---

## 🔑 Concepts Covered
- INNER JOIN → rows with matching values in both tables  
- LEFT JOIN → all rows from left table + matched from right  
- RIGHT JOIN → all rows from right table + matched from left  
- FULL JOIN → all rows from both tables (where supported)  

---

## 📝 Example Queries
```sql
-- Inner join
SELECT s.name, c.title
FROM Students s
INNER JOIN Enrollments e ON s.id = e.student_id
INNER JOIN Courses c ON e.course_id = c.id;

-- Left join
SELECT s.name, c.title
FROM Students s
LEFT JOIN Enrollments e ON s.id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.id;

-- Right join
SELECT s.name, c.title
FROM Students s
RIGHT JOIN Enrollments e ON s.id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.id;

-- Full join (if DB supports; otherwise use UNION of LEFT + RIGHT)
SELECT s.name, c.title
FROM Students s
FULL JOIN Enrollments e ON s.id = e.student_id
FULL JOIN Courses c ON e.course_id = c.id;
