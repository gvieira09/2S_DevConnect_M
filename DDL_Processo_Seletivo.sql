--DDL
USE db_devconnect;

CREATE TABLE tb_usuario (
id              INT        IDENTITY PRIMARY KEY
nome_completo              NVARCHAR (200)                        NOT NULL,
nome_ususario              NVARCHAR (70)                         NOT NULL,
email                      NVARCHAR (70) UNIQUE                  NOT NULL,
senha                      NVARCHAR (40)                         NOT NULL,
data_cadastro              DATE                                  NOT NULL,
foto_perfil_url            NVARCHAR (180)                        NULL
);
GO

SELECT * FROM tb_ususario;

CREATE TABLE tb_publicacao (
id              INT        IDENTITY PRIMARY KEY
descricao                  NVARCHAR (100)                        NOT NULL,
imagem_url                 NVARCHAR (180)                        NOT NULL,
data_publicacao            DATE                                  NOT NULL,

id_usuario	INT	FOREIGN KEY REFERENCES tb_usuario(id)
);
GO

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida (
id_usuario                 INT                                    NOT NULL,
id_publicacao              INT                                    NOT NULL,

id_usuario	INT	FOREIGN KEY REFERENCES tb_usuario(id)
id_publicacao	INT	FOREIGN KEY REFERENCES tb_publicacao(id)
);
GO

SELECT * FROM tb_curtida;

CREATE TABLE tb_comentario (
texto                     NVARCHAR (700)                         NOT NULL,
data_comentario           DATE                                   NOT NULL,
id_comentario             INT                                    NOT NULL,
id_usuario                INT                                    NOT NULL,
id_publicacao             INT                                    NOT NULL,
,
id_usuario	    INT	FOREIGN KEY REFERENCES tb_usuario(id)
id_publicacao	INT	FOREIGN KEY REFERENCES tb_publicacao(id)
id_comentario	INT	FOREIGN KEY REFERENCES tb_comentario(id)
);
GO

SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor (
	id_usuario	    INT		NOT NULL,
	id_seguir	    INT		NOT NULL,
	
	PRIMARY KEY(id_turma, id_prova)
	id_usuario	    INT	FOREIGN KEY REFERENCES tb_usuario(id)
	id_seguir	    INT	FOREIGN KEY REFERENCES tb_seguidor(id)
);
GO

SELECT * FROM tb_seguidor;