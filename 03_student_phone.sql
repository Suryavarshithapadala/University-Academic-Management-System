-- =====================================================
-- UNIVERSITY ACADEMIC MANAGEMENT SYSTEM
-- Table: STUDENT_PHONE
-- File: 03_student_phone.sql
-- =====================================================

-- =====================================================
-- 1. CREATE STUDENT_PHONE TABLE
-- =====================================================

CREATE TABLE Student_Phone (
    student_id NUMBER NOT NULL,
    phone_number VARCHAR2(15) NOT NULL,

    -- Composite Primary Key (Student ID + Phone Number)
    CONSTRAINT pk_student_phone PRIMARY KEY (student_id, phone_number),

    -- Foreign Key referencing Student table
    CONSTRAINT fk_phone_student FOREIGN KEY (student_id)
        REFERENCES Student(student_id)
        ON DELETE CASCADE,

    -- Check constraint for basic phone number format validation
    CONSTRAINT chk_phone_format CHECK (LENGTH(phone_number) >= 10)
);


-- =====================================================
-- 2. INSERT STUDENT PHONE DATA
-- =====================================================

-- Student 1001 (Ravi Kumar)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1001, '9876543210');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1001, '9123456789');

-- Student 1002 (Priya Sharma)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1002, '9876543211');

-- Student 1003 (Arjun Reddy)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1003, '9876543212');
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1003, '9000011122');

-- Student 1004 (Sneha Patel)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1004, '9876543213');

-- Student 1005 (Kiran Rao)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1005, '9876543214');

-- Student 1006 (Ananya Reddy)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1006, '9876543215');

-- Student 1007 (Rahul Verma)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1007, '9876543216');

-- Student 1008 (Meghana Rao)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1008, '9876543217');

-- Student 1009 (Vikram Singh)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1009, '9876543218');

-- Student 1010 (Divya Reddy)
INSERT INTO Student_Phone (student_id, phone_number) VALUES (1010, '9876543219');

COMMIT;

-- =====================================================
-- 3. VERIFY DATA
-- =====================================================

SELECT *
FROM Student_Phone
ORDER BY student_id;