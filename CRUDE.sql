CREATE Table table_toDelete(
    id int AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age int NOT NULL
)

INSERT INTO table_todelete (name, age) VALUES('John',20);
INSERT INTO table_todelete (name, age) VALUES('manuel',20);
INSERT INTO table_todelete (name, age) VALUES('joaquim',20);
INSERT INTO table_todelete (name, age) VALUES('toto',20);

SELECT * FROM table_todelete

-- DELETE row 

DELETE FROM table_todelete WHERE name = 'John';

-- delete all rows 
DELETE FROM table_todelete

SHOW TABLES


CREATE Table cats(
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
)

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);


SELECT * FROM cats

SELECT name,age FROM cats
des

SELECT * FROM cats WHERE age>5
ORDER BY age DESC

SELECT * FROM cats WHERE age=4

SELECT * FROM cats WHERE name = 'Egg'