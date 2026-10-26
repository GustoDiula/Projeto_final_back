DROP Table aula;/*deleta a tabela aukla*/
DROP Table horario_aula;/*delata a tabela horario_aula*/
DELETE FROM aula ;/*"WHERE id = 3" caso seja tirado esta parte do codigo, ira deletar todos os itens da tabela*/
UPDATE aula SET professor = "Carolina" WHERE id = 2;/*atualiza o professor da aula de id 3 para Patrick*/

CREATE TABLE aula
(
 id INT PRIMARY KEY AUTO_INCREMENT,  
 serie CHAR (2) NOT NULL,  
 turma VARCHAR (6) NOT NULL,  
 componente VARCHAR (100) NOT NULL,  
 professor VARCHAR (100) NOT NULL
);

CREATE TABLE horario_aula
(
 id INT PRIMARY KEY AUTO_INCREMENT,  
 idaula INT  NOT NULL,  
 dia_semana VARCHAR (7) NOT NULL, 
 ordem INT NOT NULL  
);

SELECT componente, professor from aula WHERE id = 1;


ALTER TABLE horario_aula ADD FOREIGN KEY(idaula) REFERENCES aula (id);

INSERT INTO aula (serie, turma, componente, professor)
VALUES 
("2°", "DSB", "Matematica", "Inês" ),
("2°", "DSB", "Portugues", "Carolina" ),
("2°", "DSB", "Programação Back-End", "Patrick" ),
("2°", "DSB", "Programação Front-End", "Josiane" ),
("2°", "DSB", "Banco de Dados", "Patrick" )
