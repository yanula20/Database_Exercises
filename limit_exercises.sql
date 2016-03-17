USE `codeup_test_db;`;

SELECT * FROM employees LIMIT 5;

-- results below same as above
SELECT * FROM employees LIMIT 5 offset 0;

-- next record is the 6th
SELECT * FROM employees LIMIT 5 offset 5;

-- group by must before LIMIT and offset, limit and offset always at the end, for paginations
SELECT * FROM employees 
GROUP BY last_name
LIMIT 5 OFFSET 5;

-- question 1
SELECT last_name FROM employees 
GROUP BY last_name DESC
LIMIT 10 OFFSET 0;

-- question 2
SELECT first_name, last_name,birth_date,hire_date FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 0;


-- question 3
SELECT first_name, last_name,birth_date,hire_date FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;