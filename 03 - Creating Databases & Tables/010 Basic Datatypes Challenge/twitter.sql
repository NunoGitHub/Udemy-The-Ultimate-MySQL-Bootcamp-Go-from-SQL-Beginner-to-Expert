drop database tweets;

create database Tweet;

create table tweets (
	username varchar(15),
    tweet_content varchar(140),
    number_favourites int
);
select * from tweets;

INSERT INTO table_name (username, tweet_content, number_favourites) VALUES ('Elon munsk', 'I Will Sell  Tesla', 50000); 
-- 3 /18