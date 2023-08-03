USE softblue_base;

-- exibir info dos alunos
SELECT * FROM aluno;

-- exibir somente o título dos cursos
SELECT curso FROM curso;

-- exibir titulo e valor do curso acima de 200
SELECT curso, valor FROM curso WHERE valor > 200;

-- exibir título e valor do curso maior 200 e menor 300
SELECT curso, valor FROM curso WHERE valor > 200 AND valor < 300;

-- ALTERNATIVA exibir título e valor do curso maior 200 e menor 300
SELECT curso, valor FROM curso WHERE valor BETWEEN 200 AND 300;

-- exibir informações da tabela PEDIDOS dos pedidos realizados entre 15/04/2010 e 18/04/2010
SELECT * FROM pedido WHERE datahora > '2010-04-15' AND datahora < '2010-04-19';

-- ALTERNATIVA para exibir informações da tabela PEDIDOS dos pedidos realizados entre 15/04/2010 e 18/04/2010
SELECT * FROM pedido WHERE datahora BETWEEN '2010-04-15' AND '2010-04-19';

-- exibir informações da tabela PEDIDOS dos pedidos realizados em 15/04/2010
SELECT * FROM pedido WHERE DATE(datahora) = '2010-04-15';