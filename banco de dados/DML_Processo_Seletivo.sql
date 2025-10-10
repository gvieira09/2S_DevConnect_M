--DML
USE db_devconnect;

INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfl_url)
VALUES
('Guilherme Vieira', 'ogvieiraa', 'ogvieiraa@gmail.com', 'OG0LK', 'www.fotoperfilvieira/LINK'),
('Milena Mares', 'marezx', 'maresmika@25', 'BATATA777', 'www.fotoperfildevgram/Mika'),
('Julio Cesar', 'blessed_byjulio', 'juliodocod@gmail.com', 'meupaicego88', 'www.fotoperfilju/Transk');

INSERT INTO tb_publi(descricao, imagem_url, data_publi)
VALUES('bday my bro!', 'www.fotocomamigos', '2025/02/25');

INSERT INTO tb_curtidas(ID_Usuario, ID_Publi)
VALUES(1, 1);

INSERT INTO tb_comentarios(texto, data_coment, ID_Usuario, ID_Publi)
VALUES('Deus abençõe a nossa união!', '2024/08/31', 1, 1);

INSERT INTO tb_seguidor(ID_UsuarioSeguidor, ID_Usuario)
VALUES(1, 1);