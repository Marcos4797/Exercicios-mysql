SELECT *
FROM departments;
-- exercicio 2
SELECT department_name, location_id
FROM departments;
-- exercicio 3 --
select job_id,job_title,max_salary
from jobs;
-- exercicio 4 --
select job_title,max_salary,job_id
from jobs;
-- exercicio 5 --
select first_name,last_name, email, phone_number
from employees;
-- exercicio 6 --
select last_name, salary, salary+500 as sal_adicional
FROM employees;
-- exercicio 7 --
select last_name, salary, salary*12 as sal_anual
FROM employees;
-- exercicio 8 --
select last_name, salary*12, salary*12 + 1000 as sal_bonus
FROM employees;
-- exercicio 9 --
select last_name, job_id, commission_pct, salary*12*commission_pct as comissáo
FROM employees;
-- exercicio 10 --
select last_name AS "Sobrenome", salary AS "Salario mensal", salary*12 as "Salario anual"
FROM employees;
-- exercicio 11 --

