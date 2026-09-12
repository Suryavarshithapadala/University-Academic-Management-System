-- =====================================================
-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- Table: DEPARTMENT
-- File: 01_department.sql
-- =====================================================

-- =====================================================
-- 1. CREATE DEPARTMENT TABLE
-- =====================================================

CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(100) NOT NULL UNIQUE,
    hod_id NUMBER,
    established_year NUMBER(4),

    CONSTRAINT chk_department_year
        CHECK (established_year BETWEEN 1800 AND 2100)
);


-- =====================================================
-- 2. INSERT DEPARTMENT DATA
-- =====================================================

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (10, 'CSE', 1, 2010);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (20, 'AIML', 2, 2020);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (30, 'ECE', 3, 2005);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (40, 'EEE', 4, 2000);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (50, 'MECH', 5, 1995);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (60, 'CIVIL', 6, 1990);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (70, 'IT', 7, 2012);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (80, 'MBA', 8, 2008);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (90, 'MCA', 9, 2006);

INSERT INTO Department
    (dept_id, dept_name, hod_id, established_year)
VALUES
    (100, 'BBA', 10, 2015);


-- =====================================================
-- 3. VERIFY DATA
-- =====================================================

SELECT *
FROM Department
ORDER BY dept_id;



