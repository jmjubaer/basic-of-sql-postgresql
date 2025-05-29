-- Active: 1748447009962@@127.0.0.1@5432@test_db
-- create table commend
CREATE Table student(
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT ,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(20)
)
-- insert data commend

INSERT INTO student (name, age, grade, course, email, dob, blood_group, country)
VALUES 
('Alice Johnson', 20, 'A', 'Computer Science', 'alice.johnson@example.com', '2004-03-15', 'A+', 'USA'),
('Mohammed Karim', 22, 'B', 'Software Engineering', 'karim.m@example.com', '2002-07-10', 'B+', 'Bangladesh'),
('Sophie Lee', 19, 'A', 'Information Tech', 'sophie.lee@example.com', '2005-01-20', 'O-', 'UK'),
('Liam Smith', 21, 'B', 'Data Science', 'liam.smith@example.com', '2003-05-30', 'AB+', 'Canada'),
('Ravi Kumar', 23, 'C', 'Cybersecurity', 'ravi.kumar@example.com', '2001-12-01', 'A-', 'India'),
('Emma Davis', 20, 'A', 'Computer Science', 'emma.davis@example.com', '2004-04-18', 'O+', 'Australia'),
('Chen Wei', 22, 'B', 'AI & Robotics', 'chen.wei@example.com', '2002-09-25', 'B-', 'China'),
('Isabella Torres', 21, 'B', 'Web Development', 'isabella.t@example.com', '2003-08-05', 'AB-', 'Mexico'),
('John Miller', 24, 'C', 'Cloud Computing', 'john.miller@example.com', '2000-11-11', 'A+', 'Germany'),
('Fatima Noor', 20, 'A', 'UI/UX Design', 'fatima.noor@example.com', '2004-06-22', 'O+', 'Pakistan');

-- For getting all data
SELECT * FROM student;

-- for getting specify field 
SELECT name, age FROM student;

-- for getting specify field data by rename (alias)
SELECT name as studentName FROM student;




-- We can use here any type of comparison operator
-- for getting by sorting
SELECT * FROM student ORDER BY age ASC;
SELECT * FROM student ORDER BY age DESC;

-- get total category i means how many country available here
SELECT DISTINCT country FROM student;
-- We can also filter data
SELECT * FROM student 
    WHERE age > 20;

-- We can use multiple filter data
SELECT * FROM student 
    WHERE age > 20 and country = 'Bangladesh';

-- we can use not equal 
SELECT * FROM student 
    WHERE age > 20 and country <> 'Bangladesh'; 
SELECT * FROM student 
    WHERE age > 20 and NOT country = 'Bangladesh';  -- same like before


SELECT * FROM student 
    WHERE country IN('Bangladesh','India') ;  -- Pass multiple argument


SELECT * FROM student 
    WHERE country NOT IN('Bangladesh','India') ;  -- Pass multiple argument
SELECT * FROM student 
    WHERE age BETWEEN  19 and 24;  -- between, this mostly use for date


-- Like is case sensitive
SELECT * FROM student 
    WHERE name LIKE 'M%';  -- first letter M last anything
SELECT * FROM student 
    WHERE name LIKE '%m';  -- last letter m last anything

-- every "-" mean a letter
SELECT * FROM student 
    WHERE name LIKE '_a%';  -- fist one anything second letter a last anything

-- ILIKE case insensitive
SELECT * FROM student 
    WHERE name ILIKE 'm%';  -- last letter m last anything


-- We can also filter data
SELECT * FROM student 
    WHERE country IS NULL; -- get null data
SELECT * FROM student 
    WHERE country IS NOT NULL; -- get not null data

-- replane the value when null data
 SELECT COALESCE (country, "not define") FROM student 




-- There are two type of function in SELECT method
--   1.  Scalar function :  its return value in every row
0-- 2. Aggregate function: Its return one value for one collection

-- Common Scalar function
SELECT upper(name) FROM student; -- uppercase
SELECT lower(name) FROM student; --lowercase
SELECT concat(first_name, "" , last_name) FROM student; -- concate two string
SELECT length(name) FROM student; --string length


-- Common Aggregate function
SELECT avg(age) FROM student; -- get average
SELECT max(age) FROM student; -- get max value
SELECT min(age) FROM student; -- get min value
SELECT sum(age) FROM student; -- calculate sum value
SELECT count(*) FROM student; -- get total row count

-- we can use combine both function 
SELECT max(length(name)) FROM student; -- get max length name value

------------------------  Paginate ------------------------------
SELECT * FROM student;
SELECT * FROM student LIMIT 5;
SELECT * FROM student LIMIT 5 OFFSET 5;

------------------------  delete ------------------------------
DELETE FROM student 
    WHERE student_id = 17 -- we can use here all filtering operator
------------------------  update ------------------------------

update student 
    SET age = 30, grade = 'A+' -- we can set multiple column value by comma
    WHERE student_id = 19 -- we can use here all filtering operator
