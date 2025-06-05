-- Active: 1748447009962@@127.0.0.1@5432@test_db
CREATE Table "user" (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);



INSERT INTO "user" (username) 
    VALUES ('akash'),
    ('batas'),
    ('pinik'),
    ('zinik');

SELECT * FROM "user";


CREATE Table post(
    post_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(user_id) 
ALTER TABLE "post"
    alter COLUMN user_id set NOT NULL;
    
INSERT INTO post (title,user_id)
    VALUES ('ajdfgb adshklasdf', 1),
            ('ajdfgb adshklasdf', 2),
            ('ajdfgb adshklasdf', 3),
            ('ajdfgb adshklasdf', 4),
            ('ajdfgb adshklasdf', 4);
INSERT INTO post (title,user_id)
    VALUES ('ajdfgb adshklasdf', NULL);


SELECT * FROM post;


DROP TABLE post;

delete from "user" 
    WHERE user_id = 4;
/* 
    There has four scenery to delete referenced data
    1. Default cannot delete throw error from sql
    2. Set default value in reference field. add ( on delete CASCADE )
    3. set default value NULL
    4. Set default value any valid reference

*/


SELECT title, username from post
        JOIN "user" on post.user_id = "user".user_id; -- get data form foreign table.


-- we can alias name 
SELECT title, username from post as p
        JOIN "user" as u on p.user_id = u.user_id; -- get data form foreign table.