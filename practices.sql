-- Active: 1748447009962@@127.0.0.1@5432@test_db
CREATE Table orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2)
);

TRUNCATE table orders;
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2022-01-01', 150.00),
(2, '2020-06-03', 89.99),
(3, '2022-01-05', 299.50),
(1, '2020-05-07', 49.95),
(2, '2022-01-10', 120.00),
(3, '2022-03-11', 205.75),
(1, '2022-04-12', 399.99),
(2, '2022-01-14', 75.00),
(3, '2021-01-15', 180.40),
(1, '2022-02-16', 99.99);

SELECT * from orders;

SELECT customer_id, count(*), sum(total_amount) FROM orders
    GROUP BY  customer_id
    HAVING count(*) > 2
;

SELECT  to_char(order_date, 'mm/yyyy') , count(*), round(avg(total_amount)) FROM orders
     WHERE extract(YEAR from order_date) = 2022
    GROUP BY to_char(order_date, 'mm/yyyy')
;
