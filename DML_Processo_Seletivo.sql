--DML
USE db_devconnect;

INSERT INTO tb_usuario(NomeCompleto, NomeUsuario, Email, Senha, FotoPerfilurl)
VALUES('Guilherme Vieira', 'ogvieiraa', 'ogvieiraa@gmail.com', '123', 'www.fotovieira.co.br');

SELECT * FROM tb_usuario;

INSERT INTO tb_publicacao(Descricao, ImagemURL, DataPublicacao, Publicacaoid, Usuarioid)
VALUES('Hoje n deu', 'www.hojenaodeu.com.br', '2025/04/22' 1);

SELECT * FROM tb_publicacao;

INSERT INTO tb_curtida(Curtidaid, Usuarioid, Publicacaoid)
VALUES(2,1,7);

SELECT * FROM tb_curtida;

INSERT INTO tb_comentario(Texto, DataPublicacao, Comentarioid, Usuarioid, Publicacaoid)
VALUES('Ontem tava sol, hoje ja ta chovendo', '2025/03/12', 2, 7);

SELECT * FROM tb_comentario;

INSERT INTO tb_seguidor(Usuarioid PK1, Seguindoid FK1, Seguindoid PK1, Seguindo FK1)
VALUES(2,3,6,8);

SELECT * FROM tb_seguidor;







