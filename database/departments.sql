CREATE TABLE departments (
   dept_id NUMBER CONSTRAINT pk_departments PRIMARY KEY,
   dept_name VARCHAR2(50) CONSTRAINT uq_departments UNIQUE
);