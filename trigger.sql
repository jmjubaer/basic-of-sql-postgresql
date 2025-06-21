CREATE Table employees_log (
    employee_name VARCHAR(20),
    deleted_at TIMESTAMP
);


SELECT * from employees;
SELECT * from employees_log;

-- trigger function 
CREATE Function save_user_logs()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT INTO employees_log VALUES(OLD.employee_name, now());
        RAISE NOTICE 'save deleted user';
        RETURN OLD;
     END
$$;
-- trigger body
CREATE or REPLACE TRIGGER save_delete_employee_trigger
BEFORE DELETE
on employees for EACH ROW
EXECUTE FUNCTION save_user_logs();


 DELETE from employees WHERE employee_id = 28;