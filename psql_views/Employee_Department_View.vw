-- VIEW: Employee_Department_View
CREATE OR REPLACE VIEW Employee_Department_View AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.salary,
    d.department_name
FROM 
    employees e
JOIN 
    departments d ON e.department_id = d.department_id;
/