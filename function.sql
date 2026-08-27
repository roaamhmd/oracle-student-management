-- 1. إنشاء الدالة لحساب المعدل مع معالجة الأخطاء[cite: 1]
CREATE OR REPLACE FUNCTION get_student_average (
    p_student_id IN NUMBER
) RETURN NUMBER IS
    v_avg NUMBER;
    v_count NUMBER;
    e_no_enrollments EXCEPTION;
BEGIN
    -- فحص عدد مواد الطالب وحساب المعدل
    SELECT COUNT(*), AVG(grade)
    INTO v_count, v_avg
    FROM enrollments
    WHERE student_id = p_student_id;

    -- إطلاق استثناء إذا لم يمتلك الطالب أي تسجيلات[cite: 1]
    IF v_count = 0 THEN
        RAISE e_no_enrollments;
    END IF;

    -- طباعة وإرجاع المعدل[cite: 1]
    DBMS_OUTPUT.PUT_LINE('Average Grade for Student ID ' || p_student_id || ': ' || ROUND(v_avg, 2));
    RETURN ROUND(v_avg, 2);

EXCEPTION
    WHEN e_no_enrollments THEN
        DBMS_OUTPUT.PUT_LINE('No enrollments found for this student'); --[cite: 1]
        RETURN NULL;
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error while calculating average'); --[cite: 1]
        RETURN NULL;
END get_student_average;
/

-- 2. استدعاء واختبار الدالة للطالبين[cite: 1]
DECLARE
    v_result NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('=== Test 1: Student with Enrollments (ID 1) ===');
    v_result := get_student_average(1);

    DBMS_OUTPUT.PUT_LINE('=== Test 2: Student without Enrollments (ID 3) ===');
    v_result := get_student_average(3);
END;
/