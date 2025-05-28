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

