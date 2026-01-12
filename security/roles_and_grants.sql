-- Create role
CREATE ROLE student_app_role;

-- Grant privileges
GRANT SELECT, INSERT ON students TO student_app_role;
GRANT SELECT ON departments TO student_app_role;

-- Assign role to user
GRANT student_app_role TO student;