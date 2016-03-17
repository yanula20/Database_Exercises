USE `codeup_test_db;`;

select first_name from employees where first_name = 'Irena' or first_name ='Vidya' or first_name ='Maya' 
and (gender = 'M');

select last_name from employees where last_name like "E%" AND last_name like "%E";


select last_name from employees where last_name like "E%";


select * from employees where hire_date BETWEEN '1990-01-01' and '1999-12-31';


select * from employees where hire_date like '199%';


select last_name, birth_date from employees where birth_date like '%-12-25';


select * from employees where last_name like '%q%';


select * from employees where last_name like '%q%' and last_name not like '%qu%';


select * from employees where hire_date like '199%' and birth_date like '%-12-25';