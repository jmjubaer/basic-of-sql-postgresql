-- Active: 1748447009962@@127.0.0.1@5432@test_db
SELECT *  from student


SELECT country, count(*) FROM student 
    GROUP BY country; -- group by country wise and show each country student quantity
    
SELECT grade, avg(age) FROM student 
    GROUP BY grade; -- group by grade wise and show average age


SELECT grade, avg(age) FROM student 
    GROUP BY grade     
        HAVING avg(age) > 20  -- group by grade wise and show average age also filter avg age getter than 20

