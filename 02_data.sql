-- إدخال بيانات الطلاب[cite: 1]
INSERT INTO students (id, name, email) VALUES (1, 'Roaa Al-Akayleh', 'roaa@example.com');
INSERT INTO students (id, name, email) VALUES (2, 'Ahmad Ali', 'ahmad@example.com');
INSERT INTO students (id, name, email) VALUES (3, 'Sara Omar', 'sara@example.com'); -- طالب بدون تسجيلات لاختبار الأخطاء

-- إدخال بيانات التسجيلات[cite: 1]
INSERT INTO enrollments (id, student_id, course_name, grade, enrolled_at)
VALUES (101, 1, 'Database Systems', 92.50, TO_DATE('2026-01-15', 'YYYY-MM-DD'));

INSERT INTO enrollments (id, student_id, course_name, grade, enrolled_at)
VALUES (102, 1, 'Python Programming', 88.00, TO_DATE('2026-02-01', 'YYYY-MM-DD'));

INSERT INTO enrollments (id, student_id, course_name, grade, enrolled_at)
VALUES (103, 2, 'Software Engineering', 95.00, TO_DATE('2026-02-10', 'YYYY-MM-DD'));

COMMIT;