--DQL

USE db_devconnect;

SELECT TOP Usuarioid FROM tb_usuario;

SELECT Usuarioid
FROM tb_usuario
ORDER BY nome ASC;

SELECT TOP 3 Usuarioid
FROM tb_usuario
ORDER BY id DESC;

SELECT NomeCompleto,NomeUsuario
FROM tb_usuario
WHERE nome = 'Guilherme';

SELECT NomeUsuario
FROM tb_usuario
WHERE nome = 'Milena';

SELECT descricao
FROM tb_publicacao
WHERE descricao = 'Guilherme';

select top 2 *
from tb_usuario
order by id desc;

SELECT COUNT(nome) AS qtd_usuario FROM tb_usuario;

SELECT MAX(data_cadastro) AS cadastro_mais_recente  FROM tb_usuario;

SELECT MIN(data_cadastro) AS cadastro_mais_velho  FROM tb_usuario;

SELECT MIN(data_cadastro) AS cadastro_mais_velho, MAX(data_cadastro) AS cadastro_mais_novo 
FROM tb_usuario;

SELECT TOP 1 NomeCompleto, data_cadastro 
FROM tb_usuario
ORDER BY data_cadastro; 

SELECT AVG(curtida) AS Curtidaid FROM tb_curtida;

SELECT SUM(id) FROM tb_curtida;

