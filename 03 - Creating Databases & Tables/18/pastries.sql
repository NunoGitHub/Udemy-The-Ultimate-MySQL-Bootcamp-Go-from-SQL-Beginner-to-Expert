CREATE TABLE pastries (
    name varchar(50),
    quantity int
);

INSERT INTO pastries (name, quantity) VALUES ('pao', 20); 

INSERT INTO pastries (name, quantity) VALUES ('gelado', 20); 

SELECT * FROM pastries;

DROP TABLE pastries

-- ------------------------- 

CREATE TABLE cats (
    name varchar(50),
    age int
);

SELECT * FROM cats;

insert into cats (name, age) values ('nani', 5);
insert into cats (name, age) values ('malandro', 5);


insert into cats (name, age) values ('malandro2', 5), ('malandro2', 5),('malandro3', 5), ('malandro4', 5); 

-- age will be null
insert into cats (name) values ('nani');

-- total null 
insert into cats () values ();
-- --------------------------------------

CREATE TABLE people (
    firts_name varchar(20),
    last_name varchar(20),
    age int
);

insert into people (first_name, last_name, age) values ("linda", "belcher", 45);

insert into people (first_name, last_name, age) values  ("philip", "frond", 38),("calvin", "fischoeder", 70);

SELECT first_name FROM people

-- dont allow null
CREATE TABLE cats2 (
    name varchar(100) not null,
    age int not null
);

insert into cats2 (name, age) values ('malandro', 5);
desc cats2;
SELECT * FROM cats2;


CREATE TABLE shop (
    name varchar(100)
);

insert into shop (name) values ('name shop');
-- insert ' in values
insert into shop (name) values ('mari\'os bros');

insert into shop (name) values ('mari\'os "bros"');


