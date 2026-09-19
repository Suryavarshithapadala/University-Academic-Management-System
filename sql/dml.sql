-- ============================================================
-- PROJECT 1: UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- File: dml.sql
-- ============================================================


-- ============================================================
-- 1. DEPARTMENT DATA
-- ============================================================

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (10, 'CSE', NULL, 2010);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (20, 'AIML', NULL, 2020);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (30, 'ECE', NULL, 2005);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (40, 'EEE', NULL, 2000);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (50, 'MECH', NULL, 1995);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (60, 'CIVIL', NULL, 1990);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (70, 'IT', NULL, 2012);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (80, 'MBA', NULL, 2008);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (90, 'MCA', NULL, 2006);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (100, 'BBA', NULL, 2015);


-- ============================================================
-- 2. FACULTY DATA
-- ============================================================

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (201, 'Rajesh', 'PhD', '9000000001', 'rajesh@gmail.com', 10);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (202, 'Srinivas', 'PhD', '9000000002', 'srinivas@gmail.com', 20);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (203, 'Priya', 'M.Tech', '9000000003', 'priya@gmail.com', 30);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (204, 'Anil', 'PhD', '9000000004', 'anil@gmail.com', 40);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (205, 'Meena', 'M.Tech', '9000000005', 'meena@gmail.com', 50);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (206, 'Ravi', 'PhD', '9000000006', 'ravi@gmail.com', 60);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (207, 'Deepa', 'PhD', '9000000007', 'deepa@gmail.com', 70);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (208, 'Kiran', 'MBA', '9000000008', 'kiran@gmail.com', 80);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (209, 'Divya', 'MCA', '9000000009', 'divya@gmail.com', 90);

INSERT INTO Faculty
    (faculty_id, faculty_name, qualification, phone, email, department_id)
VALUES
    (210, 'Ajay', 'MBA', '9000000010', 'ajay@gmail.com', 100);


-- ============================================================
-- 3. UPDATE DEPARTMENT HODs
-- ============================================================

UPDATE Department
SET hod_id = 201
WHERE dept_id = 10;

UPDATE Department
SET hod_id = 202
WHERE dept_id = 20;

UPDATE Department
SET hod_id = 203
WHERE dept_id = 30;

UPDATE Department
SET hod_id = 204
WHERE dept_id = 40;

UPDATE Department
SET hod_id = 205
WHERE dept_id = 50;

UPDATE Department
SET hod_id = 206
WHERE dept_id = 60;

UPDATE Department
SET hod_id = 207
WHERE dept_id = 70;

UPDATE Department
SET hod_id = 208
WHERE dept_id = 80;

UPDATE Department
SET hod_id = 209
WHERE dept_id = 90;

UPDATE Department
SET hod_id = 210
WHERE dept_id = 100;


-- ============================================================
-- 4. STUDENT DATA
-- ============================================================

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1001, 'Ravi', 'Kumar', DATE '2002-05-12',
     'ravi.kumar@university.edu', 'Hyderabad', 10);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1002, 'Priya', 'Sharma', DATE '2003-08-22',
     'priya.sharma@university.edu', 'Secunderabad', 20);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1003, 'Arjun', 'Reddy', DATE '2002-11-30',
     'arjun.reddy@university.edu', 'Warangal', 10);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1004, 'Sneha', 'Patel', DATE '2003-03-15',
     'sneha.patel@university.edu', 'Vijayawada', 30);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1005, 'Kiran', 'Rao', DATE '2002-09-10',
     'kiran.rao@university.edu', 'Guntur', 40);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1006, 'Ananya', 'Reddy', DATE '2003-01-25',
     'ananya.reddy@university.edu', 'Hyderabad', 50);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1007, 'Rahul', 'Verma', DATE '2002-07-18',
     'rahul.verma@university.edu', 'Karimnagar', 60);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1008, 'Meghana', 'Rao', DATE '2003-04-09',
     'meghana.rao@university.edu', 'Hyderabad', 70);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1009, 'Vikram', 'Singh', DATE '2002-12-05',
     'vikram.singh@university.edu', 'Nizamabad', 80);

INSERT INTO Student
    (student_id, first_name, last_name, dob, email, address, dept_id)
VALUES
    (1010, 'Divya', 'Reddy', DATE '2003-06-20',
     'divya.reddy@university.edu', 'Hyderabad', 90);


-- ============================================================
-- 5. STUDENT PHONE DATA
-- ============================================================

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1001, '9876543210');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1001, '9123456789');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1002, '9876543211');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1003, '9876543212');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1003, '9000011122');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1004, '9876543213');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1005, '9876543214');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1006, '9876543215');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1007, '9876543216');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1008, '9876543217');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1009, '9876543218');

INSERT INTO Student_Phone
    (student_id, phone_number)
VALUES
    (1010, '9876543219');


-- ============================================================
-- 6. COURSE DATA
-- ============================================================

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (301, 'DBMS', 4, 3, 201, 10);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (302, 'Machine Learning', 4, 5, 202, 20);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (303, 'Digital Electronics', 3, 3, 203, 30);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (304, 'Power Systems', 4, 4, 204, 40);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (305, 'Thermodynamics', 4, 4, 205, 50);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (306, 'Surveying', 3, 3, 206, 60);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (307, 'Python', 3, 2, 207, 70);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (308, 'Marketing', 4, 2, 208, 80);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (309, 'Java', 4, 2, 209, 90);

INSERT INTO Course
    (course_id, course_name, credits, semester, faculty_id, department_id)
VALUES
    (310, 'Business Analytics', 4, 3, 210, 100);


-- ============================================================
-- 7. ENROLLMENT DATA
-- ============================================================

INSERT INTO Enrollment
    (student_id, course_id, semester, enrollment_date)
VALUES
    (1001, 301, '2024-Odd', DATE '2024-07-01');

INSERT INTO Enrollment
    (student_id, course_id, semester, enrollment_date)
VALUES
    (1002, 302, '2024-Odd', DATE '2024-07-01');

INSERT INTO Enrollment
    (student_id, course_id, semester, enrollment_date)
VALUES
    (1003, 301, '2024-Odd', DATE '2024-07-01');


-- ============================================================
-- 8. RESULTS DATA
-- ============================================================

-- No sample Result records were supplied.


-- ============================================================
-- 9. COMMIT
-- ============================================================

COMMIT;


-- ============================================================
-- END OF dml.sql
-- ============================================================