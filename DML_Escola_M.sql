	--Comando para usar um banco já criado
USE db_escola_M;


--COMANDO PARA INSERIR UM NOVO REGISTRO
INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajos, 1085 - Barcelona');

SELECT * FROM tb_escola;


--REGISTRO NA TABELA ALUNO
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Felipe', '76059548830', '2009/06/12', 'Dt2C8tnmZi', 1),
('Kaua','63067222890', '2009/03/08', '8XzUQii13Q', 1);

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola) VALUES
('Guilherme', '58749214861', '2009/06/25', 'EqhwNBHcug', 1),
('Julio', '53135016820', '2009/06/25', 'TYg3aMSwLI', 1),
('Arthur', '55492490818', '2009/06/25', 'ygP3Be7hpt', 1),
('Rafael', '39906914815', '2009/06/24', 'SF9j6R02Yj', 1),
('Ariel', '73517127868', '2009/06/22', 'Dnk0kSl8Fb', 1);

SELECT * FROM tb_aluno;


--REGISTRO NA TABELA TURMA
INSERT INTO tb_turma (numero_sala, periodo, serie, nome_turma, id_escola)
VALUES
(5,'Tarde', 1, '1A', 1),
(6,'Manhã', 2, '1B', 1),
(7,'Noite', 2, '2A', 1);

SELECT * FROM tb_turma;

--TABELA PROVA
INSERT INTO tb_prova (nome_professor, materia, duracao, nota, data_prova, id_aluno)
VALUES
('eliana','Geografia','01:00:00',9.5, '2025-05-12', 1),
('Fernanda','Historia','02:40:00',9.5, '2025-08-20', 1);

SELECT * FROM tb_prova;

--TABELA TURMAPROVA - INTERMEDIÁRIA
INSERT INTO tb_turma_prova (id_turma, id_prova)
VALUES 
(2, 6),
(2, 7);

SELECT * FROM tb_turma_prova;

--COMANDO QUE ATUALIZA O NOME DE ALUNO PELO CPF
UPDATE tb_aluno
SET nome = 'João'
WHERE cpf = '73517127868';

SELECT * FROM tb_aluno;

--COMANDO QUE EXCLUI UM REGISTRO
DELETE FROM tb_aluno
WHERE matricula = 'SF9j6R02Yj';

SELECT * FROM tb_aluno;

