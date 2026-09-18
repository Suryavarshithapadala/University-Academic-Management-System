-- =====================================================
-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- Table: STUDENT
-- File: 02_student.sql
-- =====================================================

-- =====================================================
-- 1. CREATE STUDENT TABLE
-- =====================================================

CREATE TABLE Student (
    student_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    dob DATE,
    email VARCHAR2(100) NOT NULL UNIQUE,
    address VARCHAR2(200),
    dept_id NUMBER NOT NULL,

    CONSTRAINT fk_student_department
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id)
);


-- =====================================================
-- 2. INSERT STUDENT DATA
-- =====================================================

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

COMMIT;

-- =====================================================
-- 3. VERIFY DATA
-- =====================================================

SELECT *
FROM Student
ORDER BY student_id;