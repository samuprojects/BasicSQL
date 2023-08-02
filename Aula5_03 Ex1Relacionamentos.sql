USE softblue_base;

-- Exibir lista com cursos da softblue e o tipo de curso
SELECT curso.curso, tipo.tipo FROM curso INNER JOIN tipo ON curso.tipo = tipo.codigo;

-- Exibir lista com cursos da softblue, tipos, nome instrutor e telefone do mesmo
SELECT curso.curso, tipo.tipo, instrutor.instrutor, instrutor.telefone FROM curso
INNER JOIN tipo ON curso.tipo = tipo.codigo
INNER JOIN instrutor ON curso.instrutor = instrutor.codigo;

-- Exibir lista com código, data/hora dos pedidos e códigos dos cursos dos pedidos
SELECT codigo, datahora, curso FROM pedido
INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido;

-- Exibir lista com código, data/hora dos pedidos e os títulos dos cursos dos pedidos
SELECT pedido.codigo, datahora, curso.curso FROM pedido
INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido
INNER JOIN curso ON pedido_detalhe.curso = curso.codigo;

-- Exibir lista com código, data/hora dos pedidos, nome do aluno e os títulos dos cursos dos pedidos
SELECT pedido.codigo, datahora, aluno.aluno, curso.curso FROM pedido
INNER JOIN pedido_detalhe ON pedido.codigo = pedido_detalhe.pedido
INNER JOIN curso ON pedido_detalhe.curso = curso.codigo
INNER JOIN aluno ON pedido.aluno = aluno.codigo;