CREATE DATABASE esporte;

USE esporte;

CREATE TABLE modalidades(
    id_modalidades INT auto_increment PRIMARY KEY,
    nome_modalidade VARCHAR(30) NOT NULL
)

CREATE TABLE atletas(
    id_atletas INT auto_increment PRIMARY KEY,
    nome_atleta VARCHAR(50) NOT NULL,
    id_modalidades
)

INSERT INTO modalidades (nome_modalidade) VALUES ('futebol');
INSERT INTO modalidades (nome_modalidade) VALUES ('voleibol');
INSERT INTO modalidades (nome_modalidade) VALUES ('natação');

INSERT INTO atletas (nome_atleta, modalidades_id) VALUES ('Nathália' , 3);
INSERT INTO atletas (nome_atleta, modalidades_id) VALUES ('Jorge' , 1);
INSERT INTO atletas (nome_atleta, modalidades_id) VALUES ('Sandra' , 2);


SELECT nome_atleta, nome_modalidade FROM atletas
INNER JOIN modalidades
ON modalidades.id_modalidades = atletas.modalidades_id;

SELECT nome_atleta, nome_modalidade FROM atletas
LEFT JOIN modalidades
ON modalidades.id_modalidades = atletas.modalidades_id;

