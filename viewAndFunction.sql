
-- View is like js function when we call this its run the capsulated query. we can store any query bia view.

--  View are two types 
--  1. Material view
--  2. NonMaterial view

CREATE View test_view 
AS
SELECT customer_id, count(*), sum(total_amount) FROM orders
    GROUP BY  customer_id
    HAVING count(*) > 2
;


SELECT * from test_view;



----------------------- Function ---------------------

SELECT * from employees;

-- structure of create function in sql. we can use any type of query.
CREATE Function get_avg_salary()
RETURNS INT
LANGUAGE SQL
AS
$$
SELECT avg(salary) from employees;
$$;

-- we can use ite like js function
SELECT * from get_avg_salary();

-- pass the argument
CREATE Function delete_employee(p_employee_id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE from employees WHERE employee_id = p_employee_id;
$$;

SELECT * from delete_employee(30);
