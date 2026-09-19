-- ============================================================
-- PROJECT 1: UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- File: queries.sql
-- ============================================================


-- ============================================================
-- 1. CRUD OPERATIONS
-- ============================================================

-- 1.1 CREATE / INSERT
-- Insert a new student record

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1011, 'Kiran', 'Kumar', DATE '2004-06-15',
     'kiran.kumar@university.edu', 'Hyderabad', 10);


-- 1.2 READ / SELECT
-- Display all students

SELECT *
FROM Student
ORDER BY student_id;


-- 1.3 UPDATE
-- Update the address of student 1011

UPDATE Student
SET address = 'Vijayawada'
WHERE student_id = 1011;


-- Verify updated record

SELECT *
FROM Student
WHERE student_id = 1011;


-- 1.4 DELETE
-- Delete the newly inserted student

DELETE FROM Student
WHERE student_id = 1011;


-- Verify deletion

SELECT *
FROM Student
WHERE student_id = 1011;


-- ============================================================
-- 2. JOIN QUERIES
-- ============================================================

-- 2.1 INNER JOIN
-- Display students along with their department names

SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    d.dept_name
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id
ORDER BY s.student_id;


-- 2.2 INNER JOIN
-- Display courses along with faculty names

SELECT
    c.course_id,
    c.course_name,
    c.credits,
    f.faculty_name
FROM Course c
INNER JOIN Faculty f
    ON c.faculty_id = f.faculty_id
ORDER BY c.course_id;


-- 2.3 MULTI-TABLE JOIN
-- Display students, courses and enrollment details

SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    c.course_name,
    e.semester,
    e.enrollment_date
FROM Student s
INNER JOIN Enrollment e
    ON s.student_id = e.student_id
INNER JOIN Course c
    ON e.course_id = c.course_id
ORDER BY s.student_id;


-- 2.4 JOIN THREE TABLES
-- Display courses with their departments and faculty

SELECT
    c.course_id,
    c.course_name,
    d.dept_name,
    f.faculty_name
FROM Course c
INNER JOIN Department d
    ON c.department_id = d.dept_id
INNER JOIN Faculty f
    ON c.faculty_id = f.faculty_id
ORDER BY c.course_id;


-- ============================================================
-- 3. AGGREGATE FUNCTIONS
-- ============================================================

-- 3.1 COUNT
-- Count the total number of students

SELECT COUNT(*) AS total_students
FROM Student;


-- 3.2 COUNT with GROUP BY
-- Count students in each department

SELECT
    d.dept_name,
    COUNT(s.student_id) AS student_count
FROM Department d
LEFT JOIN Student s
    ON d.dept_id = s.dept_id
GROUP BY d.dept_name
ORDER BY d.dept_name;


-- 3.3 AVG
-- Find the average marks obtained

SELECT
    AVG(marks_obtained) AS average_marks
FROM Results;


-- 3.4 MAX
-- Find the highest marks obtained

SELECT
    MAX(marks_obtained) AS highest_marks
FROM Results;


-- 3.5 MIN
-- Find the lowest marks obtained

SELECT
    MIN(marks_obtained) AS lowest_marks
FROM Results;


-- ============================================================
-- 4. GROUP BY AND HAVING
-- ============================================================

-- Count the number of courses offered by each department

SELECT
    d.dept_name,
    COUNT(c.course_id) AS course_count
FROM Department d
LEFT JOIN Course c
    ON d.dept_id = c.department_id
GROUP BY d.dept_name
HAVING COUNT(c.course_id) > 0
ORDER BY course_count DESC;


-- ============================================================
-- 5. VIEW
-- ============================================================

-- Create a view displaying student and department details

CREATE OR REPLACE VIEW student_department_view AS
SELECT
    s.student_id,
    s.first_name,
    s.last_name,
    s.email,
    d.dept_name
FROM Student s
INNER JOIN Department d
    ON s.dept_id = d.dept_id;


-- Display data from the view

SELECT *
FROM student_department_view
ORDER BY student_id;


-- ============================================================
-- 6. ADDITIONAL USEFUL QUERIES
-- ============================================================

-- Display faculty members and their departments

SELECT
    f.faculty_id,
    f.faculty_name,
    f.qualification,
    d.dept_name
FROM Faculty f
INNER JOIN Department d
    ON f.department_id = d.dept_id
ORDER BY f.faculty_id;


-- Display enrollment details with student and course information

SELECT
    e.enrollment_id,
    s.first_name,
    s.last_name,
    c.course_name,
    e.semester,
    e.enrollment_date
FROM Enrollment e
INNER JOIN Student s
    ON e.student_id = s.student_id
INNER JOIN Course c
    ON e.course_id = c.course_id
ORDER BY e.enrollment_id;


-- ============================================================
-- END OF queries.sql
-- ============================================================