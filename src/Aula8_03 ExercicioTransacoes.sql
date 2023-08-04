USE softblue_base;

CREATE TABLE conta_bancaria
(
	codigo integer unsigned not null auto_increment,
    titular varchar(32) not null,
    saldo double not null,
    PRIMARY KEY(codigo)
);

INSERT INTO conta_bancaria VALUES (1, 'André', 213);
INSERT INTO conta_bancaria VALUES (2, 'Diogo', 489);
INSERT INTO conta_bancaria VALUES (3, 'Rafael', 568);
INSERT INTO conta_bancaria VALUES (4, 'Carlos', 712);
INSERT INTO conta_bancaria VALUES (5, 'Peter', -38);

SET SQL_SAFE_UPDATES = 0;

start transaction;
UPDATE conta_bancaria SET saldo = saldo + (saldo / 100 * 3) WHERE saldo > 0;
commit;

SELECT * FROM conta_bancaria;