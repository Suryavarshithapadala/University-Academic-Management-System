-- =====================================================
-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- Table: COURSE
-- File: 05_course.sql
-- =====================================================

-- =====================================================
-- 1. CREATE COURSE TABLE
-- =====================================================

CREATE TABLE Course (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(60) NOT NULL,
    credits NUMBER,
    semester NUMBER,
    faculty_id NUMBER NOT NULL,
    department_id NUMBER NOT NULL,

    CONSTRAINT ck_course_credits
        CHECK (credits BETWEEN 1 AND 5),

    CONSTRAINT ck_course_semester
        CHECK (semester BETWEEN 1 AND 8),

    CONSTRAINT fk_course_faculty_01
        FOREIGN KEY (faculty_id)
        REFERENCES Faculty(faculty_id),

    CONSTRAINT fk_course_department_01
        FOREIGN KEY (department_id)
        REFERENCES Department(dept_id)
);


-- =====================================================
-- 2. INSERT COURSE DATA
-- =====================================================

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

COMMIT;


-- =====================================================
-- 3. VERIFY DATA
-- =====================================================

DESC Course;

SELECT *
FROM Course
ORDER BY course_id;
