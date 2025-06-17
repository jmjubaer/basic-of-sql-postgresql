-- Active: 1748447009962@@127.0.0.1@5432@test_db

----------------------------- Inner Join---------------------

SELECT title, username from post
        JOIN "user" on post.user_id = "user".user_id; -- get data form foreign table.


SELECT * from post
        JOIN "user" USING(user_id)


-- we can alias name 
SELECT title, username from post as p
        JOIN "user" as u on p.user_id = u.user_id; -- get data form foreign table.



-------------------- Left Join ---------------------------------------
-- show all left table data if right  table null

INSERT INTO post (title,user_id)
    VALUES ('ajdfgb adshklasdf', NULL);

INSERT INTO "user" (username) 
    VALUES ('tastas');
    
SELECT * from post
    LEFT JOIN "user" on post.user_id = "user".user_id; -- First table means left table.

-------------------- Right Join ---------------------------------------
-- show all right table data if left table null
SELECT * from post
    RIGHT JOIN "user" on post.user_id = "user".user_id; -- Last table means right table.


-------------------- Full Join ---------------------------------------
-- show all table data if table null
SELECT * from post
   FULL JOIN "user" on post.user_id = "user".user_id; -- Last table means right table.


-------------------- Cross Join ---------------------------------------
-- show all table data if table null with cross row
SELECT * from post
    CROSS JOIN "user"; -- Last table means right table.

-------------------- NATURAL Join ---------------------------------------
-- show all table data with a common row. for perform properly need common row
SELECT * from post
    NATURAL JOIN "user";



