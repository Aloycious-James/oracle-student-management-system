CREATE TABLE students (
   roll NUMBER CONSTRAINT pk_students PRIMARY KEY,
   name VARCHAR2(50) NOT NULL,
   age NUMBER CHECK (age >= 0),
   dept_id NUMBER,
   CONSTRAINT fk_students_dept
      FOREIGN KEY (dept_id)
      REFERENCES departments(dept_id)
);