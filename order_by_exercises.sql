USE `codeup_test_db;`;

SELECT first_name, last_name FROM employees WHERE (first_name = 'Irena' OR first_name ='Vidya' ORfirst_name ='Maya')
and gender = 'M'
ORDER BY first_name ASC;


SELECT first_name, last_name FROM employees WHERE first_name = 'Irena' OR first_name ='Vidya' OR first_name ='Maya'
ORDER BY first_name asc, last_name asc;

-- question 3
SELECT first_name, last_name FROM employees WHERE first_name = 'Irena' OR first_name ='Vidya' ORfirst_name ='Maya'
ORDER BY last_name asc, first_name asc;

-- question 4
SELECT first_name, last_name FROM employees WHERE first_name = 'Irena' OR first_name ='Vidya' OR first_name ='Maya'
ORDER BY last_name asc, first_name asc;

-- question 5
SELECT last_name, emp_no FROM employees 
WHERE last_name LIKE "%E%"
ORDER BY emp_no;

-- question 6
SELECT last_name, emp_no FROM employees 
WHERE last_name LIKE "%E%"
ORDER BY last_name DESC;

SELECT last_name, emp_no FROM employees 
WHERE last_name LIKE "%E%"
ORDER BY emp_no DESC;


-- question 7
SELECT * FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%-12-25'
ORDER BY birth_date DESC, hire_date ASC;


-- question 8
SELECT first_name, last_name,birth_date,hire_date FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;