-- 1. Function: Calculates bonus based on salary
CREATE OR REPLACE FUNCTION calculate_bonus (
    p_salary NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_salary * 0.10;
END;