CREATE TABLE student_audit (
   roll NUMBER,
   action VARCHAR2(10),
   action_date DATE
);

CREATE OR REPLACE TRIGGER trg_student_audit
AFTER INSERT OR DELETE
ON students
FOR EACH ROW
BEGIN
   IF INSERTING THEN
      INSERT INTO student_audit
      VALUES (:NEW.roll, 'INSERT', SYSDATE);
   ELSIF DELETING THEN
      INSERT INTO student_audit
      VALUES (:OLD.roll, 'DELETE', SYSDATE);
   END IF;
END;
/