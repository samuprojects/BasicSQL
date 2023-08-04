
-- CREATE USER 'testesoft'@'200.200.190.190' IDENTIFIED BY 'teste123';
-- CREATE USER 'testesoft'@'%' IDENTIFIED BY 'teste123';

CREATE USER 'testesoft'@'localhost' IDENTIFIED BY 'teste123';
GRANT ALL ON curso_sql.* TO 'testesoft'@'localhost';

CREATE USER 'testesoft'@'%' IDENTIFIED BY 'viagem123';
GRANT SELECT ON curso_sql.* TO 'testesoft'@'%';
-- GRANT INSERT ON curso_sql.* TO 'testesoft'@'%';
GRANT INSERT ON curso_sql.funcionarios TO 'testesoft'@'%';

REVOKE INSERT ON curso_sql.funcionarios FROM 'testesoft'@'%';
REVOKE SELECT ON curso_sql.* FROM 'testesoft'@'%';

GRANT SELECT ON curso_sql.funcionarios TO 'testesoft'@'%';
GRANT SELECT ON curso_sql.veiculos TO 'testesoft'@'%';

REVOKE SELECT ON curso_sql.funcionarios FROM 'testesoft'@'%';
REVOKE SELECT ON curso_sql.veiculos FROM 'testesoft'@'%';

REVOKE ALL ON curso_sql.* FROM 'testesoft'@'localhost';

DROP USER 'testesoft'@'%';
DROP USER 'testesoft'@'localhost';

SELECT User FROM mysql.user;
SHOW GRANTS FOR 'testesoft'@'%';

