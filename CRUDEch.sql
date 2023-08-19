
CREATE DATABASE shirts_db

USE shirts_db;


CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT PRIMARY KEY,
    article VARCHAR(20) NOT NULL,
    last_worm INT,
    shirt_size VARCHAR(5) NOT NULL,
    color VARCHAR(20) NOT NULL
)

INSERT INTO  shirts (article, color, shirt_size, last_worm) VALUES
('t-shirt', 'white', 'S', 10), 
('t-shirt', 'green', 'S', 200), 
('polo shirt', 'black', 'M', 10), 
('tank top', 'blue', 'S', 50), 
('t-shirt', 'pink', 'S', 0), 
('polo shirt', 'red', 'M', 5), 
('tank top', 'white', 'S', 200), 
('tank top', 'blue', 'M', 15);

INSERT INTO shirts (article, color, shirt_size, last_worm) VALUES ('polo shirt','purple', 'M', 50 )

SELECT article, color FROM shirts

SELECT article, color, last_worm, shirt_size FROM shirts WHERE shirt_size ='M'
ORDER BY last_worm DESC

UPDATE shirts set shirt_size='L' where article ='polo shirt'

UPDATE shirts set last_worm =0 WHERE last_worm =15

UPDATE shirts set shirt_size = 'XS', color= 'off white' WHERE color='white' 

DELETE FROM shirts WHERE last_worm >= 200


DELETE FROM shirts where article ='tank top'

DELETE FROM shirts;

DROP Table shirts;

DROP DATABASE shirts_db;