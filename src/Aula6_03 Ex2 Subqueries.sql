USE softblue_base;

-- nomes dos cursos com menor valor de venda utilizando subquery
SELECT curso, (SELECT MIN(valor) FROM pedido_detalhe WHERE pedido_detalhe.curso = curso.codigo) AS menor_valor FROM curso;

-- nomes dos cursos tipo programação utilizando subquery e IN
SELECT curso FROM curso WHERE tipo IN (SELECT codigo FROM tipo WHERE tipo = 'Programação');

-- nomes dos cursos tipo programação utilizando subquery e EXISTS
SELECT curso FROM curso WHERE EXISTS (SELECT codigo FROM tipo WHERE tipo.codigo = curso.tipo and tipo.tipo = 'Programação'); 

-- nomes intrutores com total acumulado vendas dos cursos de cada um
SELECT instrutor, (SELECT SUM(pedido_detalhe.valor) FROM pedido_detalhe
INNER JOIN curso ON pedido_detalhe.curso = curso.codigo WHERE curso.instrutor = instrutor.codigo) AS total_de_vendas FROM instrutor;

-- visão com nomes alunos e cursos adquiridos
CREATE VIEW alunos_e_compras AS SELECT aluno, (SELECT SUM(pedido_detalhe.valor) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo WHERE pedido.aluno = aluno.codigo) AS total_de_compras FROM aluno;

SELECT * FROM alunos_e_compras;
