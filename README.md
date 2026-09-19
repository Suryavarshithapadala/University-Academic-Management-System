# University Academic Management System

## 📌 Project Overview

The **University Academic Management System** is a relational database project designed to manage and organize academic information within a university.

The system stores and manages information related to:

- Departments
- Students
- Student phone numbers
- Faculty
- Courses
- Enrollments
- Results

The project demonstrates important **Relational Database Management System (RDBMS)** concepts such as table creation, primary keys, foreign keys, constraints, data manipulation, CRUD operations, joins, aggregate functions, grouping, and views.

---

## 🎯 Objectives

The main objectives of this project are:

- To design a relational database for university academic management.
- To maintain student and faculty information.
- To manage departments and courses.
- To record student course enrollments.
- To maintain student results.
- To establish relationships between different entities using foreign keys.
- To demonstrate SQL operations such as CRUD, JOIN, GROUP BY, HAVING, aggregate functions, and views.
- To provide a structured and maintainable database design.

---

## 🗂️ Database Entities

The database consists of the following main tables:

### 1. Department

Stores information about university departments.

**Important attributes:**
- `dept_id`
- `dept_name`
- `hod_id`
- `established_year`

---

### 2. Student

Stores information about students.

**Important attributes:**
- `student_id`
- `first_name`
- `last_name`
- `dob`
- `email`
- `address`
- `dept_id`

---

### 3. Student_Phone

Stores one or more phone numbers associated with students.

**Important attributes:**
- `student_id`
- `phone_number`

The combination of `student_id` and `phone_number` acts as the primary key.

---

### 4. Faculty

Stores faculty information.

**Important attributes:**
- `faculty_id`
- `faculty_name`
- `qualification`
- `phone`
- `email`
- `department_id`

---

### 5. Course

Stores information about courses offered by departments.

**Important attributes:**
- `course_id`
- `course_name`
- `credits`
- `semester`
- `faculty_id`
- `department_id`

---

### 6. Enrollment

Stores information about students enrolled in courses.

**Important attributes:**
- `enrollment_id`
- `student_id`
- `course_id`
- `semester`
- `enrollment_date`

---

### 7. Results

Stores the results associated with student enrollments.

**Important attributes:**
- `result_id`
- `enrollment_id`
- `marks_obtained`
- `total_marks`
- `grade`
- `exam_date`

---

## 🔗 Database Relationships

The major relationships between the tables are:

```text
Department
 ├── Student
 │    └── Student_Phone
 │
 └── Faculty
      └── Course
           └── Enrollment
                └── Results
