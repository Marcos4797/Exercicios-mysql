-- 01 Calcule a média salarial geral, o maior salário e o menor salário em uma única consulta. --
SELECT avg(salary)    AS "Media Salarial",
	   MAX(salary) 	  AS "Maior Salário",
       MIN(salary)    AS "Menor Salário"
FROM employees;

-- 02 Conte quantos funcionários DIFERENTES de cargo existem (cargos únicos) na empresa --
SELECT COUNT(distinct job_id) AS "Cargos Únicos"
FROM employees;

-- 03 Mostre o total da folha de pagamento agrupado por department_id — uma linha por departamento. --
SELECT department_id, 
SUM(salary)   AS "Folha de Pagamento Total"
FROM employees
GROUP BY employee_id;

-- 04 Mostre Liste apenas os departamentos cujo salário MÉDIO seja maior que 7000 (use HAVING). --
SELECT department_id,
         AVG(salary)  AS "Media"
         FROM employees
    GROUP BY department_id 
	HAVING AVG(salary) > 7000;	


-- 05 Encontre a MAIOR média salarial entre todos os departamentos (aninhamento de funções de grupo). --
SELECT max(avg(salary))  AS "Maior Media Salarial"
     FROM employees
     GROUP BY department_id;

-- Alternativa para MySQL / PostgreSQL
SELECT 
    AVG(salary) AS maior_media_salarial
FROM 
    employees
GROUP BY 
    department_id
ORDER BY 
    maior_media_salarial DESC
LIMIT 1;

