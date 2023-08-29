CREATE DATABASE book_shop;

USE book_shop;


CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT * FROM books

DESC books

-- string functions 

SELECT CONCAT('h', 'e', 'l')

SELECT 'hel'

-- strings


SELECT CONCAT(books.author_fname,' ' ,books.author_lname) as fullName FROM books

-- with seperator
SELECT CONCAT_WS(' ', books.author_fname, books.author_lname) as FullName FROM books

SELECT CONCAT_WS('-', title, author_fname, author_lname) as info FROM books

-- substring
SELECT SUBSTRING('hello world', 1,5)

SELECT SUBSTRING('hello world', 7)

SELECT SUBSTRING('hello world', -3)


SELECT SUBSTRING(title,1,15) as title FROM books


SELECT SUBSTR(title, 1, 15) as title FROM books


SELECT SUBSTRING(author_lname, 1,1) as initial , author_lname FROM books


SELECT CONCAT( SUBSTR(title, 1,19), '...') as shortTitle FROM books

SELECT CONCAT(SUBSTR(author_fname,1,1), '.' , SUBSTR(author_lname,1,1), '.') as author_initial FROM books

SELECT REPLACE('Hello World', 'Hell', '%$#@')

select REPLACE('cheese bread coffe milk', ' ', ' and ')


SELECT REPLACE(title, ' ', '-') FROM books


SELECT REVERSE('hello world')

SELECT REVERSE('chicken nuggets')


SELECT REVERSE(author_fname) as reverse_namef FROM books


SELECT CONCAT(author_fname,REVERSE(author_fname )) FROM books

SELECT author_fname ,CHARACTER_LENGTH(author_fname) as length  FROM books

SELECT title ,CHARACTER_LENGTH(title) as length FROM books

-- bytes size
SELECT title ,LENGTH(title) as lengthBytes FROM books


SELECT UPPER(title) FROM books

SELECT LOWER(title) FROM books


SELECT REPLACE( CONCAT(UPPER('i love the '), UPPER(title), ' ! ! !'), 'THE THE', 'THE') FROM books


SELECT CONCAT('I LOVE ', UPPER(title), ' ! ! !') FROM books

-- examples
SELECT INSERT('hello bobby', 6,0,'there')

SELECT INSERT('hello bobby', 6,4,'there')

SELECT LEFT('helloworldomg',3)

SELECT RIGHT('helloworldomg',3)


SELECT LEFT(title,1) FROM books

SELECT REPEAT('ha',3)

SELECT TRIM('  boston') FROM books

-- remove specified character with trim
SELECT  TRIM(LEADING  '.' FROM '................San antonio.. ')

SELECT  TRIM(TRAILING  '.' FROM '................San antonio..')

SELECT  TRIM(BOTH  '.' FROM '................San antonio..')

-- exercises

SELECT REVERSE(UPPER('Why does my cat look ate me with such hatred'))

SELECT REPLACE(title, ' ', '->') as title FROM books

SELECT author_lname as forwards, REVERSE(author_lname) as backwards FROM books

SELECT UPPER( CONCAT_WS(' ', author_fname, author_lname)) as full_name_in_caps FROM books

SELECT CONCAT_WS(' was released in ', title, released_year) as blurb FROM books

SELECT title ,CHARACTER_LENGTH(title) as character_count FROM books


SELECT CONCAT(SUBSTRING(title,1,10), '...') as short_title, CONCAT_WS(',', author_lname,author_fname) as author, CONCAT(stock_quantity, ' in stock') as quantity FROM books



CREATE Table new_books
(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);



INSERT INTO new_books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT * FROM new_books



INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);


SELECT  DISTINCT CONCAT_WS(' ', author_fname, author_lname) FROM books

SELECT DISTINCT author_fname, author_fname FROM books

SELECT DISTINCT author_fname, author_fname, released_year FROM books


SELECT * FROM books
ORDER BY released_year  DESC

