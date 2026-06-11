-- exerciio 01 --
SELECT 
e.last_name 			AS Sobrenone,
e.Job_id				AS Cargo, 
d.department_name		AS Departamento
FROM  employees e
JOIN  departments d
ON e.department_id = d.department_id;

-- exercicio 02 --
SELECT
e.last_name 			AS Sobrenone,
d.department_name		AS Departamento,
l.city					AS Cidade
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN 
locations l  ON d.location_id = l.location_id;

-- exercicio 03 --
SELECT 
d.department_id			AS Codigo,
d.department_name		AS Departamento,
e.last_name				AS Sobrenome
FROM departments d
LEFT OUTER JOIN 
    employees e ON d.department_id = e.department_id;
    
-- exercicio 04 --
SELECT 
e.last_name				AS Sobrenome,
m.last_name				AS Gerente
FROM  employees e
JOIN  employees m ON e.manager_id = m.employee_id;

-- exercicio 05 --
SELECT
e.last_name				AS Sobrenome,
e.salary				AS Salary,
j.niveis				AS Nivel_Salarial
FROM employees e
JOIN
jobs j ON e.salary BETWEEN j.min_salary AND j.max_salary;
  