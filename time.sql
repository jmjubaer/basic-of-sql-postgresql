-- Active: 1748447009962@@127.0.0.1@5432@test_db

SELECT now(); -- get the current time and date with time zone

SELECT current_time; -- get the current time with time zone
SELECT CURRENT_DATE; -- get the current date 

-- There are two date type, 
TIMESTAMP WITH TIME ZONE
TIMESTAMP WITHOUT TIME ZONE

-- casting
SELECT now()::time; -- get the current time
SELECT now()::date; -- get the current date

SELECT to_char(now(), 'dd/mm/yyyy') -- we can use many many formate like moment. google search postgres to_char format

SELECT CURRENT_DATE - INTERVAL '1 year' -- there are many formate google search please

SELECT age(CURRENT_DATE, '2004-05-07'); -- calculate age
 












-- we can cast any type in postgres

SELECT 'y'::BOOLEAN; 
