-- إنشاء جدول الطلاب[cite: 1]
CREATE TABLE students (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100)
);

-- إنشاء جدول التسجيلات[cite: 1]
CREATE TABLE enrollments (
    id NUMBER PRIMARY KEY,
    student_id NUMBER REFERENCES students(id) ON DELETE CASCADE,
    course_name VARCHAR2(100) NOT NULL,
    grade NUMBER(5, 2),
    enrolled_at DATE DEFAULT SYSDATE
);