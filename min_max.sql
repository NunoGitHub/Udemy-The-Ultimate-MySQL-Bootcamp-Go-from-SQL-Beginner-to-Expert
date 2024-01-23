-- Active: 1692434240351@@127.0.0.1@3306@book_shop

SELECT  MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT MIN(author_lname), MAX(author_lname) FROM books;

-- books with most STATS_SAMPLE_PAGES

SELECT title, pages from books ORDER BY pages DESC LIMIT 1;

-- or subquery , only work with no repeated max rows, query is not limiting the obtained rows

SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

--older book

SELECT title, released_year FROM books WHERE released_year= (SELECT MIN(released_year) FROM books);

SELECT author_fname, author_lname FROM books ORDER BY author_lname ;

--number books by author

-- SELECT author_lname, COUNT(*) as nBooks FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*) as nBooks FROM books 
GROUP BY author_fname, author_lname 
ORDER BY nBooks DESC;

SELECT CONCAT(author_fname, ' ', author_lname) as author, COUNT(*) as nBooks FROM books
GROUP BY author 
ORDER BY nBooks DESC;


SELECT   CONCAT(author_fname, ' ', author_lname) as author, COUNT(*) as nBooks, MIN(released_year) as yearFirstBook  FROM books
GROUP BY author 
ORDER BY yearFirstBook DESC
;