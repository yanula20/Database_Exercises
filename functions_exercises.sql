USE `codeup_test_db;`;

SELECT COUNT(*), gender FROM employees WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name ='Maya')
AND gender = 'F'

ORDER BY gender desc;


SELECT COUNT(gender) AS 'gender count'
FROM employees
WHERE WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name ='Maya')
GROUP BY gender;

SELECT COUNT(*), gender FROM employees WHERE (first_name = 'Irena' OR first_name ='Vidya' OR first_name ='Maya')
AND gender = 'M'

ORDER BY gender desc;


SELECT CONCAT(first_name,' ', last_name) AS 'FULL NAME' FROM employees 
WHERE last_name LIKE "E%E" 

ORDER BY first_name ASC; 


SELECT CONCAT(first_name,' ',last_name), DATEDIFF(NOW(),hire_date) FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25'

ORDER BY DATEDIFF(hire_date,NOW()) ASC;


-- WRONG RE-CHECK
SELECT CONCAT(first_name,' ',last_name) AS 'FULL_NAME', COUNT(last_name) 
FROM employees
WHERE last_name LIKE '%q%' 
AND last_name not LIKE '%qu%'
GROUP BY FULL_NAME
ORDER BY count(last_name) DESC;

-- ALIASES
SELECT CONCAT(emp_no,'-',last_name,' , ',first_name) AS 'full_name', birth_date AS 'DOB'
FROM employees ORDER BY emp_no ASC
LIMIT 10;