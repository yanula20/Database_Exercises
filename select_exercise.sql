USE `codeup_test_db;`;

SELECT name AS 'The name of all albums by Pink Floyd' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' FROM albums WHERE artist = 'The Beatles' AND name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'The genre for Nevermind' FROM albums WHERE  name = 'Nevermind';
SELECT name AS 'The name of 1990s albums' FROM albums WHERE release_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT name AS 'Albums with sales less than twenty mil' FROM albums WHERE sales_in_millions < 20000000;
select name AS 'Albums of the rock genre' FROM albums WHERE genre LIKE '%rock%AS