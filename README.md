# University-Academic-Management-System
DBMS project for managing university academic information.

A relational database project developed in Oracle DBMS to manage core university operations including department allocations, student profiles, faculty management, course offerings, student enrollments, and academic results.

---

##  Project Overview

The **University Academic Management System** provides a structured and normalized database architecture to streamline academic administration. The system is designed with appropriate integrity constraints (Primary Keys, Foreign Keys, Unique constraints, and Check constraints) to maintain data consistency and prevent redundancy across all academic entities.

---

## 📂 Repository Structure

```text
University-Academic-Management-System/
│
├── 01_department.sql       # Department entity schema & seed data
├── 02_student.sql          # Student profiles schema & seed data
├── 03_student_phone.sql    # Multi-valued student contact numbers
├── 04_faculty.sql          # Faculty details & department mappings
├── 05_course.sql           # Course catalog & instructor assignments
├── 06_enrollment.sql       # Student course enrollment records
├── 07_results.sql          # Academic evaluation & grading records
├── 08_queries.sql          # Complex analytical queries (JOINs, Aggregates)
├── sample_data.sql         # Master script for populating test datasets
├── ER_Diagram.png          # Visual Entity-Relationship Diagram
├── Project_Report.docx     # Comprehensive system documentation
└── README.md               # Repository documentation and setup guide
