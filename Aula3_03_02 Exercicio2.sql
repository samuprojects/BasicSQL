USE softblue_base;

ALTER TABLE aluno ADD data_nascimento varchar(10);
ALTER TABLE aluno CHANGE data_nascimento nascimento date null;

ALTER TABLE aluno ADD INDEX index_aluno(aluno);
ALTER TABLE instrutor ADD email varchar(100);

ALTER TABLE curso ADD INDEX index_instrutor(instrutor);

ALTER TABLE instrutor DROP email;