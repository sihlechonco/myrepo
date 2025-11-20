-- 2. Procedure: Updates employee salary
CREATE OR REPLACE PROCEDURE update_salary (
    p_emp_id NUMBER,
    p_new_salary NUMBER
) IS
BEGIN
    UPDATE employees
    SET salary = p_new_salary
    WHERE employee_id = p_emp_id;
END;