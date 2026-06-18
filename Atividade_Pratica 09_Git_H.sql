-- Exericio 01  Crie LIVROS (id INT PK AUTO_INCREMENT, titulo VARCHAR(80) NOT NULL, autor VARCHAR(60), ano YEAR, preco DECIMAL(8,2)). --
	CREATE TABLE LIVROS (
		id   INT   AUTO_INCREMENT PRIMARY KEY,
		titulo       VARCHAR(80)  NOT NULL,
		autor      VARCHAR (60),
		ano		   YEAR,  
		preco      DECIMAL(8,2)
		);

-- Exericio 02  Adicione duas colunas: editora VARCHAR(50) e disponivel BOOLEAN DEFAULT TRUE --
	    ALTER TABLE LIVROS
		ADD COLUMN  editora VARCHAR (50),
        ADD COLUMN  diponivel  BOOLEAN DEFAULT TRUE;
    
-- Exericio 03  Aumente o tamanho da coluna titulo para VARCHAR(120) usando MODIFY. --
		ALTER TABLE LIVROS
		MODIFY COLUMN titulo VARCHAR (120) NOT NULL;


-- Exericio 04  Crie uma copia LIVROS_BACKUP com livros de preco > 50 reais.--
	CREATE TABLE livros_backup AS
	SELECT * FROM livros
    WHERE preco >50;
	   
-- Exericio 05  Esvazie a LIVROS_BACKUP com TRUNCATE e em seguida apague com DROP. --
 -- Esvazie a LIVROS_BACKUP   apesar de não ter nenhum registro inserido --
		TRUNCATE TABLE LIVROS_BACKUP;
        
 --  apagar com DROP
        DROP TABLE LIVROS_BACKUP;
