USE softblue_base;

-- nomes dos alunos sem repetição com matrículas
SELECT DISTINCT(aluno.aluno) FROM pedido INNER JOIN aluno ON pedido.aluno = aluno.codigo;

-- nome do aluno mais antigo
SELECT DISTINCT(aluno.aluno) FROM pedido INNER JOIN aluno ON pedido.aluno = aluno.codigo ORDER BY DATAHORA ASC LIMIT 1;

-- nome do aluno mais recente
SELECT DISTINCT(aluno.aluno) FROM pedido INNER JOIN aluno ON pedido.aluno = aluno.codigo ORDER BY DATAHORA DESC LIMIT 1;

-- terceiro aluno antigo
SELECT DISTINCT(aluno.aluno) FROM pedido INNER JOIN aluno ON pedido.aluno = aluno.codigo ORDER BY DATAHORA ASC LIMIT 1 OFFSET 2;

-- quantidade cursos vendidos
SELECT COUNT(*) FROM pedido_detalhe;

-- valor total dos cursos vendidos
SELECT SUM(valor) FROM pedido_detalhe;

-- valor médio por curso do código 2
SELECT AVG(valor) FROM pedido_detalhe WHERE pedido = 2;

-- valor do curso mais caro
SELECT MAX(valor) FROM curso;

-- valor do curso mais barato
SELECT MIN(valor) FROM curso;

-- valor total dos pedidos por pedido
SELECT pedido, SUM(valor) FROM pedido_detalhe GROUP BY pedido;

-- nomes instrutores e cursos responsáveis
SELECT instrutor.instrutor, COUNT(*) FROM curso
INNER JOIN instrutor ON curso.instrutor = instrutor.codigo GROUP BY instrutor;

-- numero pedido, nome aluno, e valor pedidos realizados com total maior que 500
SELECT pedido, aluno.aluno, SUM(valor) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo
INNER JOIN aluno ON pedido.aluno = aluno.codigo GROUP BY  pedido HAVING SUM(valor) > 500;

-- numero pedido, nome aluno e quantos comprados para todos os pedidos realizados e que compraram dois ou mais cursos
SELECT pedido, aluno.aluno, COUNT(*) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo
INNER JOIN aluno ON pedido.aluno = aluno.codigo GROUP BY  pedido HAVING COUNT(*) > 1;

-- nome, endereço alunos que moram em Av,
SELECT aluno, endereco FROM aluno WHERE endereco LIKE 'Av%';

-- nome dos cursos Java
SELECT curso FROM curso WHERE curso LIKE '%java%';