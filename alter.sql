-- Active: 1748447009962@@127.0.0.1@5432@test_db
SELECT * FROM person2;


-- add column into existing table with constraint
ALTER Table person2
    add COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;
-- delete column in a table
ALTER Table person2
    DROP COLUMN email;
-- rename column name
ALTER Table person2
    RENAME COLUMN age to person_age ;
-- change column data type
ALTER Table person2
    alter COLUMN first_name type VARCHAR(20);

-- add constraint into column
ALTER Table person2
    alter COLUMN person_age set not NULL;


-- remove constraint into column
ALTER Table person2
    alter COLUMN first_name DROP not NULL ;


    --  we can not use UNIQUE, PRIMARY KEY, FOREN KEY constraint. for this we need to use this code

    -- add constraint
ALTER Table person2
    ADD constraint unique_person2_age UNIQUE(person_age) ;


 -- delete constraint
ALTER Table person2
    DROP constraint unique_person2_age UNIQUE(person_age) ;


-- Delete hole table data

TRUNCATE Table person1;