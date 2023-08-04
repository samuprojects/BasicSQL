USE curso_sql;

INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (1, 'Fernando', 1400, 'TI');
INSERT INTO funcionarios (id, nome, salario, departamento) VALUES (2, 'Guilherme', 2500, 'Jurídico');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Fábio', 1700, 'TI');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('José', 1800, 'Marketing');
INSERT INTO funcionarios (nome, salario, departamento) VALUES ('Isabela', 2200, 'Jurídico');

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE nome = 'José';
SELECT * FROM funcionarios WHERE id = 3;

UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 1;

-- SQL_SAFE_UPDATES=0 -> libera atualização de tabelas sem a informação do ID.
-- por padrão vem ativado (com valor 1) para evitar que atualize por engano toda a tabela, forçando informar um registro específico com WHERE
SET SQL_SAFE_UPDATES = 0;
-- para habilitar novamente basta executar o comando com valor = 1 conforme abaixo
/* SET SQL_SAFE_UPDATES = 1;*/
UPDATE funcionarios SET salario = salario * 1.1;

UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);

DELETE FROM funcionarios WHERE id = 4;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'Carro', 'SB-0001');
INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (1, 'Carro', 'SB-0002');

UPDATE veiculos SET funcionario_id = 5 WHERE id = 2;

SELECT * FROM veiculos;

INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista Jr', 1000, 2000);
INSERT INTO salarios (faixa, inicio, fim) VALUES ('Analista Pleno', 2000, 4000);

SELECT * FROM salarios;

SELECT nome AS 'Funcionário' , salario FROM funcionarios f WHERE f.salario > 2000;

SELECT * FROM funcionarios WHERE nome = 'Guilherme'
UNION
SELECT * FROM funcionarios WHERE id = 5;

-- somente o UNION não mostra registros duplicados, o UNION ALL mostra registros duplicados
SELECT * FROM funcionarios WHERE nome = 'Guilherme'
UNION ALL
SELECT * FROM funcionarios WHERE nome = 'Guilherme';