-- 3. Package: Employee utilities
CREATE OR REPLACE PACKAGE emp_utils IS
    FUNCTION get_full_name(p_emp_id NUMBER) RETURN VARCHAR2;
    PROCEDURE log_activity(p_emp_id NUMBER, p_action VARCHAR2);
END emp_utils;
/

CREATE OR REPLACE PACKAGE BODY emp_utils IS
    FUNCTION get_full_name(p_emp_id NUMBER) RETURN VARCHAR2 IS
        v_full_name VARCHAR2(100);
    BEGIN
        SELECT first_name || ' ' || last_name INTO v_full_name
        FROM employees
        WHERE employee_id = p_emp_id;
        RETURN v_full_name;
    END;

    PROCEDURE log_activity(p_emp_id NUMBER, p_action VARCHAR2) IS
    BEGIN
        INSERT INTO activity_log (employee_id, action, log_date)
        VALUES (p_emp_id, p_action, SYSDATE);
    END;
END emp_utils;
