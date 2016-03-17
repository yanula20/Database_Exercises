USE `codeup_test_db;`;

SELECT DISTINCT title FROM titles;

SELECT title FROM titles
GROUP BY title;

SELECT DISTINCT title FROM titles
order BY title asc;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%'
AND first_name LIKE 'E%' GROUP BY last_name;


SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

SELECT DISTINCT first_name,last_name FROM employees WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name not LIKE '%qu%';

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name not LIKE '%qu%'
GROUP BY last_name;

SELECT last_name, gender, count(last_name) FROM employees WHERE last_name LIKE '%q%' AND last_name not LIKE '%qu%'
GROUP BY last_name;