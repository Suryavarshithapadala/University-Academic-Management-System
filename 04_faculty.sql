-- =====================================================
-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- Table: FACULTY
-- File: 04_faculty.sql
-- =====================================================

-- =====================================================
-- 1. CREATE FACULTY TABLE
-- =====================================================

CREATE TABLE Faculty (
    faculty_id NUMBER PRIMARY KEY,
    faculty_name VARCHAR2(50) NOT NULL,
    qualification VARCHAR2(30),
    phone VARCHAR2(10),
    email VARCHAR2(60),
    department_id NUMBER NOT NULL,

    CONSTRAINT fk_faculty_department
        FOREIGN KEY (department_id)
        REFERENCES Department(dept_id),

    CONSTRAINT uq_faculty_phone
        UNIQUE (phone),

    CONSTRAINT uq_faculty_email
        UNIQUE (email)
);


-- =====================================================
-- 2. INSERT FACULTY DATA
-- =====================================================

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

ALTER TABLE Department
    ADD CONSTRAINT fk_department_hod
        FOREIGN KEY (hod_id)
        REFERENCES Faculty(faculty_id);

COMMIT;


-- =====================================================
-- 3. VERIFY DATA
-- =====================================================

DESC Faculty;

SELECT *
FROM Faculty
ORDER BY faculty_id;
