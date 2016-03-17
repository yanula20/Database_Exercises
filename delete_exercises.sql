USE `codeup_test_db;`;

-- Write SELECT statements for:
-- Albums released after 1991
-- Albums with the genre "disco"
-- Albums by "Whitney Houston" (...or maybe an artist of your choice)
-- Make sure to put appropriate captions before each SELECT.
-- Convert the SELECT statements to DELETE.
-- Use the MySQL command line client to make sure your records really were removed.
-- Commit your changes after each step and push to GitHub.


SELECT name AS 'Albums released after 1981', release_date FROM albums WHERE release_date >= TIMESTAMP('1991-01-01');

SELECT name AS 'Disco Genre Albums' FROM albums WHERE genre LIKE '%disco%';

SELECT name AS 'Whitney Houston Hits' FROM albums WHERE artist = 'Whitney Houston';


