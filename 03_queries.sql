-- استعلام عرض اسم الطالب، اسم المادة، الدرجة، وتاريخ التسجيل[cite: 1]
SELECT 
    s.name AS student_name,
    e.course_name,
    e.grade,
    e.enrolled_at
FROM students s
JOIN enrollments e ON s.id = e.student_id;
