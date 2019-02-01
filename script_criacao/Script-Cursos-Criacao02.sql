INSERT INTO PROFESSORES
VALUES('Fernando'),
	  ('Helena'),
	  ('Possarle'),
	  ('Raquel');

INSERT INTO CATEGORIAS_CURSOS 
VALUES('Gest�o'),
	  ('Inform�rica'),
	  ('Desenvolvimento'),
	  ('Marketign'),
	  ('Design');

INSERT INTO CURSOS(NOME, TITULO, ID_CATEGORIA, ID_PROFESSORE)
VALUES			  ('SQL', 'SQL B�SICO - PARTE 1', 14, 1),
				  ('SQL', 'SQL B�SICO - PARTE 2', 14, 1),
				  ('JAVA', 'JAVA B�SICO - PARTE 2', 14, 2),
				  ('REACT', 'REACT NATIVE - PARTE 1', 14, 2),
				  ('GEST�O', 'GEST�O DE PESSOAS', 12, 3);

SELECT * FROM PROFESSORES ORDER BY ID;

SELECT * FROM CATEGORIAS_CURSOS ORDER BY ID;

SELECT * FROM CURSOS ORDER BY ID;

SELECT * FROM ALUNOS ORDER BY ID;

------------------------------

SELECT C.TITULO, P.NOME FROM CURSOS AS C INNER JOIN PROFESSORES AS P ON C.ID_PROFESSORE = P.ID;

SELECT C.TITULO, P.NOME FROM CURSOS AS C INNER JOIN PROFESSORES AS P ON C.ID_PROFESSORE = P.ID AND P.NOME = 'FERNANDO';

SELECT * FROM CURSOS AS C RIGHT JOIN PROFESSORES AS P ON C.ID_PROFESSORE = P.ID;

SELECT * FROM CURSOS AS C LEFT JOIN PROFESSORES AS P ON C.ID_PROFESSORE = P.ID;

-------------------------------

SELECT * FROM CURSOS AS CS1 INNER JOIN CATEGORIAS_CURSOS AS CG2 ON CS1.ID_CATEGORIA = CG2.ID;

SELECT * FROM CURSOS AS CS1 LEFT JOIN CATEGORIAS_CURSOS AS CG2 ON CS1.ID_CATEGORIA = CG2.ID;

SELECT * FROM CURSOS AS CS1 RIGHT JOIN CATEGORIAS_CURSOS AS CG2 ON CS1.ID_CATEGORIA = CG2.ID;

-- 

SELECT * FROM CATEGORIAS_CURSOS AS CG1 INNER JOIN CURSOS AS CS2 ON CG1.ID = CS2.ID_CATEGORIA;

SELECT * FROM CATEGORIAS_CURSOS AS CG1 LEFT JOIN CURSOS AS CS2 ON CG1.ID = CS2.ID_CATEGORIA;

SELECT * FROM CATEGORIAS_CURSOS AS CG1 RIGHT JOIN CURSOS AS CS2 ON CG1.ID = CS2.ID_CATEGORIA;

--

SELECT * FROM CATEGORIAS_CURSOS AS CG FULL OUTER JOIN CURSOS AS CS ON CG.ID = CS.ID_CATEGORIA;

SELECT * FROM CURSOS AS C INNER JOIN CATEGORIAS_CURSOS AS CC ON C.ID_CATEGORIA = CC.ID INNER JOIN PROFESSORES AS P ON C.ID_PROFESSORE = P.ID;

