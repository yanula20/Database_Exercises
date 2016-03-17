USE `codeup_test_db;`;

-- Write SELECT statements to output each of the following with a caption:
-- All albums in your table.
-- All albums released before 1980
-- All albums by Michael Jackson

-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change "Michael Jackson" to "Peter Jackson"


-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.
-- Push all your changes to GitHub.


SELECT * FROM albums;
UPDATE albums
SET sales_in_millions = sales_in_millions * 10;
SELECT name AS 'All albums' FROM albums;


SELECT * FROM albums;
UPDATE albums
SET release_date = DATE_SUB(release_date,INTERVAL 100 YEAR)
WHERE release_date < TIMESTAMP('1980-01-01');


SELECT name AS 'Albums before 1980 back to the 1800s' 
FROM albums 
WHERE release_date < TIMESTAMP('1980-01-01');


SELECT * FROM albums;
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';


SELECT name AS 'Michael Jackson to Peter Jackson' 
FROM albums WHERE artist = 'Peter Jackson';