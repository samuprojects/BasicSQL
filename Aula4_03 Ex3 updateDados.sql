USE softblue_base;

-- Alterando endereço do aluno José
UPDATE aluno SET endereco = 'Av. Brasil 778' WHERE codigo = 1;

-- Alterando o email do aluno Cris
UPDATE aluno SET email = 'cristiano@softblue.com.br' WHERE codigo = 4;

-- Reajustando os preços em 10% dos valores abaixo de 300
SET SQL_SAFE_UPDATES = 0;
UPDATE curso SET valor = valor * 1.1 WHERE valor < 300;

-- Alterando nome do curso
UPDATE curso SET curso = 'Php Fundamentos' WHERE curso = 'Php Básico';