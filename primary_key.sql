--- not auto incremente and not null is redundant because is primary never can be null
CREATE TABLE unique_cats(
    cat_id INT not NULL PRIMARY KEY,
    name varchar(100),
    age int
);

desc unique_cats;


insert into unique_cats (cat_id,name, age) values(1,'matias', 2);

-- with auto increment 
CREATE TABLE unique_catsV2(
    cat_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100),
    age int
);

insert into unique_catsV2 (name, age) values('nani', 5);

desc unique_catsv2;

SELECT * FROM unique_catsv2;