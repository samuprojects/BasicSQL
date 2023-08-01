CREATE DATABASE softblue_base DEFAULT CHARSET=latin1;
USE softblue_base;

CREATE TABLE tipo
(
	codigo integer unsigned not null auto_increment,
    tipo varchar(32) not null,
    PRIMARY KEY(codigo)
);

CREATE TABLE instrutor
(
	codigo integer unsigned not null auto_increment,
    instrutor varchar(64) not null,
    telefone varchar(9) not null,
    PRIMARY KEY(codigo)
);

CREATE TABLE curso
(
	codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    curso VARCHAR(64) NOT NULL,
    tipo INTEGER UNSIGNED NOT NULL,
    instrutor INTEGER UNSIGNED NOT NULL,
    valor DOUBLE NOT NULL,
    PRIMARY KEY(codigo),
    INDEX fk_tipo(tipo),    
    INDEX fk_instrutor(instrutor),
    FOREIGN KEY(tipo) REFERENCES tipo(codigo),
    FOREIGN KEY(instrutor) REFERENCES instrutor(codigo)
);

CREATE TABLE aluno
(
codigo integer unsigned not null auto_increment,
aluno varchar(64) not null,
endereco varchar(230) not null,
email varchar(128) not null,
PRIMARY KEY(codigo)
);

CREATE TABLE pedido
(
codigo integer unsigned not null auto_increment,
aluno integer unsigned not null,
datahora datetime not null,
PRIMARY KEY(codigo),
INDEX fk_aluno(aluno),
FOREIGN KEY(aluno) REFERENCES aluno(codigo)
);

CREATE TABLE pedido_detalhe
(
pedido integer unsigned not null,
curso integer unsigned not null,
valor double not null,
INDEX fk_pedido(pedido),
INDEX fk_curso(curso),
PRIMARY KEY(pedido, curso),
FOREIGN KEY(pedido) REFERENCES pedido(codigo),
FOREIGN KEY(curso) REFERENCES curso(codigo)
);