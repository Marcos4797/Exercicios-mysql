-- 01 INSERIR um novo departamento (id=80) chamado 'Pesquisa' sem manager nem location  crieir um 300 80 ja existe --
INSERT INTO departments (department_id, department_name, manager_id, location_id )
  VALUES 
		(80, 'Pesquisa', NULL, NULL);

-- 02  Dê um reajuste de 15% no salário de TODOS os funcionários do departamento 60 (UPDATE) --
UPDATE employees
  SET  salary = salary * 1.15
  WHERE  department_id = 60;

-- 03 Copie todos os funcionários do cargo 'IT_PROG' para uma tabela de backup chamada 'devs_backup' (use INSERT ... SELECT) --

INSERT INTO devs_backup 
SELECT * FROM employees 
WHERE job_id = 'IT_PROG';

  
-- 04  Apague o departamento 80 que você acabou de criar — observe se há erro de integridade --
 DELETE FROM departments
  WHERE   department_id = 80;

-- 05  Use uma transação (START TRANSACTION + ROLLBACK) para tentar dar um aumento de 50% no salário e desfazer a operação antes de commitar --
START TRANSACTION;
 
UPDATE employees SET salary = salary * 1.50;
  
ROLLBACK;

