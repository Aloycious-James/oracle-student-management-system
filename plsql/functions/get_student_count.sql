CREATE OR REPLACE FUNCTION get_student_count
RETURN NUMBER IS
   v_count NUMBER;
BEGIN
   SELECT COUNT(*) INTO v_count FROM students;
   RETURN v_count;
END;
/