USE softblue_base;

-- view com titulo e preço de cursos programação
CREATE VIEW  cursos_programacao AS SELECT curso, valor FROM curso
INNER JOIN tipo ON curso.tipo = tipo.codigo WHERE tipo.tipo = 'Programação';

-- view com títulos, tipo dos cursos e instrutor
CREATE VIEW cursos_programacao_completo AS SELECT curso, tipo.tipo, instrutor.instrutor FROM curso
INNER JOIN tipo ON curso.tipo = tipo.codigo
INNER JOIN instrutor ON curso.instrutor = instrutor.codigo;

-- view com pedidos realizados trazendo nome aluno data e código do pedido
CREATE VIEW pedidos_realizados AS SELECT pedido.codigo, pedido.datahora, aluno.aluno FROM pedido
INNER JOIN aluno ON pedido.aluno = aluno.codigo;