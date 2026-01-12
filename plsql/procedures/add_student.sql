CREATE OR REPLACE PROCEDURE add_student (
   p_roll NUMBER,
   p_name VARCHAR2,
   p_age  NUMBER,
   p_dept NUMBER
) IS
BEGIN
   INSERT INTO students
   VALUES (p_roll, p_name, p_age, p_dept);

   COMMIT;
EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      DBMS_OUTPUT.PUT_LINE('Roll number already exists');
END;
/