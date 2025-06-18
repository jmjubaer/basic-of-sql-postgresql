
CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees (employee_id, employee_name, department_name, salary, hire_date) VALUES
(1, 'John Smith', 'HR', 55000.00, '2020-01-15'),
(2, 'Jane Doe', 'Finance', 65000.00, '2019-03-12'),
(3, 'Michael Johnson', 'IT', 72000.00, '2021-06-20'),
(4, 'Emily Davis', 'Marketing', 58000.00, '2018-09-01'),
(5, 'Robert Brown', 'Sales', 60000.00, '2022-02-10'),
(6, 'Linda Wilson', 'HR', 54000.00, '2021-01-11'),
(7, 'William Jones', 'Finance', 67000.00, '2020-10-25'),
(8, 'Elizabeth Garcia', 'IT', 75000.00, '2017-12-30'),
(9, 'James Martinez', 'Marketing', 59000.00, '2023-03-17'),
(10, 'Barbara Rodriguez', 'Sales', 61000.00, '2019-07-07'),
(11, 'David Lee', 'HR', 56000.00, '2020-04-18'),
(12, 'Susan Walker', 'Finance', 66000.00, '2022-05-14'),
(13, 'Joseph Hall', 'IT', 78000.00, '2021-11-03'),
(14, 'Sarah Allen', 'Marketing', 61000.00, '2020-02-26'),
(15, 'Thomas Young', 'Sales', 62000.00, '2018-06-15'),
(16, 'Karen Hernandez', 'HR', 57000.00, '2019-09-23'),
(17, 'Christopher King', 'Finance', 64000.00, '2020-12-19'),
(18, 'Patricia Wright', 'IT', 79000.00, '2022-08-09'),
(19, 'Daniel Lopez', 'Marketing', 63000.00, '2023-01-29'),
(20, 'Nancy Hill', 'Sales', 60000.00, '2017-05-04'),
(21, 'Matthew Scott', 'HR', 56500.00, '2022-11-17'),
(22, 'Betty Green', 'Finance', 65500.00, '2021-10-21'),
(23, 'Anthony Adams', 'IT', 77000.00, '2023-04-12'),
(24, 'Donna Baker', 'Marketing', 62000.00, '2020-07-27'),
(25, 'Mark Gonzalez', 'Sales', 63000.00, '2021-02-08'),
(26, 'Carol Nelson', 'HR', 58000.00, '2018-03-30'),
(27, 'Steven Carter', 'Finance', 64500.00, '2019-11-06'),
(28, 'Michelle Mitchell', 'IT', 80000.00, '2020-06-10'),
(29, 'George Perez', 'Marketing', 64000.00, '2021-08-05'),
(30, 'Laura Roberts', 'Sales', 61500.00, '2022-01-13');




SELECT max(salary) from employees WHERE department_name = 'HR';


SELECT * from employees WHERE salary > (SELECT max(salary) from employees WHERE department_name = 'HR')