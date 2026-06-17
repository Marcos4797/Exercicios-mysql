-- exercicio 1 --
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
select concat(first_name,' ', last_name,' (E-mail: ', email, ')') AS Identificação
FROM employees; 
-- exercicio 12 --
select concat(last_name,' Trabalha no cargo ', job_id, ' e ganha R$', salary, ' por mês') as "Apresentação do Funcionário"
FROM employees;
-- exercicio 13 --
select concat(Job_title,': de R$', min_salary, ' até  R$ ', max_salary) AS "Faixa Salarial"
FROM JOBS;
-- exercicio 14 --
select distinct department_id
FROM employees;
-- exercicio 15 --
select distinct job_id
FROM employees;
-- exercicio 16 --
select distinct department_id ,  job_id
FROM employees;
-- exercicio 17 --
select concat(last_name, ' ', first_name) as "Funcionário",
 job_id as "Cargo",
 salary as "Salario Mensal",
 salary * 12 as "Salario Anual", 
 salary * 12 * commission_pct as "Comissão Anual",
 (salary*12) + (salary *12 * commission_pct) as"Remuneração Anual total"
from employees;