SELECT author_fname FROM books
ORDER BY author_fname  DESC

SELECT * FROM books
ORDER BY pages DESC

-- order by second column
SELECT title, author_fname, author_lname, released_year FROM books
ORDER BY 2 DESC


-- order by author_lname and then by author_fname
SELECT * FROM books
ORDER BY author_lname, author_fname


SELECT title, author_lname, released_year FROM books
ORDER BY author_lname , released_year DESC


SELECT CONCAT_WS(' ', author_fname, author_lname) as author FROM books
ORDER BY author

-- LIMIT

SELECT * FROM books
ORDER BY released_year
LIMIT 5

-- start in 1 and get 5
SELECT * FROM books
ORDER BY released_year
LIMIT 1,5

-- searching
-- % -> 0 or more characters

SELECT * FROM books
WHERE author_fname LIKE '%ray%'

SELECT * FROM books
WHERE author_fname LIKE '%da%'

-- '%:%' -> characters befor and after because of % before and after of the :
SELECT * FROM books
WHERE title LIKE '%:%'


-- "_" exacly one character
-- in this case 4  characters
SELECT * FROM books
WHERE author_fname LIKE '____'

-- all author_fname unless is null 
SELECT * FROM books
WHERE author_fname LIKE '%'

-- end with n letter, and anything before
SELECT * FROM books
WHERE author_fname LIKE '%n'


-- match % sign

SELECT * FROM books
WHERE title LIKE '%\%%'

-- exercise


SELECT title FROM books
WHERE title LIKE '%stories%'

-- longest title
SELECT title, pages FROM books
ORDER BY CHARACTER_LENGTH(title) DESC LIMIT 1 

-- longest book

SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1 


SELECT title, released_year  FROM books
ORDER BY released_year DESC LIMIT 3

SELECT CONCAT_WS(' - ', title, released_year) as summary  FROM books
ORDER BY released_year DESC LIMIT 3

SELECT title, author_lname FROM books
WHERE author_lname LIKE '% %'

SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity ASC ,released_year DESC limit 3

SELECT title, author_lname FROM books
ORDER BY author_lname, title

SELECT CONCAT(UPPER('my favorite author is '), UPPER(author_fname), ' ', UPPER(author_lname)) as yell FROM books
ORDER BY author_lname

-- agregate functions

-- how many books
SELECT count(*) FROM books

SELECT COUNT(author_fname) FROM books


SELECT COUNT(DISTINCT author_fname) FROM books


SELECT COUNT(DISTINCT released_year) FROM books

SELECT COUNT(DISTINCT author_lname) FROM books


SELECT b.title, ab.c as countTotal FROM books as b
LEFT JOIN (
	(SELECT COUNT(*) as c FROM books as bb
	WHERE bb.title LIKE '%the%'
	) 
)as ab ON 1=1
WHERE b.title LIKE '%the%'

SELECT b.title, (SELECT COUNT(*) FROM books WHERE title LIKE '%the%') as countTotal FROM books as b
WHERE b.title LIKE '%the%'


SELECT b.title, ab.c 
FROM books as b 
LEFT JOIN (
    SELECT bb.book_id, COUNT(*) as c 
    FROM books as bb 
    WHERE bb.title LIKE '%the%'
    GROUP BY bb.book_id
) as ab ON ab.book_id = b.book_id 
WHERE b.title LIKE '%the%';



SELECT COUNT(*) as c FROM books as bb
	WHERE bb.title LIKE '%the%'


-- group BY
SELECT  author_lname FROM books
GROUP BY author_lname

-- create groups, and count the number of people with the same last name in the same group
SELECT  author_lname, COUNT(*) FROM books
GROUP BY author_lname

SELECT  author_lname, COUNT(*) as books_written FROM books
GROUP BY author_lname 
ORDER BY books_written DESC


SELECT released_year, COUNT(*) FROM books
GROUP BY released_year

