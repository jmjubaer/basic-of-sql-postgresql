
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