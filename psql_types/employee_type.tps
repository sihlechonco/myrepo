-- Object TYPE: Employee_Type
CREATE OR REPLACE TYPE Employee_Type AS OBJECT (
    employee_id   NUMBER,
    first_name    VARCHAR2(50),
    last_name     VARCHAR2(50),
    salary        NUMBER,
    MEMBER FUNCTION get_full_name RETURN VARCHAR2
);
/

-- Type BODY: Implements the method
CREATE OR REPLACE TYPE BODY Employee_Type AS
    MEMBER FUNCTION get_full_name RETURN VARCHAR2 IS
    BEGIN
        RETURN first_name || ' ' || last_name;
    END;
END;
/