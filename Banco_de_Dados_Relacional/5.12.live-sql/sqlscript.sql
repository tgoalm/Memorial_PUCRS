CREATE TABLE VEICULOS 
( 
placa CHAR(8), 
ano NUMBER(4), 
km NUMBER(6), 
marca VARCHAR(50), 
modelo VARCHAR(50) 
);

INSERT INTO VEICULOS 
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo) 
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo) 
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo) 
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo) 
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano 
FROM VEICULOS 
WHERE km = 0;

SELECT PLACA, ANO, MODELO 
FROM VEICULOS 
WHERE ANO < 2022;

SELECTMODELO, ANO, PLACA 


FROM VEICULOS 


WHERE ANO < 2022


SELECT MODELO, ANO, PLACA 
FROM VEICULOS 
WHERE ANO < 2022;

UPDATE VEICULOS 
SET modelo='Cruze' 
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE ANO > 2015 AND ANO <= 2021;

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca ='Chevrolet') AND (km >50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = "Chevrolet";

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA IN "Chevrolet";

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = "Ford";

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA == "Ford";

SELECT * FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

SELECT * FROM PESSOAS;

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50’);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT (DISTINCT CPF);

CREATE TABLE VEICULOS  
(  
placa CHAR(8),  
ano NUMBER(4),  
km NUMBER(6),  
marca VARCHAR(50),  
modelo VARCHAR(50)  
);

INSERT INTO VEICULOS  
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano  
FROM VEICULOS  
WHERE km = 0;

SELECT PLACA, ANO, MODELO  
FROM VEICULOS  
WHERE ANO < 2022;

SELECT MODELO, ANO, PLACA  
FROM VEICULOS  
WHERE ANO < 2022;

UPDATE VEICULOS  
SET modelo='Cruze'  
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca = 'Chevrolet') AND (km > 50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT DISTINCT CPF;

SELECT COUNT DISTINCT CPF;

SELECT COUNTDISTINCT CPF;

CREATE TABLE VEICULOS  
(  
placa CHAR(8),  
ano NUMBER(4),  
km NUMBER(6),  
marca VARCHAR(50),  
modelo VARCHAR(50)  
);

INSERT INTO VEICULOS  
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano  
FROM VEICULOS  
WHERE km = 0;

SELECT PLACA, ANO, MODELO  
FROM VEICULOS  
WHERE ANO < 2022;

SELECT MODELO, ANO, PLACA  
FROM VEICULOS  
WHERE ANO < 2022;

UPDATE VEICULOS  
SET modelo='Cruze'  
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca = 'Chevrolet') AND (km > 50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT DISTINCT(CPF);

SELECT COUNT DISTINCT(CPF);

SELECT COUNT DISTINCT(CPF) FROM PESSOAS;

SELECT COUNT DISTINCT(CPF) AS QTD FROM PESSOAS;

SELECT COUNTDISTINCT(CPF) AS QTD FROM PESSOAS;

SELECT COUNTDISTINCT(CPF)  
    FROM PESSOAS 
    WHERE IDADE IS NOT NULL AS QTD;

SELECT COUNTDISTINCT(CPF)  
    WHERE IDADE IS NOT NULL AS QTD 
    FROM PESSOAS;

SELECT COUNT(DISTINCT CPF) 
    WHERE IDADE IS NOT NULL AS QTD 
    FROM PESSOAS;

SELECT COUNT(DISTINCT CPF) FROM PESSOAS;

CREATE TABLE VEICULOS  
(  
placa CHAR(8),  
ano NUMBER(4),  
km NUMBER(6),  
marca VARCHAR(50),  
modelo VARCHAR(50)  
);

INSERT INTO VEICULOS  
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano  
FROM VEICULOS  
WHERE km = 0;

SELECT PLACA, ANO, MODELO  
FROM VEICULOS  
WHERE ANO < 2022;

SELECT MODELO, ANO, PLACA  
FROM VEICULOS  
WHERE ANO < 2022;

UPDATE VEICULOS  
SET modelo='Cruze'  
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca = 'Chevrolet') AND (km > 50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT(DISTINCT CPF) FROM PESSOAS WHERE IDADE IS NOT NULL AS QTD;

SELECT COUNT(DISTINCT CPF) FROM PESSOAS WHERE IDADE IS NOT NULL AS QTD;

SELECT COUNT(DISTINCT CPF)  
    FROM PESSOAS  
    WHERE IDADE IS NOT NULL;

SELECT COUNT(DISTINCT CPF)  
    FROM PESSOAS  
    WHERE IDADE IS NULL AND ENDERECO IS NULL;

SELECT COUNT(DISTINCT CPF)  
    FROM PESSOAS  
    WHERE IDADE IS NULL OR ENDERECO IS NULL;

SELECT COUNT(DISTINCT CPF) AS ASDF 
    FROM PESSOAS  
    WHERE IDADE IS NULL OR ENDERECO IS NULL;

SELECT COUNT(DISTINCT CPF) AS PESSOAS_COM_DADOS_OMITIDOS 
    FROM PESSOAS  
    WHERE IDADE IS NULL OR ENDERECO IS NULL;

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'A%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Ana%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Silva';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Carlos%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Mari_ da Silva';

SELECT * 
FROM PESSOAS 
WHERE idade IN (25, 30, 40);

ALTER TABLE PESSOAS 
ADD sexo CHAR(1);

DESC PESSOAS


SELECT * FROM PESSOAS;

ALTER TABLE PESSOAS 
DROP COLUMN idade;

ALTER TABLE PESSOAS 
ADD datanasc DATE NULL;

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', '03-FEB-1980', 'Rua D, 80');

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', DATE'1980-02-03', 'Rua D, 80');

SELECT * FROM PESSOAS;

SELECT TO_CHAR(SYSDATE, 'MONTH, DD, YYYY HH24:MI:SS') 
FROM DUAL;

SELECT * FROM PESSOAS;

SELECT TO_CHAR(SYSDATE, 'MONTH, DD, YYYY HH24:MI:SS') 
FROM DUAL;

SELECT nome, TO_CHAR(datanasc, 'MONTH, DD, YYYY') 
FROM PESSOAS;

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ( 
'29920', 
'Beto', 
TO_DATE('25-FEB-1979 21:36:28', 
'DD-MON-YYYY HH24:MI:SS'), 
'Rua E, 80' 
);

SELECT * FROM PESSOAS;

SELECT nome, TO_CHAR(datanasc, 'MONTH, DD, YYYY') 
FROM PESSOAS;

SELECTSYSDATE+ 1 


FROM DUAL;


SELECT SYSDATE + 1 
FROM DUAL;

SELECT SYSDATE + 100 
FROM DUAL;

DESC DUAL


SELECT * FROM DUAL;

CREATE TABLE ALUNOS 
( 
nroMatricula VARCHAR(10) NOT NULL, 
cpf VARCHAR(20) NOT NULL, 
email VARCHAR(100) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
anoIngresso NUMBER(4) NOT NULL, 
endereco VARCHAR(150) NULL, 
sexo CHAR(1) NOT NULL, 
CONSTRAINT PK_ALUNOS PRIMARY KEY (nroMatricula), 
CONSTRAINT AK1_ALUNOS UNIQUE (cpf), 
CONSTRAINT AK2_ALUNOS UNIQUE (email) 
);

INSERT INTO ALUNOS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', '03-FEB-1980', 'Rua D, 80');

INSERT INTO ALUNOS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', DATE'1980-02-03', 'Rua D, 80');

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_AnoIngr CHECK (anoIngresso> 2000);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_sexo CHECK (sexoIN ('M', 'F'));

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_AnoIngr CHECK (anoIngresso > 2000);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_sexo CHECK (sexo IN ('M', 'F'));

CREATE TABLE ESTADOS 
( 
uf CHAR(2) NOT NULL, 
nome VARCHAR2(40) NOT NULL, 
regiao CHAR(2) NOT NULL, 
CONSTRAINT PK_ESTADOS PRIMARY KEY (uf) 
);

CREATE TABLE CIDADES 
( 
cod_cidade NUMBER(4) NOT NULL, 
nome VARCHAR2(60) NOT NULL, 
uf CHAR(2) NOT NULL, 
CONSTRAINT PK_CIDADES PRIMARY KEY (cod_cidade) 
);

ALTER TABLE CIDADES 
ADD 
( 
CONSTRAINT FK_EST_CID 
FOREIGN KEY (uf) 
REFERENCES ESTADOS (uf) 
);

INSERT INTO estados (nome, uf) VALUES ('Acre', 'AC');

INSERT INTO estados (nome, uf) VALUES ('Alagoas', 'AL');

INSERT INTO estados (nome, uf) VALUES ('Amazonas', 'AM');

INSERT INTO estados (nome, uf) VALUES ('Amapá', 'AP');

INSERT INTO estados (nome, uf) VALUES ('Bahia', 'BA');

INSERT INTO estados (nome, uf) VALUES ('Ceará', 'CE');

INSERT INTO estados (nome, uf) VALUES ('Distrito Federal', 'DF');

INSERT INTO estados (nome, uf) VALUES ('Espírito Santo', 'ES');

INSERT INTO estados (nome, uf) VALUES ('Goiás', 'GO');

INSERT INTO estados (nome, uf) VALUES ('Maranhão', 'MA');

INSERT INTO estados (nome, uf) VALUES ('Minas Gerais', 'MG');

INSERT INTO estados (nome, uf) VALUES ('Mato Grosso do Sul', 'MS');

INSERT INTO estados (nome, uf) VALUES ('Mato Grosso', 'MT');

INSERT INTO estados (nome, uf) VALUES ('Pará', 'PA');

INSERT INTO estados (nome, uf) VALUES ('Paraíba', 'PB');

INSERT INTO estados (nome, uf) VALUES ('Pernambuco', 'PE');

INSERT INTO estados (nome, uf) VALUES ('Piauí', 'PI');

INSERT INTO estados (nome, uf) VALUES ('Paraná', 'PR');

INSERT INTO estados (nome, uf) VALUES ('Rio de Janeiro', 'RJ');

INSERT INTO estados (nome, uf) VALUES ('Rio Grande do Norte', 'RN');

INSERT INTO estados (nome, uf) VALUES ('Rondônia', 'RO');

INSERT INTO estados (nome, uf) VALUES ('Roraima', 'RR');

INSERT INTO estados (nome, uf) VALUES ('Rio Grande do Sul', 'RS');

INSERT INTO estados (nome, uf) VALUES ('Santa Catarina', 'SC');

INSERT INTO estados (nome, uf) VALUES ('Sergipe', 'SE');

INSERT INTO estados (nome, uf) VALUES ('São Paulo', 'SP');

INSERT INTO estados (nome, uf) VALUES ('Tocantins', 'TO');

INSERT INTO cidades (nome, id_estado) VALUES ('Acrelândia', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Assis Brasil', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Brasiléia', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Bujari', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Capixaba', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Cruzeiro do Sul', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Epitaciolândia', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Feijó', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Jordão', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Mâncio Lima', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Manoel Urbano', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Marechal Thaumaturgo', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Plácido de Castro', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Porto Acre', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Porto Walter', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Rio Branco', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Rodrigues Alves', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Santa Rosa do Purus', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Sena Madureira', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Senador Guiomard', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Tarauacá', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Xapuri', 1);

INSERT INTO cidades (nome, id_estado) VALUES ('Água Branca', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Anadia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Arapiraca', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Atalaia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Barra de Santo Antônio', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Barra de São Miguel', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Batalha', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Belém', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Belo Monte', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Boca da Mata', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Branquinha', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Cacimbinhas', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Cajueiro', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Campestre', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Campo Alegre', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Campo Grande', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Canapi', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Capela', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Carneiros', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Chã Preta', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Coité do Nóia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Colônia Leopoldina', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Coqueiro Seco', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Coruripe', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Craíbas', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Delmiro Gouveia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Dois Riachos', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Estrela de Alagoas', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Feira Grande', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Feliz Deserto', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Flexeiras', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Girau do Ponciano', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Ibateguara', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Igaci', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Igreja Nova', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Inhapi', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Jacaré dos Homens', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Jacuípe', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Japaratinga', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Jaramataia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Jequiá da Praia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Joaquim Gomes', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Jundiá', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Junqueiro', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Lagoa da Canoa', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Limoeiro de Anadia', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Maceió', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Major Isidoro', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Mar Vermelho', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Maragogi', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Maravilha', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Marechal Deodoro', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Maribondo', 2);

INSERT INTO cidades (nome, id_estado) VALUES ('Mata Grande', 2);

INSERT INTO estados VALUES ('AC', 'Acre', 'N');

INSERT INTO estados VALUES ('AL', 'Alagoas', 'NE');

INSERT INTO estados VALUES ('AM', 'Amazonas', 'N');

INSERT INTO estados VALUES ('AP', 'Amapá', 'N');

INSERT INTO estados VALUES ('BA', 'Bahia', 'NE');

INSERT INTO estados VALUES ('CE', 'Ceará', 'NE');

INSERT INTO estados VALUES ('DF', 'Distrito Federal', 'DF');

INSERT INTO estados VALUES ('ES', 'Espírito Santo', 'SE');

INSERT INTO estados VALUES ('GO', 'Goiás', 'CO');

INSERT INTO estados VALUES ('MA', 'Maranhão', 'NE');

INSERT INTO estados VALUES ('MG', 'Minas Gerais', 'SE');

INSERT INTO estados VALUES ('MS', 'Mato Grosso do Sul', 'CO');

INSERT INTO estados VALUES ('MT', 'Mato Grosso', 'CO');

INSERT INTO estados VALUES ('PA', 'Pará', 'N');

INSERT INTO estados VALUES ('PB', 'Paraíba', 'NE');

INSERT INTO estados VALUES ('PE', 'Pernambuco', 'NE');

INSERT INTO estados VALUES ('PI', 'Piauí', 'NE');

INSERT INTO estados VALUES ('PR', 'Paraná', 'S');

INSERT INTO estados VALUES ('RJ', 'Rio de Janeiro', 'SE');

INSERT INTO estados VALUES ('RN', 'Rio Grande do Norte', 'NE');

INSERT INTO estados VALUES ('RO', 'Rondônia', 'N');

INSERT INTO estados VALUES ('RR', 'Roraima', 'N');

INSERT INTO estados VALUES ('RS', 'Rio Grande do Sul', 'S');

INSERT INTO estados VALUES ('SC', 'Santa Catarina', 'S');

INSERT INTO estados VALUES ('SE', 'Sergipe', 'NE');

INSERT INTO estados VALUES ('SP', 'São Paulo', 'SE');

INSERT INTO estados VALUES ('TO', 'Tocantins', 'N');

insert into cidades values ('1100015','Alta Floresta D''Oeste', 'RO');

insert into cidades values ('1100023','Ariquemes', 'RO');

insert into cidades values ('1100031','Cabixi', 'RO');

insert into cidades values ('1100049','Cacoal', 'RO');

insert into cidades values ('1100056','Cerejeiras', 'RO');

insert into cidades values ('1100064','Colorado do Oeste', 'RO');

insert into cidades values ('1100072','Corumbiara', 'RO');

insert into cidades values ('1100080','Costa Marques', 'RO');

insert into cidades values ('1100098','Espigão D''Oeste', 'RO');

insert into cidades values ('1100106','Guajará-Mirim', 'RO');

insert into cidades values ('1100114','Jaru', 'RO');

insert into cidades values ('1100122','Ji-Paraná', 'RO');

insert into cidades values ('1100130','Machadinho D''Oeste', 'RO');

insert into cidades values ('1100148','Nova Brasilândia D''Oeste', 'RO');

insert into cidades values ('1100155','Ouro Preto do Oeste', 'RO');

insert into cidades values ('1100189','Pimenta Bueno', 'RO');

insert into cidades values ('1100205','Porto Velho', 'RO');

insert into cidades values ('1100254','Presidente Médici', 'RO');

insert into cidades values ('1100262','Rio Crespo', 'RO');

insert into cidades values ('1100288','Rolim de Moura', 'RO');

insert into cidades values ('1100296','Santa Luzia D''Oeste', 'RO');

insert into cidades values ('1100304','Vilhena', 'RO');

insert into cidades values ('1100320','São Miguel do Guaporé', 'RO');

insert into cidades values ('1100338','Nova Mamoré', 'RO');

insert into cidades values ('1100346','Alvorada D''Oeste', 'RO');

insert into cidades values ('1100379','Alto Alegre dos Parecis', 'RO');

insert into cidades values ('1100403','Alto Paraíso', 'RO');

insert into cidades values ('1100452','Buritis', 'RO');

insert into cidades values ('1100502','Novo Horizonte do Oeste', 'RO');

insert into cidades values ('1100601','Cacaulândia', 'RO');

insert into cidades values ('1100700','Campo Novo de Rondônia', 'RO');

insert into cidades values ('1100809','Candeias do Jamari', 'RO');

insert into cidades values ('1100908','Castanheiras', 'RO');

insert into cidades values ('1100924','Chupinguaia', 'RO');

insert into cidades values ('1100940','Cujubim', 'RO');

insert into cidades values ('1101005','Governador Jorge Teixeira', 'RO');

insert into cidades values ('1101104','Itapuã do Oeste', 'RO');

insert into cidades values ('1101203','Ministro Andreazza', 'RO');

insert into cidades values ('1101302','Mirante da Serra', 'RO');

insert into cidades values ('1101401','Monte Negro', 'RO');

insert into cidades values ('1101435','Nova União', 'RO');

insert into cidades values ('1101450','Parecis', 'RO');

insert into cidades values ('1101468','Pimenteiras do Oeste', 'RO');

insert into cidades values ('1101476','Primavera de Rondônia', 'RO');

insert into cidades values ('1101484','São Felipe D''Oeste', 'RO');

insert into cidades values ('1101492','São Francisco do Guaporé', 'RO');

insert into cidades values ('1101500','Seringueiras', 'RO');

insert into cidades values ('1101559','Teixeirópolis', 'RO');

insert into cidades values ('1101609','Theobroma', 'RO');

insert into cidades values ('1101708','Urupá', 'RO');

insert into cidades values ('1101757','Vale do Anari', 'RO');

insert into cidades values ('1101807','Vale do Paraíso', 'RO');

insert into cidades values ('1200013','Acrelândia', 'AC');

insert into cidades values ('1200054','Assis Brasil', 'AC');

insert into cidades values ('1200104','Brasiléia', 'AC');

insert into cidades values ('1200138','Bujari', 'AC');

insert into cidades values ('1200179','Capixaba', 'AC');

insert into cidades values ('1200203','Cruzeiro do Sul', 'AC');

insert into cidades values ('1200252','Epitaciolândia', 'AC');

insert into cidades values ('1200302','Feijó', 'AC');

insert into cidades values ('1200328','Jordão', 'AC');

insert into cidades values ('1200336','Mâncio Lima', 'AC');

insert into cidades values ('1200344','Manoel Urbano', 'AC');

insert into cidades values ('1200351','Marechal Thaumaturgo', 'AC');

insert into cidades values ('1200385','Plácido de Castro', 'AC');

insert into cidades values ('1200393','Porto Walter', 'AC');

insert into cidades values ('1200401','Rio Branco', 'AC');

insert into cidades values ('1200427','Rodrigues Alves', 'AC');

insert into cidades values ('1200435','Santa Rosa do Purus', 'AC');

insert into cidades values ('1200450','Senador Guiomard', 'AC');

insert into cidades values ('1200500','Sena Madureira', 'AC');

insert into cidades values ('1200609','Tarauacá', 'AC');

insert into cidades values ('1200708','Xapuri', 'AC');

insert into cidades values ('1200807','Porto Acre', 'AC');

insert into cidades values ('1300029','Alvarães', 'AM');

insert into cidades values ('1300060','Amaturá', 'AM');

insert into cidades values ('1300086','Anamã', 'AM');

insert into cidades values ('1300102','Anori', 'AM');

insert into cidades values ('1300144','Apuí', 'AM');

insert into cidades values ('1300201','Atalaia do Norte', 'AM');

insert into cidades values ('1300300','Autazes', 'AM');

insert into cidades values ('1300409','Barcelos', 'AM');

insert into cidades values ('1300508','Barreirinha', 'AM');

insert into cidades values ('1300607','Benjamin Constant', 'AM');

insert into cidades values ('1300631','Beruri', 'AM');

insert into cidades values ('1300680','Boa Vista do Ramos', 'AM');

insert into cidades values ('1300706','Boca do Acre', 'AM');

insert into cidades values ('1300805','Borba', 'AM');

insert into cidades values ('1300839','Caapiranga', 'AM');

insert into cidades values ('1300904','Canutama', 'AM');

insert into cidades values ('1301001','Carauari', 'AM');

insert into cidades values ('1301100','Careiro', 'AM');

insert into cidades values ('1301159','Careiro da Várzea', 'AM');

insert into cidades values ('1301209','Coari', 'AM');

insert into cidades values ('1301308','Codajás', 'AM');

insert into cidades values ('1301407','Eirunepé', 'AM');

insert into cidades values ('1301506','Envira', 'AM');

insert into cidades values ('1301605','Fonte Boa', 'AM');

insert into cidades values ('1301654','Guajará', 'AM');

insert into cidades values ('1301704','Humaitá', 'AM');

insert into cidades values ('1301803','Ipixuna', 'AM');

insert into cidades values ('1301852','Iranduba', 'AM');

insert into cidades values ('1301902','Itacoatiara', 'AM');

insert into cidades values ('1301951','Itamarati', 'AM');

insert into cidades values ('1302009','Itapiranga', 'AM');

insert into cidades values ('1302108','Japurá', 'AM');

insert into cidades values ('1302207','Juruá', 'AM');

insert into cidades values ('1302306','Jutaí', 'AM');

insert into cidades values ('1302405','Lábrea', 'AM');

insert into cidades values ('1302504','Manacapuru', 'AM');

insert into cidades values ('1302553','Manaquiri', 'AM');

insert into cidades values ('1302603','Manaus', 'AM');

insert into cidades values ('1302702','Manicoré', 'AM');

insert into cidades values ('1302801','Maraã', 'AM');

insert into cidades values ('1302900','Maués', 'AM');

insert into cidades values ('1303007','Nhamundá', 'AM');

insert into cidades values ('1303106','Nova Olinda do Norte', 'AM');

insert into cidades values ('1303205','Novo Airão', 'AM');

insert into cidades values ('1303304','Novo Aripuanã', 'AM');

insert into cidades values ('1303403','Parintins', 'AM');

insert into cidades values ('1303502','Pauini', 'AM');

insert into cidades values ('1303536','Presidente Figueiredo', 'AM');

insert into cidades values ('1303569','Rio Preto da Eva', 'AM');

insert into cidades values ('1303601','Santa Isabel do Rio Negro', 'AM');

insert into cidades values ('1303700','Santo Antônio do Içá', 'AM');

insert into cidades values ('1303809','São Gabriel da Cachoeira', 'AM');

insert into cidades values ('1303908','São Paulo de Olivença', 'AM');

insert into cidades values ('1303957','São Sebastião do Uatumã', 'AM');

insert into cidades values ('1304005','Silves', 'AM');

insert into cidades values ('1304062','Tabatinga', 'AM');

insert into cidades values ('1304104','Tapauá', 'AM');

insert into cidades values ('1304203','Tefé', 'AM');

insert into cidades values ('1304237','Tonantins', 'AM');

insert into cidades values ('1304260','Uarini', 'AM');

insert into cidades values ('1304302','Urucará', 'AM');

insert into cidades values ('1304401','Urucurituba', 'AM');

insert into cidades values ('1400027','Amajari', 'RR');

insert into cidades values ('1400050','Alto Alegre', 'RR');

insert into cidades values ('1400100','Boa Vista', 'RR');

insert into cidades values ('1400159','Bonfim', 'RR');

insert into cidades values ('1400175','Cantá', 'RR');

insert into cidades values ('1400209','Caracaraí', 'RR');

insert into cidades values ('1400233','Caroebe', 'RR');

insert into cidades values ('1400282','Iracema', 'RR');

insert into cidades values ('1400308','Mucajaí', 'RR');

insert into cidades values ('1400407','Normandia', 'RR');

insert into cidades values ('1400456','Pacaraima', 'RR');

insert into cidades values ('1400472','Rorainópolis', 'RR');

insert into cidades values ('1400506','São João da Baliza', 'RR');

insert into cidades values ('1400605','São Luiz', 'RR');

insert into cidades values ('1400704','Uiramutã', 'RR');

insert into cidades values ('1500107','Abaetetuba', 'PA');

insert into cidades values ('1500131','Abel Figueiredo', 'PA');

insert into cidades values ('1500206','Acará', 'PA');

insert into cidades values ('1500305','Afuá', 'PA');

insert into cidades values ('1500347','Água Azul do Norte', 'PA');

insert into cidades values ('1500404','Alenquer', 'PA');

insert into cidades values ('1500503','Almeirim', 'PA');

insert into cidades values ('1500602','Altamira', 'PA');

insert into cidades values ('1500701','Anajás', 'PA');

insert into cidades values ('1500800','Ananindeua', 'PA');

insert into cidades values ('1500859','Anapu', 'PA');

insert into cidades values ('1500909','Augusto Corrêa', 'PA');

insert into cidades values ('1500958','Aurora do Pará', 'PA');

insert into cidades values ('1501006','Aveiro', 'PA');

insert into cidades values ('1501105','Bagre', 'PA');

insert into cidades values ('1501204','Baião', 'PA');

insert into cidades values ('1501253','Bannach', 'PA');

insert into cidades values ('1501303','Barcarena', 'PA');

insert into cidades values ('1501402','Belém', 'PA');

insert into cidades values ('1501451','Belterra', 'PA');

insert into cidades values ('1501501','Benevides', 'PA');

insert into cidades values ('1501576','Bom Jesus do Tocantins', 'PA');

insert into cidades values ('1501600','Bonito', 'PA');

insert into cidades values ('1501709','Bragança', 'PA');

insert into cidades values ('1501725','Brasil Novo', 'PA');

insert into cidades values ('1501758','Brejo Grande do Araguaia', 'PA');

CREATE TABLE CIDADES 
( 
cod_cidade NUMBER(8) NOT NULL, 
nome VARCHAR2(60) NOT NULL, 
uf CHAR(2) NOT NULL, 
CONSTRAINT PK_CIDADES PRIMARY KEY (cod_cidade) 
);

ALTER TABLE CIDADES 
    SET 
    ( 
    cod_cidade NUMBER(8) NOT NULL 
    );

ALTER TABLE CIDADES 
    MODIFY cod_cidade NUMBER(8) NOT NULL;

CREATE TABLE VEICULOS  
(  
placa CHAR(8),  
ano NUMBER(4),  
km NUMBER(6),  
marca VARCHAR(50),  
modelo VARCHAR(50)  
);

INSERT INTO VEICULOS  
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano  
FROM VEICULOS  
WHERE km = 0;

SELECT PLACA, ANO, MODELO  
FROM VEICULOS  
WHERE ANO < 2022;

SELECT MODELO, ANO, PLACA  
FROM VEICULOS  
WHERE ANO < 2022;

UPDATE VEICULOS  
SET modelo='Cruze'  
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca = 'Chevrolet') AND (km > 50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT(DISTINCT CPF) AS PESSOAS_COM_DADOS_OMITIDOS 
    FROM PESSOAS  
    WHERE IDADE IS NULL OR ENDERECO IS NULL;

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'A%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Ana%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Silva';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Carlos%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Mari_ da Silva';

SELECT * 
FROM PESSOAS 
WHERE idade IN (25, 30, 40);

ALTER TABLE PESSOAS 
ADD sexo CHAR(1);

DESC PESSOAS


SELECT * FROM PESSOAS;

ALTER TABLE PESSOAS 
DROP COLUMN idade;

ALTER TABLE PESSOAS 
ADD datanasc DATE NULL;

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', '03-FEB-1980', 'Rua D, 80');

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', DATE'1980-02-03', 'Rua D, 80');

SELECT * FROM PESSOAS;

SELECT TO_CHAR(SYSDATE, 'MONTH, DD, YYYY HH24:MI:SS') 
FROM DUAL;

SELECT nome, TO_CHAR(datanasc, 'MONTH, DD, YYYY') 
FROM PESSOAS;

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ( 
'29920', 
'Beto', 
TO_DATE('25-FEB-1979 21:36:28', 
'DD-MON-YYYY HH24:MI:SS'), 
'Rua E, 80' 
);

SELECT * FROM PESSOAS;

SELECT SYSDATE + 100 
FROM DUAL;

SELECT * FROM DUAL;

CREATE TABLE ALUNOS 
( 
nroMatricula VARCHAR(10) NOT NULL, 
cpf VARCHAR(20) NOT NULL, 
email VARCHAR(100) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
anoIngresso NUMBER(4) NOT NULL, 
endereco VARCHAR(150) NULL, 
sexo CHAR(1) NOT NULL, 
CONSTRAINT PK_ALUNOS PRIMARY KEY (nroMatricula), 
CONSTRAINT AK1_ALUNOS UNIQUE (cpf), 
CONSTRAINT AK2_ALUNOS UNIQUE (email) 
);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_AnoIngr CHECK (anoIngresso > 2000);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_sexo CHECK (sexo IN ('M', 'F'));

CREATE TABLE ESTADOS 
( 
uf CHAR(2) NOT NULL, 
nome VARCHAR2(40) NOT NULL, 
regiao CHAR(2) NOT NULL, 
CONSTRAINT PK_ESTADOS PRIMARY KEY (uf) 
);

CREATE TABLE CIDADES 
( 
cod_cidade NUMBER(8) NOT NULL, 
nome VARCHAR2(60) NOT NULL, 
uf CHAR(2) NOT NULL, 
CONSTRAINT PK_CIDADES PRIMARY KEY (cod_cidade) 
);

ALTER TABLE CIDADES 
    MODIFY cod_cidade NUMBER(8);

ALTER TABLE CIDADES 
ADD 
( 
CONSTRAINT FK_EST_CID 
FOREIGN KEY (uf) 
REFERENCES ESTADOS (uf) 
);

INSERT INTO estados VALUES ('AC', 'Acre', 'N');

INSERT INTO estados VALUES ('AL', 'Alagoas', 'NE');

INSERT INTO estados VALUES ('AM', 'Amazonas', 'N');

INSERT INTO estados VALUES ('AP', 'Amapá', 'N');

INSERT INTO estados VALUES ('BA', 'Bahia', 'NE');

INSERT INTO estados VALUES ('CE', 'Ceará', 'NE');

INSERT INTO estados VALUES ('DF', 'Distrito Federal', 'DF');

INSERT INTO estados VALUES ('ES', 'Espírito Santo', 'SE');

INSERT INTO estados VALUES ('GO', 'Goiás', 'CO');

INSERT INTO estados VALUES ('MA', 'Maranhão', 'NE');

INSERT INTO estados VALUES ('MG', 'Minas Gerais', 'SE');

INSERT INTO estados VALUES ('MS', 'Mato Grosso do Sul', 'CO');

INSERT INTO estados VALUES ('MT', 'Mato Grosso', 'CO');

INSERT INTO estados VALUES ('PA', 'Pará', 'N');

INSERT INTO estados VALUES ('PB', 'Paraíba', 'NE');

INSERT INTO estados VALUES ('PE', 'Pernambuco', 'NE');

INSERT INTO estados VALUES ('PI', 'Piauí', 'NE');

INSERT INTO estados VALUES ('PR', 'Paraná', 'S');

INSERT INTO estados VALUES ('RJ', 'Rio de Janeiro', 'SE');

INSERT INTO estados VALUES ('RN', 'Rio Grande do Norte', 'NE');

INSERT INTO estados VALUES ('RO', 'Rondônia', 'N');

INSERT INTO estados VALUES ('RR', 'Roraima', 'N');

INSERT INTO estados VALUES ('RS', 'Rio Grande do Sul', 'S');

INSERT INTO estados VALUES ('SC', 'Santa Catarina', 'S');

INSERT INTO estados VALUES ('SE', 'Sergipe', 'NE');

INSERT INTO estados VALUES ('SP', 'São Paulo', 'SE');

INSERT INTO estados VALUES ('TO', 'Tocantins', 'N');

insert into cidades values ('1100015','Alta Floresta D''Oeste', 'RO');

insert into cidades values ('1100023','Ariquemes', 'RO');

insert into cidades values ('1100031','Cabixi', 'RO');

insert into cidades values ('1100049','Cacoal', 'RO');

insert into cidades values ('1100056','Cerejeiras', 'RO');

insert into cidades values ('1100064','Colorado do Oeste', 'RO');

insert into cidades values ('1100072','Corumbiara', 'RO');

insert into cidades values ('1100080','Costa Marques', 'RO');

insert into cidades values ('1100098','Espigão D''Oeste', 'RO');

insert into cidades values ('1100106','Guajará-Mirim', 'RO');

insert into cidades values ('1100114','Jaru', 'RO');

insert into cidades values ('1100122','Ji-Paraná', 'RO');

insert into cidades values ('1100130','Machadinho D''Oeste', 'RO');

insert into cidades values ('1100148','Nova Brasilândia D''Oeste', 'RO');

insert into cidades values ('1100155','Ouro Preto do Oeste', 'RO');

insert into cidades values ('1100189','Pimenta Bueno', 'RO');

insert into cidades values ('1100205','Porto Velho', 'RO');

insert into cidades values ('1100254','Presidente Médici', 'RO');

insert into cidades values ('1100262','Rio Crespo', 'RO');

insert into cidades values ('1100288','Rolim de Moura', 'RO');

insert into cidades values ('1100296','Santa Luzia D''Oeste', 'RO');

insert into cidades values ('1100304','Vilhena', 'RO');

insert into cidades values ('1100320','São Miguel do Guaporé', 'RO');

insert into cidades values ('1100338','Nova Mamoré', 'RO');

insert into cidades values ('1100346','Alvorada D''Oeste', 'RO');

insert into cidades values ('1100379','Alto Alegre dos Parecis', 'RO');

insert into cidades values ('1100403','Alto Paraíso', 'RO');

insert into cidades values ('1100452','Buritis', 'RO');

insert into cidades values ('1100502','Novo Horizonte do Oeste', 'RO');

insert into cidades values ('1100601','Cacaulândia', 'RO');

insert into cidades values ('1100700','Campo Novo de Rondônia', 'RO');

insert into cidades values ('1100809','Candeias do Jamari', 'RO');

insert into cidades values ('1100908','Castanheiras', 'RO');

insert into cidades values ('1100924','Chupinguaia', 'RO');

insert into cidades values ('1100940','Cujubim', 'RO');

insert into cidades values ('1101005','Governador Jorge Teixeira', 'RO');

insert into cidades values ('1101104','Itapuã do Oeste', 'RO');

insert into cidades values ('1101203','Ministro Andreazza', 'RO');

insert into cidades values ('1101302','Mirante da Serra', 'RO');

insert into cidades values ('1101401','Monte Negro', 'RO');

insert into cidades values ('1101435','Nova União', 'RO');

insert into cidades values ('1101450','Parecis', 'RO');

insert into cidades values ('1101468','Pimenteiras do Oeste', 'RO');

insert into cidades values ('1101476','Primavera de Rondônia', 'RO');

insert into cidades values ('1101484','São Felipe D''Oeste', 'RO');

insert into cidades values ('1101492','São Francisco do Guaporé', 'RO');

insert into cidades values ('1101500','Seringueiras', 'RO');

insert into cidades values ('1101559','Teixeirópolis', 'RO');

insert into cidades values ('1101609','Theobroma', 'RO');

insert into cidades values ('1101708','Urupá', 'RO');

insert into cidades values ('1101757','Vale do Anari', 'RO');

insert into cidades values ('1101807','Vale do Paraíso', 'RO');

insert into cidades values ('1200013','Acrelândia', 'AC');

insert into cidades values ('1200054','Assis Brasil', 'AC');

insert into cidades values ('1200104','Brasiléia', 'AC');

insert into cidades values ('1200138','Bujari', 'AC');

insert into cidades values ('1200179','Capixaba', 'AC');

insert into cidades values ('1200203','Cruzeiro do Sul', 'AC');

insert into cidades values ('1200252','Epitaciolândia', 'AC');

insert into cidades values ('1200302','Feijó', 'AC');

insert into cidades values ('1200328','Jordão', 'AC');

insert into cidades values ('1200336','Mâncio Lima', 'AC');

insert into cidades values ('1200344','Manoel Urbano', 'AC');

insert into cidades values ('1200351','Marechal Thaumaturgo', 'AC');

insert into cidades values ('1200385','Plácido de Castro', 'AC');

insert into cidades values ('1200393','Porto Walter', 'AC');

insert into cidades values ('1200401','Rio Branco', 'AC');

insert into cidades values ('1200427','Rodrigues Alves', 'AC');

insert into cidades values ('1200435','Santa Rosa do Purus', 'AC');

insert into cidades values ('1200450','Senador Guiomard', 'AC');

insert into cidades values ('1200500','Sena Madureira', 'AC');

insert into cidades values ('1200609','Tarauacá', 'AC');

insert into cidades values ('1200708','Xapuri', 'AC');

insert into cidades values ('1200807','Porto Acre', 'AC');

insert into cidades values ('1300029','Alvarães', 'AM');

insert into cidades values ('1300060','Amaturá', 'AM');

insert into cidades values ('1300086','Anamã', 'AM');

insert into cidades values ('1300102','Anori', 'AM');

insert into cidades values ('1300144','Apuí', 'AM');

insert into cidades values ('1300201','Atalaia do Norte', 'AM');

insert into cidades values ('1300300','Autazes', 'AM');

insert into cidades values ('1300409','Barcelos', 'AM');

insert into cidades values ('1300508','Barreirinha', 'AM');

insert into cidades values ('1300607','Benjamin Constant', 'AM');

insert into cidades values ('1300631','Beruri', 'AM');

insert into cidades values ('1300680','Boa Vista do Ramos', 'AM');

insert into cidades values ('1300706','Boca do Acre', 'AM');

insert into cidades values ('1300805','Borba', 'AM');

insert into cidades values ('1300839','Caapiranga', 'AM');

insert into cidades values ('1300904','Canutama', 'AM');

insert into cidades values ('1301001','Carauari', 'AM');

insert into cidades values ('1301100','Careiro', 'AM');

insert into cidades values ('1301159','Careiro da Várzea', 'AM');

insert into cidades values ('1301209','Coari', 'AM');

insert into cidades values ('1301308','Codajás', 'AM');

insert into cidades values ('1301407','Eirunepé', 'AM');

insert into cidades values ('1301506','Envira', 'AM');

insert into cidades values ('1301605','Fonte Boa', 'AM');

insert into cidades values ('1301654','Guajará', 'AM');

insert into cidades values ('1301704','Humaitá', 'AM');

insert into cidades values ('1301803','Ipixuna', 'AM');

insert into cidades values ('1301852','Iranduba', 'AM');

insert into cidades values ('1301902','Itacoatiara', 'AM');

insert into cidades values ('1301951','Itamarati', 'AM');

insert into cidades values ('1302009','Itapiranga', 'AM');

insert into cidades values ('1302108','Japurá', 'AM');

insert into cidades values ('1302207','Juruá', 'AM');

insert into cidades values ('1302306','Jutaí', 'AM');

insert into cidades values ('1302405','Lábrea', 'AM');

insert into cidades values ('1302504','Manacapuru', 'AM');

insert into cidades values ('1302553','Manaquiri', 'AM');

insert into cidades values ('1302603','Manaus', 'AM');

insert into cidades values ('1302702','Manicoré', 'AM');

insert into cidades values ('1302801','Maraã', 'AM');

insert into cidades values ('1302900','Maués', 'AM');

insert into cidades values ('1303007','Nhamundá', 'AM');

insert into cidades values ('1303106','Nova Olinda do Norte', 'AM');

insert into cidades values ('1303205','Novo Airão', 'AM');

insert into cidades values ('1303304','Novo Aripuanã', 'AM');

insert into cidades values ('1303403','Parintins', 'AM');

insert into cidades values ('1303502','Pauini', 'AM');

insert into cidades values ('1303536','Presidente Figueiredo', 'AM');

insert into cidades values ('1303569','Rio Preto da Eva', 'AM');

insert into cidades values ('1303601','Santa Isabel do Rio Negro', 'AM');

insert into cidades values ('1303700','Santo Antônio do Içá', 'AM');

insert into cidades values ('1303809','São Gabriel da Cachoeira', 'AM');

insert into cidades values ('1303908','São Paulo de Olivença', 'AM');

insert into cidades values ('1303957','São Sebastião do Uatumã', 'AM');

insert into cidades values ('1304005','Silves', 'AM');

insert into cidades values ('1304062','Tabatinga', 'AM');

insert into cidades values ('1304104','Tapauá', 'AM');

insert into cidades values ('1304203','Tefé', 'AM');

insert into cidades values ('1304237','Tonantins', 'AM');

insert into cidades values ('1304260','Uarini', 'AM');

insert into cidades values ('1304302','Urucará', 'AM');

insert into cidades values ('1304401','Urucurituba', 'AM');

insert into cidades values ('1400027','Amajari', 'RR');

insert into cidades values ('1400050','Alto Alegre', 'RR');

insert into cidades values ('1400100','Boa Vista', 'RR');

insert into cidades values ('1400159','Bonfim', 'RR');

insert into cidades values ('1400175','Cantá', 'RR');

insert into cidades values ('1400209','Caracaraí', 'RR');

insert into cidades values ('1400233','Caroebe', 'RR');

insert into cidades values ('1400282','Iracema', 'RR');

insert into cidades values ('1400308','Mucajaí', 'RR');

insert into cidades values ('1400407','Normandia', 'RR');

insert into cidades values ('1400456','Pacaraima', 'RR');

insert into cidades values ('1400472','Rorainópolis', 'RR');

insert into cidades values ('1400506','São João da Baliza', 'RR');

insert into cidades values ('1400605','São Luiz', 'RR');

insert into cidades values ('1400704','Uiramutã', 'RR');

insert into cidades values ('1500107','Abaetetuba', 'PA');

insert into cidades values ('1500131','Abel Figueiredo', 'PA');

insert into cidades values ('1500206','Acará', 'PA');

insert into cidades values ('1500305','Afuá', 'PA');

insert into cidades values ('1500347','Água Azul do Norte', 'PA');

insert into cidades values ('1500404','Alenquer', 'PA');

insert into cidades values ('1500503','Almeirim', 'PA');

insert into cidades values ('1500602','Altamira', 'PA');

insert into cidades values ('1500701','Anajás', 'PA');

insert into cidades values ('1500800','Ananindeua', 'PA');

insert into cidades values ('1500859','Anapu', 'PA');

insert into cidades values ('1500909','Augusto Corrêa', 'PA');

insert into cidades values ('1500958','Aurora do Pará', 'PA');

insert into cidades values ('1501006','Aveiro', 'PA');

insert into cidades values ('1501105','Bagre', 'PA');

insert into cidades values ('1501204','Baião', 'PA');

insert into cidades values ('1501253','Bannach', 'PA');

insert into cidades values ('1501303','Barcarena', 'PA');

insert into cidades values ('1501402','Belém', 'PA');

insert into cidades values ('1501451','Belterra', 'PA');

insert into cidades values ('1501501','Benevides', 'PA');

insert into cidades values ('1501576','Bom Jesus do Tocantins', 'PA');

insert into cidades values ('1501600','Bonito', 'PA');

insert into cidades values ('1501709','Bragança', 'PA');

insert into cidades values ('1501725','Brasil Novo', 'PA');

insert into cidades values ('1501758','Brejo Grande do Araguaia', 'PA');

ALTER TABLE CIDADES 
    MODIFY cod_cidade NUMBER(8);

insert into cidades values ('1100015','Alta Floresta D''Oeste', 'RO');

insert into cidades values ('1100023','Ariquemes', 'RO');

insert into cidades values ('1100031','Cabixi', 'RO');

insert into cidades values ('1100049','Cacoal', 'RO');

insert into cidades values ('1100056','Cerejeiras', 'RO');

insert into cidades values ('1100064','Colorado do Oeste', 'RO');

insert into cidades values ('1100072','Corumbiara', 'RO');

insert into cidades values ('1100080','Costa Marques', 'RO');

insert into cidades values ('1100098','Espigão D''Oeste', 'RO');

insert into cidades values ('1100106','Guajará-Mirim', 'RO');

insert into cidades values ('1100114','Jaru', 'RO');

insert into cidades values ('1100122','Ji-Paraná', 'RO');

insert into cidades values ('1100130','Machadinho D''Oeste', 'RO');

insert into cidades values ('1100148','Nova Brasilândia D''Oeste', 'RO');

insert into cidades values ('1100155','Ouro Preto do Oeste', 'RO');

insert into cidades values ('1100189','Pimenta Bueno', 'RO');

insert into cidades values ('1100205','Porto Velho', 'RO');

insert into cidades values ('1100254','Presidente Médici', 'RO');

insert into cidades values ('1100262','Rio Crespo', 'RO');

insert into cidades values ('1100288','Rolim de Moura', 'RO');

insert into cidades values ('1100296','Santa Luzia D''Oeste', 'RO');

insert into cidades values ('1100304','Vilhena', 'RO');

insert into cidades values ('1100320','São Miguel do Guaporé', 'RO');

insert into cidades values ('1100338','Nova Mamoré', 'RO');

insert into cidades values ('1100346','Alvorada D''Oeste', 'RO');

insert into cidades values ('1100379','Alto Alegre dos Parecis', 'RO');

insert into cidades values ('1100403','Alto Paraíso', 'RO');

insert into cidades values ('1100452','Buritis', 'RO');

insert into cidades values ('1100502','Novo Horizonte do Oeste', 'RO');

insert into cidades values ('1100601','Cacaulândia', 'RO');

insert into cidades values ('1100700','Campo Novo de Rondônia', 'RO');

insert into cidades values ('1100809','Candeias do Jamari', 'RO');

insert into cidades values ('1100908','Castanheiras', 'RO');

insert into cidades values ('1100924','Chupinguaia', 'RO');

insert into cidades values ('1100940','Cujubim', 'RO');

insert into cidades values ('1101005','Governador Jorge Teixeira', 'RO');

insert into cidades values ('1101104','Itapuã do Oeste', 'RO');

insert into cidades values ('1101203','Ministro Andreazza', 'RO');

insert into cidades values ('1101302','Mirante da Serra', 'RO');

insert into cidades values ('1101401','Monte Negro', 'RO');

insert into cidades values ('1101435','Nova União', 'RO');

insert into cidades values ('1101450','Parecis', 'RO');

insert into cidades values ('1101468','Pimenteiras do Oeste', 'RO');

insert into cidades values ('1101476','Primavera de Rondônia', 'RO');

insert into cidades values ('1101484','São Felipe D''Oeste', 'RO');

insert into cidades values ('1101492','São Francisco do Guaporé', 'RO');

insert into cidades values ('1101500','Seringueiras', 'RO');

insert into cidades values ('1101559','Teixeirópolis', 'RO');

insert into cidades values ('1101609','Theobroma', 'RO');

insert into cidades values ('1101708','Urupá', 'RO');

insert into cidades values ('1101757','Vale do Anari', 'RO');

insert into cidades values ('1101807','Vale do Paraíso', 'RO');

insert into cidades values ('1200013','Acrelândia', 'AC');

insert into cidades values ('1200054','Assis Brasil', 'AC');

insert into cidades values ('1200104','Brasiléia', 'AC');

insert into cidades values ('1200138','Bujari', 'AC');

insert into cidades values ('1200179','Capixaba', 'AC');

insert into cidades values ('1200203','Cruzeiro do Sul', 'AC');

insert into cidades values ('1200252','Epitaciolândia', 'AC');

insert into cidades values ('1200302','Feijó', 'AC');

insert into cidades values ('1200328','Jordão', 'AC');

insert into cidades values ('1200336','Mâncio Lima', 'AC');

insert into cidades values ('1200344','Manoel Urbano', 'AC');

insert into cidades values ('1200351','Marechal Thaumaturgo', 'AC');

insert into cidades values ('1200385','Plácido de Castro', 'AC');

insert into cidades values ('1200393','Porto Walter', 'AC');

insert into cidades values ('1200401','Rio Branco', 'AC');

insert into cidades values ('1200427','Rodrigues Alves', 'AC');

insert into cidades values ('1200435','Santa Rosa do Purus', 'AC');

insert into cidades values ('1200450','Senador Guiomard', 'AC');

insert into cidades values ('1200500','Sena Madureira', 'AC');

insert into cidades values ('1200609','Tarauacá', 'AC');

insert into cidades values ('1200708','Xapuri', 'AC');

insert into cidades values ('1200807','Porto Acre', 'AC');

insert into cidades values ('1300029','Alvarães', 'AM');

insert into cidades values ('1300060','Amaturá', 'AM');

insert into cidades values ('1300086','Anamã', 'AM');

insert into cidades values ('1300102','Anori', 'AM');

insert into cidades values ('1300144','Apuí', 'AM');

insert into cidades values ('1300201','Atalaia do Norte', 'AM');

insert into cidades values ('1300300','Autazes', 'AM');

insert into cidades values ('1300409','Barcelos', 'AM');

insert into cidades values ('1300508','Barreirinha', 'AM');

insert into cidades values ('1300607','Benjamin Constant', 'AM');

insert into cidades values ('1300631','Beruri', 'AM');

insert into cidades values ('1300680','Boa Vista do Ramos', 'AM');

insert into cidades values ('1300706','Boca do Acre', 'AM');

insert into cidades values ('1300805','Borba', 'AM');

insert into cidades values ('1300839','Caapiranga', 'AM');

insert into cidades values ('1300904','Canutama', 'AM');

insert into cidades values ('1301001','Carauari', 'AM');

insert into cidades values ('1301100','Careiro', 'AM');

insert into cidades values ('1301159','Careiro da Várzea', 'AM');

insert into cidades values ('1301209','Coari', 'AM');

insert into cidades values ('1301308','Codajás', 'AM');

insert into cidades values ('1301407','Eirunepé', 'AM');

insert into cidades values ('1301506','Envira', 'AM');

insert into cidades values ('1301605','Fonte Boa', 'AM');

insert into cidades values ('1301654','Guajará', 'AM');

insert into cidades values ('1301704','Humaitá', 'AM');

insert into cidades values ('1301803','Ipixuna', 'AM');

insert into cidades values ('1301852','Iranduba', 'AM');

insert into cidades values ('1301902','Itacoatiara', 'AM');

insert into cidades values ('1301951','Itamarati', 'AM');

insert into cidades values ('1302009','Itapiranga', 'AM');

insert into cidades values ('1302108','Japurá', 'AM');

insert into cidades values ('1302207','Juruá', 'AM');

insert into cidades values ('1302306','Jutaí', 'AM');

insert into cidades values ('1302405','Lábrea', 'AM');

insert into cidades values ('1302504','Manacapuru', 'AM');

insert into cidades values ('1302553','Manaquiri', 'AM');

insert into cidades values ('1302603','Manaus', 'AM');

insert into cidades values ('1302702','Manicoré', 'AM');

insert into cidades values ('1302801','Maraã', 'AM');

insert into cidades values ('1302900','Maués', 'AM');

insert into cidades values ('1303007','Nhamundá', 'AM');

insert into cidades values ('1303106','Nova Olinda do Norte', 'AM');

insert into cidades values ('1303205','Novo Airão', 'AM');

insert into cidades values ('1303304','Novo Aripuanã', 'AM');

insert into cidades values ('1303403','Parintins', 'AM');

insert into cidades values ('1303502','Pauini', 'AM');

insert into cidades values ('1303536','Presidente Figueiredo', 'AM');

insert into cidades values ('1303569','Rio Preto da Eva', 'AM');

insert into cidades values ('1303601','Santa Isabel do Rio Negro', 'AM');

insert into cidades values ('1303700','Santo Antônio do Içá', 'AM');

insert into cidades values ('1303809','São Gabriel da Cachoeira', 'AM');

insert into cidades values ('1303908','São Paulo de Olivença', 'AM');

insert into cidades values ('1303957','São Sebastião do Uatumã', 'AM');

insert into cidades values ('1304005','Silves', 'AM');

insert into cidades values ('1304062','Tabatinga', 'AM');

insert into cidades values ('1304104','Tapauá', 'AM');

insert into cidades values ('1304203','Tefé', 'AM');

insert into cidades values ('1304237','Tonantins', 'AM');

insert into cidades values ('1304260','Uarini', 'AM');

insert into cidades values ('1304302','Urucará', 'AM');

insert into cidades values ('1304401','Urucurituba', 'AM');

insert into cidades values ('1400027','Amajari', 'RR');

insert into cidades values ('1400050','Alto Alegre', 'RR');

insert into cidades values ('1400100','Boa Vista', 'RR');

insert into cidades values ('1400159','Bonfim', 'RR');

insert into cidades values ('1400175','Cantá', 'RR');

insert into cidades values ('1400209','Caracaraí', 'RR');

insert into cidades values ('1400233','Caroebe', 'RR');

insert into cidades values ('1400282','Iracema', 'RR');

insert into cidades values ('1400308','Mucajaí', 'RR');

insert into cidades values ('1400407','Normandia', 'RR');

insert into cidades values ('1400456','Pacaraima', 'RR');

insert into cidades values ('1400472','Rorainópolis', 'RR');

insert into cidades values ('1400506','São João da Baliza', 'RR');

insert into cidades values ('1400605','São Luiz', 'RR');

insert into cidades values ('1400704','Uiramutã', 'RR');

insert into cidades values ('1500107','Abaetetuba', 'PA');

insert into cidades values ('1500131','Abel Figueiredo', 'PA');

insert into cidades values ('1500206','Acará', 'PA');

insert into cidades values ('1500305','Afuá', 'PA');

insert into cidades values ('1500347','Água Azul do Norte', 'PA');

insert into cidades values ('1500404','Alenquer', 'PA');

insert into cidades values ('1500503','Almeirim', 'PA');

insert into cidades values ('1500602','Altamira', 'PA');

insert into cidades values ('1500701','Anajás', 'PA');

insert into cidades values ('1500800','Ananindeua', 'PA');

insert into cidades values ('1500859','Anapu', 'PA');

insert into cidades values ('1500909','Augusto Corrêa', 'PA');

insert into cidades values ('1500958','Aurora do Pará', 'PA');

insert into cidades values ('1501006','Aveiro', 'PA');

insert into cidades values ('1501105','Bagre', 'PA');

insert into cidades values ('1501204','Baião', 'PA');

insert into cidades values ('1501253','Bannach', 'PA');

insert into cidades values ('1501303','Barcarena', 'PA');

insert into cidades values ('1501402','Belém', 'PA');

insert into cidades values ('1501451','Belterra', 'PA');

insert into cidades values ('1501501','Benevides', 'PA');

insert into cidades values ('1501576','Bom Jesus do Tocantins', 'PA');

insert into cidades values ('1501600','Bonito', 'PA');

insert into cidades values ('1501709','Bragança', 'PA');

insert into cidades values ('1501725','Brasil Novo', 'PA');

insert into cidades values ('1501758','Brejo Grande do Araguaia', 'PA');

ALTER TABLE CIDADES 
    MODIFY cod_cidade NUMBER(4);

SELECT * FROM CIDADES;

INSERT INTO CIDADES VALUES (500, 'TESTE', NULL);

CREATE TABLE MEDICO 
( 
 CRM NUMBER(5) NOT NULL,  
 NOME VARCHAR(100) NOT NULL,  
 ESPECIALIDADE VARCHAR(100) NOT NULL,  
 CONSTRAINT PK_MEDICOS PRIMARY KEY (crm)  
);

CREATE TABLE PACIENTES  
(  
 CPF VARCHAR(15) NOT NULL,  
 NOME VARCHAR(100) NOT NULL,  
 SEXO CHAR(1) NOT NULL,  
 CONSTRAINT PK_PACIENTES PRIMARY KEY (CPF)  
);

CREATE TABLE MEDICOSPACIENTES 
(  
CRM NUMBER(5) NOT NULL,  
CPF VARCHAR(15) NOT NULL,  
CONSTRAINT FK_CRM FOREIGN KEY (CRM) REFERENCES medicos(CRM),  
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES pacientes(CPF)  
);

CREATE TABLE PACIENTES  
(  
 CPF VARCHAR(15) NOT NULL,  
 NOME VARCHAR(100) NOT NULL,  
 SEXO CHAR(1) NOT NULL,  
 CONSTRAINT PK_PACIENTES PRIMARY KEY (CPF)  
);

CREATE TABLE MEDICOSPACIENTES 
(  
CRM NUMBER(5) NOT NULL,  
CPF VARCHAR(15) NOT NULL,  
CONSTRAINT FK_CRM FOREIGN KEY (CRM) REFERENCES medicos(CRM),  
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES pacientes(CPF)  
);

CREATE TABLE MEDICOSPACIENTES 
(  
CRM NUMBER(5) NOT NULL,  
CPF VARCHAR(15) NOT NULL,  
CONSTRAINT FK_CRM FOREIGN KEY (CRM) REFERENCES MEDICOS(CRM),  
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES PACIENTES(CPF)  
);

CREATE TABLE MEDICOSPACIENTES 
(  
CRM NUMBER(5) NOT NULL,  
CPF VARCHAR(15) NOT NULL,  
CONSTRAINT FK_CRM FOREIGN KEY (CRM) REFERENCES MEDICO(CRM),  
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES PACIENTES(CPF)  
);

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST INNER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST INNER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST  
    INNER JOIN CIDADES CID 
	ON EST.uf= CID.uf 
ORDER BY EST.UF;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf 
ORDER BY EST.UF;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST  
    INNER JOIN CIDADES CID 
	ON EST.uf= CID.uf 
ORDER BY EST.UF;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOSESTLEFT OUTER JOIN CIDADESCID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST RIGHT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST FULL OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

CREATE TABLE AUTORES( 
    COD_AUTOR NUMBER(4) NOT NULL, 
    NOME VARCHAR2(100) NOT NULL, 
    DESCRICAO VARCHAR2(1024), 
    CONSTRAINT PK_AUTORES PRIMARY KEY(COD_AUTOR) 
);

CREATE TABLE PRODUTOS( 
    COD_PRODUTO NUMBER(5) NOT NULL, 
    TITULO VARCHAR2(200) NOT NULL, 
    ANO_LANCAMENTO DATE NOT NULL, 
    IMPORTADO CHAR(1) DEFAULT 'N' NOT NULL, 
    PRECO NUMBER(10, 2), 
    PRAZO_ENTREGA NUMBER(3) NOT NULL, 
    CONSTRAINT PK_PRODUTOS PRIMARY KEY (COD_PRODUTO), 
    CONSTRAINT CHK_PROD_IMPORTADO CHECK (IMPORTADO IN ('S', 'N') 
);

CREATE TABLE PRODUTOS( 
    COD_PRODUTO NUMBER(5) NOT NULL, 
    TITULO VARCHAR2(200) NOT NULL, 
    ANO_LANCAMENTO DATE NOT NULL, 
    IMPORTADO CHAR(1) DEFAULT 'N' NOT NULL, 
    PRECO NUMBER(10, 2), 
    PRAZO_ENTREGA NUMBER(3) NOT NULL, 
    CONSTRAINT PK_PRODUTOS PRIMARY KEY (COD_PRODUTO), 
    CONSTRAINT CHK_PROD_IMPORTADO CHECK (IMPORTADO IN ('S', 'N')) 
);

CREATE TABLE AUTORESPRODUTOS( 
    COD_AUTOR NUMBER(4) NOT NULL, 
    COD_PRODUTO NUMBER(5) NOT NULL, 
    CONSTRAINT PK_AUTORES_PRODUTOS PRIMARY KEY(COD_AUTOR, COD_PRODUTO) 
);

insert into autores values (1,'Sophia Angelides',null);

insert into autores values (2,'Mário Pedrosa',null);

insert into autores values (1002,'Otília Arantes',null);

insert into autores values (3,'Emílio F. Moran',null);

insert into autores values (4,'Jack R. Greene',null);

insert into autores values (5,'Antônio Chaves',null);

insert into autores values (6,'José Pedro de Oliveira Costa',null);

insert into autores values (7,'Ana Mae Barbosa',null);

insert into autores values (8,'Piero Comin-Chiaramonti',null);

insert into autores values (1008,'Celso Gomes',null);

insert into autores values (9,'Barão de Itararé',null);

insert into autores values (10,'Barão de Itararé',null);

insert into autores values (11,'Aziz Nacib AbSaber',null);

insert into autores values (12,'Maria L. Aragão',null);

insert into autores values (1012,'José Carlos S. Meihy ',null);

insert into autores values (13,'Eliane Garcindo Dayrell',null);

insert into autores values (1013,'Zilda Márcia Iokoi',null);

insert into autores values (14,'Maria Lígia Coelho Prado',null);

insert into autores values (15,'Tânia Maria Bessone',null);

insert into autores values (1015,'Tereza Aline Queiroz',null);

insert into autores values (16,'Dante Moreira Leite',null);

insert into autores values (17,'Nilza Nunes da Silva',null);

insert into autores values (18,'Ricardo Palma',null);

insert into autores values (19,'José Luiz Goldfarb',null);

insert into autores values (1019,'Márcia Ferraz',null);

insert into autores values (20,'Júlio César Rodrigues Pereira',null);

insert into produtos values (1,'A. P. TCHEKHOV: Cartas para uma Poética',to_date('29/12/1995','dd/mm/yyyy'),'S',296,43);

insert into produtos values (2,'ACADÊMICOS E MODERNOS - Textos Escolhidos 3',to_date('22/09/2002','dd/mm/yyyy'),'N',31,47);

insert into produtos values (3,'ADAPTABILIDADE HUMANA: Uma Introdução à Antropologia',to_date('17/01/1998','dd/mm/yyyy'),'N',400,42);

insert into produtos values (4,'ADMINISTRAÇÃO DO TRABALHO POLICIAL',to_date('25/08/2000','dd/mm/yyyy'),'N',265,26);

insert into produtos values (5,'ADOÇÃO INTERNACIONAL e o Tráfico de Crianças',to_date('16/11/1998','dd/mm/yyyy'),'N',49,51);

insert into produtos values (6,'AIURUOCA - MATUTU E PEDRA DO PAPAGAIO',to_date('19/08/1999','dd/mm/yyyy'),'N',326,41);

insert into produtos values (7,'ALEX FLEMMING',to_date('23/09/2001','dd/mm/yyyy'),'S',24,43);

insert into produtos values (8,'ALKALINE MAGMATISM IN CENTRAL-EASTERN PARAGUAY',to_date('20/08/1997','dd/mm/yyyy'),'N',143,45);

insert into produtos values (9,'ALMANHAQUE PARA 1955 1º SEMESTRE',to_date('16/05/1998','dd/mm/yyyy'),'S',179,27);

insert into produtos values (10,'ALMANHAQUE PARA 1949',to_date('20/06/2000','dd/mm/yyyy'),'N',86,21);

insert into autores_produtos values (1,1);

insert into autores_produtos values (2,2);

insert into autores_produtos values (1002,2);

insert into autores_produtos values (3,3);

insert into autores_produtos values (4,4);

insert into autores_produtos values (5,5);

insert into autores_produtos values (6,6);

insert into autores_produtos values (7,7);

insert into autores_produtos values (8,8);

insert into autores_produtos values (1008,8);

insert into autores_produtos values (9,9);

insert into autores_produtos values (10,10);

insert into autores_produtos values (11,1);

insert into autores_produtos values (12,2);

insert into autores_produtos values (1012,2);

insert into autores_produtos values (13,3);

insert into autores_produtos values (1013,3);

insert into autores_produtos values (14,4);

insert into autores_produtos values (15,5);

insert into autores_produtos values (1015,5);

insert into autores_produtos values (16,6);

insert into autores_produtos values (17,7);

insert into autores_produtos values (18,8);

insert into AUTORESPRODUTOS values (1,1);

insert into AUTORESPRODUTOS values (2,2);

insert into AUTORESPRODUTOS values (1002,2);

insert into AUTORESPRODUTOS values (3,3);

insert into AUTORESPRODUTOS values (4,4);

insert into AUTORESPRODUTOS values (5,5);

insert into AUTORESPRODUTOS values (6,6);

insert into AUTORESPRODUTOS values (7,7);

insert into AUTORESPRODUTOS values (8,8);

insert into AUTORESPRODUTOS values (1008,8);

insert into AUTORESPRODUTOS values (9,9);

insert into AUTORESPRODUTOS values (10,10);

insert into AUTORESPRODUTOS values (11,1);

insert into AUTORESPRODUTOS values (12,2);

insert into AUTORESPRODUTOS values (1012,2);

insert into AUTORESPRODUTOS values (13,3);

insert into AUTORESPRODUTOS values (1013,3);

insert into AUTORESPRODUTOS values (14,4);

insert into AUTORESPRODUTOS values (15,5);

insert into AUTORESPRODUTOS values (1015,5);

insert into AUTORESPRODUTOS values (16,6);

insert into AUTORESPRODUTOS values (17,7);

insert into AUTORESPRODUTOS values (18,8);

SELECT AU.nome,PROD.titulo 
FROM AUTORES AU 
JOIN AUTORES_PRODUTOS AP 
ON(AU.cod_autor=AP.cod_autor) 
JOIN PRODUTOS PROD 
ON(AP.cod_produto=PROD.cod_produto);

SELECT AU.nome, PROD.titulo 
FROM AUTORES AU 
JOIN AUTORESPRODUTOS AP 
ON(AU.cod_autor=AP.cod_autor) 
JOIN PRODUTOS PROD 
ON(AP.cod_produto=PROD.cod_produto);

SELECT AVG(preco) MEDIA FROM PRODUTOS;

SELECT AVG(NVL(preco,0)) MEDIA FROM PRODUTOS;

SELECT MAX(preco) FROM PRODUTOS;

SELECT COUNT(*) NUM_CLIENTES FROM CLIENTES; SELECT COUNT(ddd) FROM TELEFONES;

SELECT COUNT(*) NUM_CLIENTES FROM CLIENTES;

SELECT COUNT(ddd) FROM TELEFONES;

SELECT AVG(preco) MEDIA FROM PRODUTOS;

SELECT AVG(NVL(preco,0)) MEDIA FROM PRODUTOS;

SELECT MAX(preco) FROM PRODUTOS;

CREATE TABLE PRODS 
( 
codigo NUMERIC(3) NOT NULL, 
nome VARCHAR(50) NOT NULL, 
preco NUMERIC (5,2) NOT NULL, 
tipo CHAR(1) NULL, --[S]uprimento, [C]omponente, [P]eriférico 
CONSTRAINT PK1 PRIMARY KEY (codigo) 
);

INSERT INTO PRODS VALUES( 10, 'HD' ,200 ,'C');

INSERT INTO PRODS VALUES( 11, 'Memoria' ,250 ,'C');

INSERT INTO PRODS VALUES( 12, 'Impressora' ,680 ,'P');

INSERT INTO PRODS VALUES( 13, 'Processador' ,600 ,'C');

INSERT INTO PRODS VALUES( 14, 'DVD-RW' ,2 ,'S');

INSERT INTO PRODS VALUES( 15, 'Papel A4' ,19 ,'S');

INSERT INTO PRODS VALUES( 16, 'Scanner' ,199 ,'P');

SELECT * FROM PRODS;

SELECT COUNT(*) FROM PRODS;

SELECT DISTINCT(TIPOS) FROM PRODS;

SELECT COUNT(TIPOS) FROM PRODS;

CREATE TABLE VEICULOS  
(  
placa CHAR(8),  
ano NUMBER(4),  
km NUMBER(6),  
marca VARCHAR(50),  
modelo VARCHAR(50)  
);

INSERT INTO VEICULOS  
VALUES ('IJK-1212', 2022, 0, 'Chevrolet', 'Onix');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1556', 2015, 72045, 'Volkswagen', 'Gol');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJO-1557', 2020, 72011, 'Volkswagen', 'Parati');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-1511', 2000, 150003, 'Ford', 'Mustang');

INSERT INTO VEICULOS (placa, ano, km, marca, modelo)  
VALUES ('IJM-2684', 2011, 50, 'Chevrolet', 'Prisma');

SELECT * FROM VEICULOS;

SELECT placa, ano  
FROM VEICULOS  
WHERE km = 0;

SELECT PLACA, ANO, MODELO  
FROM VEICULOS  
WHERE ANO < 2022;

SELECT MODELO, ANO, PLACA  
FROM VEICULOS  
WHERE ANO < 2022;

UPDATE VEICULOS  
SET modelo='Cruze'  
WHERE placa='IJK-1212';

UPDATE VEICULOS 
SET KM = KM + 100 
WHERE (ANO >= 2015) AND (ANO <= 2021);

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE placa ='IJM-1556';

SELECT * FROM VEICULOS;

DELETE FROM VEICULOS 
WHERE (marca = 'Chevrolet') AND (km > 50000);

SELECT marca, modelo 
FROM VEICULOS 
ORDER BY marca DESC, modelo ASC;

SELECT COUNT(*) 
FROM VEICULOS;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE km = 0;

SELECT COUNT(*) 
FROM VEICULOS 
WHERE MARCA = 'Chevrolet';

SELECT DISTINCT MARCA FROM VEICULOS;

CREATE TABLE PESSOAS 
( 
cpf VARCHAR(20) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
idade NUMBER(3) NULL, 
endereco VARCHAR(150) 
);

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('32809', 'Maria', 25, 'Rua A, 20');

INSERT INTO PESSOAS(idade, endereco, cpf, nome) 
VALUES (25, 'Rua A, 20', '30599', 'Pedro');

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('29385', 'Carlos', NULL, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('39582', 'Alice', 80, NULL);

INSERT INTO PESSOAS(cpf, nome, idade, endereco) 
VALUES ('78838', 'Antonio', NULL, 'Rua B, 80');

INSERT INTO PESSOAS(cpf, nome) 
VALUES ('90038', 'Ana Paula');

INSERT INTO PESSOAS(cpf, nome, idade) 
VALUES ('23487', 'Patricia', 18);

INSERT INTO PESSOAS(cpf, nome, endereco) 
VALUES ('23363', 'Jose', 'Rua C, 50');

SELECT * FROM PESSOAS;

SELECT * 
FROM PESSOAS 
WHERE idade IS NULL;

SELECT * 
FROM PESSOAS 
WHERE endereco IS NOT NULL;

SELECT COUNT(DISTINCT CPF) AS PESSOAS_COM_DADOS_OMITIDOS 
    FROM PESSOAS  
    WHERE IDADE IS NULL OR ENDERECO IS NULL;

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'A%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Ana%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Silva';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE '%Carlos%';

SELECT * 
FROM PESSOAS 
WHERE nome LIKE 'Mari_ da Silva';

SELECT * 
FROM PESSOAS 
WHERE idade IN (25, 30, 40);

ALTER TABLE PESSOAS 
ADD sexo CHAR(1);

DESC PESSOAS


SELECT * FROM PESSOAS;

ALTER TABLE PESSOAS 
DROP COLUMN idade;

ALTER TABLE PESSOAS 
ADD datanasc DATE NULL;

DESC PESSOAS


INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', '03-FEB-1980', 'Rua D, 80');

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ('29048', 'Roberto', DATE'1980-02-03', 'Rua D, 80');

SELECT * FROM PESSOAS;

SELECT TO_CHAR(SYSDATE, 'MONTH, DD, YYYY HH24:MI:SS') 
FROM DUAL;

SELECT nome, TO_CHAR(datanasc, 'MONTH, DD, YYYY') 
FROM PESSOAS;

INSERT INTO PESSOAS(cpf, nome, datanasc, endereco) 
VALUES ( 
'29920', 
'Beto', 
TO_DATE('25-FEB-1979 21:36:28', 
'DD-MON-YYYY HH24:MI:SS'), 
'Rua E, 80' 
);

SELECT * FROM PESSOAS;

SELECT SYSDATE + 100 
FROM DUAL;

SELECT * FROM DUAL;

CREATE TABLE ALUNOS 
( 
nroMatricula VARCHAR(10) NOT NULL, 
cpf VARCHAR(20) NOT NULL, 
email VARCHAR(100) NOT NULL, 
nome VARCHAR(150) NOT NULL, 
anoIngresso NUMBER(4) NOT NULL, 
endereco VARCHAR(150) NULL, 
sexo CHAR(1) NOT NULL, 
CONSTRAINT PK_ALUNOS PRIMARY KEY (nroMatricula), 
CONSTRAINT AK1_ALUNOS UNIQUE (cpf), 
CONSTRAINT AK2_ALUNOS UNIQUE (email) 
);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_AnoIngr CHECK (anoIngresso > 2000);

ALTER TABLE ALUNOS 
ADD CONSTRAINT CK_sexo CHECK (sexo IN ('M', 'F'));

CREATE TABLE ESTADOS 
( 
uf CHAR(2) NOT NULL, 
nome VARCHAR2(40) NOT NULL, 
regiao CHAR(2) NOT NULL, 
CONSTRAINT PK_ESTADOS PRIMARY KEY (uf) 
);

CREATE TABLE CIDADES 
( 
cod_cidade NUMBER(8) NOT NULL, 
nome VARCHAR2(60) NOT NULL, 
uf CHAR(2) NOT NULL, 
CONSTRAINT PK_CIDADES PRIMARY KEY (cod_cidade) 
);

ALTER TABLE CIDADES 
    MODIFY cod_cidade NUMBER(4);

SELECT * FROM CIDADES;

ALTER TABLE CIDADES 
ADD 
( 
CONSTRAINT FK_EST_CID 
FOREIGN KEY (uf) 
REFERENCES ESTADOS (uf) 
);

INSERT INTO estados VALUES ('AC', 'Acre', 'N');

INSERT INTO estados VALUES ('AL', 'Alagoas', 'NE');

INSERT INTO estados VALUES ('AM', 'Amazonas', 'N');

INSERT INTO estados VALUES ('AP', 'Amapá', 'N');

INSERT INTO estados VALUES ('BA', 'Bahia', 'NE');

INSERT INTO estados VALUES ('CE', 'Ceará', 'NE');

INSERT INTO estados VALUES ('DF', 'Distrito Federal', 'DF');

INSERT INTO estados VALUES ('ES', 'Espírito Santo', 'SE');

INSERT INTO estados VALUES ('GO', 'Goiás', 'CO');

INSERT INTO estados VALUES ('MA', 'Maranhão', 'NE');

INSERT INTO estados VALUES ('MG', 'Minas Gerais', 'SE');

INSERT INTO estados VALUES ('MS', 'Mato Grosso do Sul', 'CO');

INSERT INTO estados VALUES ('MT', 'Mato Grosso', 'CO');

INSERT INTO estados VALUES ('PA', 'Pará', 'N');

INSERT INTO estados VALUES ('PB', 'Paraíba', 'NE');

INSERT INTO estados VALUES ('PE', 'Pernambuco', 'NE');

INSERT INTO estados VALUES ('PI', 'Piauí', 'NE');

INSERT INTO estados VALUES ('PR', 'Paraná', 'S');

INSERT INTO estados VALUES ('RJ', 'Rio de Janeiro', 'SE');

INSERT INTO estados VALUES ('RN', 'Rio Grande do Norte', 'NE');

INSERT INTO estados VALUES ('RO', 'Rondônia', 'N');

INSERT INTO estados VALUES ('RR', 'Roraima', 'N');

INSERT INTO estados VALUES ('RS', 'Rio Grande do Sul', 'S');

INSERT INTO estados VALUES ('SC', 'Santa Catarina', 'S');

INSERT INTO estados VALUES ('SE', 'Sergipe', 'NE');

INSERT INTO estados VALUES ('SP', 'São Paulo', 'SE');

INSERT INTO estados VALUES ('TO', 'Tocantins', 'N');

insert into cidades values ('1100015','Alta Floresta D''Oeste', 'RO');

insert into cidades values ('1100023','Ariquemes', 'RO');

insert into cidades values ('1100031','Cabixi', 'RO');

insert into cidades values ('1100049','Cacoal', 'RO');

insert into cidades values ('1100056','Cerejeiras', 'RO');

insert into cidades values ('1100064','Colorado do Oeste', 'RO');

insert into cidades values ('1100072','Corumbiara', 'RO');

insert into cidades values ('1100080','Costa Marques', 'RO');

insert into cidades values ('1100098','Espigão D''Oeste', 'RO');

insert into cidades values ('1100106','Guajará-Mirim', 'RO');

insert into cidades values ('1100114','Jaru', 'RO');

insert into cidades values ('1100122','Ji-Paraná', 'RO');

insert into cidades values ('1100130','Machadinho D''Oeste', 'RO');

insert into cidades values ('1100148','Nova Brasilândia D''Oeste', 'RO');

insert into cidades values ('1100155','Ouro Preto do Oeste', 'RO');

insert into cidades values ('1100189','Pimenta Bueno', 'RO');

insert into cidades values ('1100205','Porto Velho', 'RO');

insert into cidades values ('1100254','Presidente Médici', 'RO');

insert into cidades values ('1100262','Rio Crespo', 'RO');

insert into cidades values ('1100288','Rolim de Moura', 'RO');

insert into cidades values ('1100296','Santa Luzia D''Oeste', 'RO');

insert into cidades values ('1100304','Vilhena', 'RO');

insert into cidades values ('1100320','São Miguel do Guaporé', 'RO');

insert into cidades values ('1100338','Nova Mamoré', 'RO');

insert into cidades values ('1100346','Alvorada D''Oeste', 'RO');

insert into cidades values ('1100379','Alto Alegre dos Parecis', 'RO');

insert into cidades values ('1100403','Alto Paraíso', 'RO');

insert into cidades values ('1100452','Buritis', 'RO');

insert into cidades values ('1100502','Novo Horizonte do Oeste', 'RO');

insert into cidades values ('1100601','Cacaulândia', 'RO');

insert into cidades values ('1100700','Campo Novo de Rondônia', 'RO');

insert into cidades values ('1100809','Candeias do Jamari', 'RO');

insert into cidades values ('1100908','Castanheiras', 'RO');

insert into cidades values ('1100924','Chupinguaia', 'RO');

insert into cidades values ('1100940','Cujubim', 'RO');

insert into cidades values ('1101005','Governador Jorge Teixeira', 'RO');

insert into cidades values ('1101104','Itapuã do Oeste', 'RO');

insert into cidades values ('1101203','Ministro Andreazza', 'RO');

insert into cidades values ('1101302','Mirante da Serra', 'RO');

insert into cidades values ('1101401','Monte Negro', 'RO');

insert into cidades values ('1101435','Nova União', 'RO');

insert into cidades values ('1101450','Parecis', 'RO');

insert into cidades values ('1101468','Pimenteiras do Oeste', 'RO');

insert into cidades values ('1101476','Primavera de Rondônia', 'RO');

insert into cidades values ('1101484','São Felipe D''Oeste', 'RO');

insert into cidades values ('1101492','São Francisco do Guaporé', 'RO');

insert into cidades values ('1101500','Seringueiras', 'RO');

insert into cidades values ('1101559','Teixeirópolis', 'RO');

insert into cidades values ('1101609','Theobroma', 'RO');

insert into cidades values ('1101708','Urupá', 'RO');

insert into cidades values ('1101757','Vale do Anari', 'RO');

insert into cidades values ('1101807','Vale do Paraíso', 'RO');

insert into cidades values ('1200013','Acrelândia', 'AC');

insert into cidades values ('1200054','Assis Brasil', 'AC');

insert into cidades values ('1200104','Brasiléia', 'AC');

insert into cidades values ('1200138','Bujari', 'AC');

insert into cidades values ('1200179','Capixaba', 'AC');

insert into cidades values ('1200203','Cruzeiro do Sul', 'AC');

insert into cidades values ('1200252','Epitaciolândia', 'AC');

insert into cidades values ('1200302','Feijó', 'AC');

insert into cidades values ('1200328','Jordão', 'AC');

insert into cidades values ('1200336','Mâncio Lima', 'AC');

insert into cidades values ('1200344','Manoel Urbano', 'AC');

insert into cidades values ('1200351','Marechal Thaumaturgo', 'AC');

insert into cidades values ('1200385','Plácido de Castro', 'AC');

insert into cidades values ('1200393','Porto Walter', 'AC');

insert into cidades values ('1200401','Rio Branco', 'AC');

insert into cidades values ('1200427','Rodrigues Alves', 'AC');

insert into cidades values ('1200435','Santa Rosa do Purus', 'AC');

insert into cidades values ('1200450','Senador Guiomard', 'AC');

insert into cidades values ('1200500','Sena Madureira', 'AC');

insert into cidades values ('1200609','Tarauacá', 'AC');

insert into cidades values ('1200708','Xapuri', 'AC');

insert into cidades values ('1200807','Porto Acre', 'AC');

insert into cidades values ('1300029','Alvarães', 'AM');

insert into cidades values ('1300060','Amaturá', 'AM');

insert into cidades values ('1300086','Anamã', 'AM');

insert into cidades values ('1300102','Anori', 'AM');

insert into cidades values ('1300144','Apuí', 'AM');

insert into cidades values ('1300201','Atalaia do Norte', 'AM');

insert into cidades values ('1300300','Autazes', 'AM');

insert into cidades values ('1300409','Barcelos', 'AM');

insert into cidades values ('1300508','Barreirinha', 'AM');

insert into cidades values ('1300607','Benjamin Constant', 'AM');

insert into cidades values ('1300631','Beruri', 'AM');

insert into cidades values ('1300680','Boa Vista do Ramos', 'AM');

insert into cidades values ('1300706','Boca do Acre', 'AM');

insert into cidades values ('1300805','Borba', 'AM');

insert into cidades values ('1300839','Caapiranga', 'AM');

insert into cidades values ('1300904','Canutama', 'AM');

insert into cidades values ('1301001','Carauari', 'AM');

insert into cidades values ('1301100','Careiro', 'AM');

insert into cidades values ('1301159','Careiro da Várzea', 'AM');

insert into cidades values ('1301209','Coari', 'AM');

insert into cidades values ('1301308','Codajás', 'AM');

insert into cidades values ('1301407','Eirunepé', 'AM');

insert into cidades values ('1301506','Envira', 'AM');

insert into cidades values ('1301605','Fonte Boa', 'AM');

insert into cidades values ('1301654','Guajará', 'AM');

insert into cidades values ('1301704','Humaitá', 'AM');

insert into cidades values ('1301803','Ipixuna', 'AM');

insert into cidades values ('1301852','Iranduba', 'AM');

insert into cidades values ('1301902','Itacoatiara', 'AM');

insert into cidades values ('1301951','Itamarati', 'AM');

insert into cidades values ('1302009','Itapiranga', 'AM');

insert into cidades values ('1302108','Japurá', 'AM');

insert into cidades values ('1302207','Juruá', 'AM');

insert into cidades values ('1302306','Jutaí', 'AM');

insert into cidades values ('1302405','Lábrea', 'AM');

insert into cidades values ('1302504','Manacapuru', 'AM');

insert into cidades values ('1302553','Manaquiri', 'AM');

insert into cidades values ('1302603','Manaus', 'AM');

insert into cidades values ('1302702','Manicoré', 'AM');

insert into cidades values ('1302801','Maraã', 'AM');

insert into cidades values ('1302900','Maués', 'AM');

insert into cidades values ('1303007','Nhamundá', 'AM');

insert into cidades values ('1303106','Nova Olinda do Norte', 'AM');

insert into cidades values ('1303205','Novo Airão', 'AM');

insert into cidades values ('1303304','Novo Aripuanã', 'AM');

insert into cidades values ('1303403','Parintins', 'AM');

insert into cidades values ('1303502','Pauini', 'AM');

insert into cidades values ('1303536','Presidente Figueiredo', 'AM');

insert into cidades values ('1303569','Rio Preto da Eva', 'AM');

insert into cidades values ('1303601','Santa Isabel do Rio Negro', 'AM');

insert into cidades values ('1303700','Santo Antônio do Içá', 'AM');

insert into cidades values ('1303809','São Gabriel da Cachoeira', 'AM');

insert into cidades values ('1303908','São Paulo de Olivença', 'AM');

insert into cidades values ('1303957','São Sebastião do Uatumã', 'AM');

insert into cidades values ('1304005','Silves', 'AM');

insert into cidades values ('1304062','Tabatinga', 'AM');

insert into cidades values ('1304104','Tapauá', 'AM');

insert into cidades values ('1304203','Tefé', 'AM');

insert into cidades values ('1304237','Tonantins', 'AM');

insert into cidades values ('1304260','Uarini', 'AM');

insert into cidades values ('1304302','Urucará', 'AM');

insert into cidades values ('1304401','Urucurituba', 'AM');

insert into cidades values ('1400027','Amajari', 'RR');

insert into cidades values ('1400050','Alto Alegre', 'RR');

insert into cidades values ('1400100','Boa Vista', 'RR');

insert into cidades values ('1400159','Bonfim', 'RR');

insert into cidades values ('1400175','Cantá', 'RR');

insert into cidades values ('1400209','Caracaraí', 'RR');

insert into cidades values ('1400233','Caroebe', 'RR');

insert into cidades values ('1400282','Iracema', 'RR');

insert into cidades values ('1400308','Mucajaí', 'RR');

insert into cidades values ('1400407','Normandia', 'RR');

insert into cidades values ('1400456','Pacaraima', 'RR');

insert into cidades values ('1400472','Rorainópolis', 'RR');

insert into cidades values ('1400506','São João da Baliza', 'RR');

insert into cidades values ('1400605','São Luiz', 'RR');

insert into cidades values ('1400704','Uiramutã', 'RR');

insert into cidades values ('1500107','Abaetetuba', 'PA');

insert into cidades values ('1500131','Abel Figueiredo', 'PA');

insert into cidades values ('1500206','Acará', 'PA');

insert into cidades values ('1500305','Afuá', 'PA');

insert into cidades values ('1500347','Água Azul do Norte', 'PA');

insert into cidades values ('1500404','Alenquer', 'PA');

insert into cidades values ('1500503','Almeirim', 'PA');

insert into cidades values ('1500602','Altamira', 'PA');

insert into cidades values ('1500701','Anajás', 'PA');

insert into cidades values ('1500800','Ananindeua', 'PA');

insert into cidades values ('1500859','Anapu', 'PA');

insert into cidades values ('1500909','Augusto Corrêa', 'PA');

insert into cidades values ('1500958','Aurora do Pará', 'PA');

insert into cidades values ('1501006','Aveiro', 'PA');

insert into cidades values ('1501105','Bagre', 'PA');

insert into cidades values ('1501204','Baião', 'PA');

insert into cidades values ('1501253','Bannach', 'PA');

insert into cidades values ('1501303','Barcarena', 'PA');

insert into cidades values ('1501402','Belém', 'PA');

insert into cidades values ('1501451','Belterra', 'PA');

insert into cidades values ('1501501','Benevides', 'PA');

insert into cidades values ('1501576','Bom Jesus do Tocantins', 'PA');

insert into cidades values ('1501600','Bonito', 'PA');

insert into cidades values ('1501709','Bragança', 'PA');

insert into cidades values ('1501725','Brasil Novo', 'PA');

insert into cidades values ('1501758','Brejo Grande do Araguaia', 'PA');

INSERT INTO CIDADES VALUES (500, 'TESTE', NULL);

CREATE TABLE MEDICO 
( 
 CRM NUMBER(5) NOT NULL,  
 NOME VARCHAR(100) NOT NULL,  
 ESPECIALIDADE VARCHAR(100) NOT NULL,  
 CONSTRAINT PK_MEDICOS PRIMARY KEY (CRM)  
);

CREATE TABLE PACIENTES  
(  
 CPF VARCHAR(15) NOT NULL,  
 NOME VARCHAR(100) NOT NULL,  
 SEXO CHAR(1) NOT NULL,  
 CONSTRAINT PK_PACIENTES PRIMARY KEY (CPF)  
);

CREATE TABLE MEDICOSPACIENTES 
(  
CRM NUMBER(5) NOT NULL,  
CPF VARCHAR(15) NOT NULL,  
CONSTRAINT FK_CRM FOREIGN KEY (CRM) REFERENCES MEDICO(CRM),  
CONSTRAINT FK_CPF FOREIGN KEY (CPF) REFERENCES PACIENTES(CPF)  
);

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST  
    INNER JOIN CIDADES CID 
	ON EST.uf= CID.uf 
ORDER BY EST.UF;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf 
ORDER BY EST.UF;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST LEFT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST RIGHT OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

SELECT EST.uf, EST.nome, CID.uf, CID.nome 
FROM ESTADOS EST FULL OUTER JOIN CIDADES CID 
ON EST.uf= CID.uf;

CREATE TABLE AUTORES( 
    COD_AUTOR NUMBER(4) NOT NULL, 
    NOME VARCHAR2(100) NOT NULL, 
    DESCRICAO VARCHAR2(1024), 
    CONSTRAINT PK_AUTORES PRIMARY KEY(COD_AUTOR) 
);

CREATE TABLE PRODUTOS( 
    COD_PRODUTO NUMBER(5) NOT NULL, 
    TITULO VARCHAR2(200) NOT NULL, 
    ANO_LANCAMENTO DATE NOT NULL, 
    IMPORTADO CHAR(1) DEFAULT 'N' NOT NULL, 
    PRECO NUMBER(10, 2), 
    PRAZO_ENTREGA NUMBER(3) NOT NULL, 
    CONSTRAINT PK_PRODUTOS PRIMARY KEY (COD_PRODUTO), 
    CONSTRAINT CHK_PROD_IMPORTADO CHECK (IMPORTADO IN ('S', 'N')) 
);

CREATE TABLE AUTORESPRODUTOS( 
    COD_AUTOR NUMBER(4) NOT NULL, 
    COD_PRODUTO NUMBER(5) NOT NULL, 
    CONSTRAINT PK_AUTORES_PRODUTOS PRIMARY KEY(COD_AUTOR, COD_PRODUTO) 
);

insert into autores values (1,'Sophia Angelides',null);

insert into autores values (2,'Mário Pedrosa',null);

insert into autores values (1002,'Otília Arantes',null);

insert into autores values (3,'Emílio F. Moran',null);

insert into autores values (4,'Jack R. Greene',null);

insert into autores values (5,'Antônio Chaves',null);

insert into autores values (6,'José Pedro de Oliveira Costa',null);

insert into autores values (7,'Ana Mae Barbosa',null);

insert into autores values (8,'Piero Comin-Chiaramonti',null);

insert into autores values (1008,'Celso Gomes',null);

insert into autores values (9,'Barão de Itararé',null);

insert into autores values (10,'Barão de Itararé',null);

insert into autores values (11,'Aziz Nacib AbSaber',null);

insert into autores values (12,'Maria L. Aragão',null);

insert into autores values (1012,'José Carlos S. Meihy ',null);

insert into autores values (13,'Eliane Garcindo Dayrell',null);

insert into autores values (1013,'Zilda Márcia Iokoi',null);

insert into autores values (14,'Maria Lígia Coelho Prado',null);

insert into autores values (15,'Tânia Maria Bessone',null);

insert into autores values (1015,'Tereza Aline Queiroz',null);

insert into autores values (16,'Dante Moreira Leite',null);

insert into autores values (17,'Nilza Nunes da Silva',null);

insert into autores values (18,'Ricardo Palma',null);

insert into autores values (19,'José Luiz Goldfarb',null);

insert into autores values (1019,'Márcia Ferraz',null);

insert into autores values (20,'Júlio César Rodrigues Pereira',null);

insert into produtos values (1,'A. P. TCHEKHOV: Cartas para uma Poética',to_date('29/12/1995','dd/mm/yyyy'),'S',296,43);

insert into produtos values (2,'ACADÊMICOS E MODERNOS - Textos Escolhidos 3',to_date('22/09/2002','dd/mm/yyyy'),'N',31,47);

insert into produtos values (3,'ADAPTABILIDADE HUMANA: Uma Introdução à Antropologia',to_date('17/01/1998','dd/mm/yyyy'),'N',400,42);

insert into produtos values (4,'ADMINISTRAÇÃO DO TRABALHO POLICIAL',to_date('25/08/2000','dd/mm/yyyy'),'N',265,26);

insert into produtos values (5,'ADOÇÃO INTERNACIONAL e o Tráfico de Crianças',to_date('16/11/1998','dd/mm/yyyy'),'N',49,51);

insert into produtos values (6,'AIURUOCA - MATUTU E PEDRA DO PAPAGAIO',to_date('19/08/1999','dd/mm/yyyy'),'N',326,41);

insert into produtos values (7,'ALEX FLEMMING',to_date('23/09/2001','dd/mm/yyyy'),'S',24,43);

insert into produtos values (8,'ALKALINE MAGMATISM IN CENTRAL-EASTERN PARAGUAY',to_date('20/08/1997','dd/mm/yyyy'),'N',143,45);

insert into produtos values (9,'ALMANHAQUE PARA 1955 1º SEMESTRE',to_date('16/05/1998','dd/mm/yyyy'),'S',179,27);

insert into produtos values (10,'ALMANHAQUE PARA 1949',to_date('20/06/2000','dd/mm/yyyy'),'N',86,21);

insert into AUTORESPRODUTOS values (1,1);

insert into AUTORESPRODUTOS values (2,2);

insert into AUTORESPRODUTOS values (1002,2);

insert into AUTORESPRODUTOS values (3,3);

insert into AUTORESPRODUTOS values (4,4);

insert into AUTORESPRODUTOS values (5,5);

insert into AUTORESPRODUTOS values (6,6);

insert into AUTORESPRODUTOS values (7,7);

insert into AUTORESPRODUTOS values (8,8);

insert into AUTORESPRODUTOS values (1008,8);

insert into AUTORESPRODUTOS values (9,9);

insert into AUTORESPRODUTOS values (10,10);

insert into AUTORESPRODUTOS values (11,1);

insert into AUTORESPRODUTOS values (12,2);

insert into AUTORESPRODUTOS values (1012,2);

insert into AUTORESPRODUTOS values (13,3);

insert into AUTORESPRODUTOS values (1013,3);

insert into AUTORESPRODUTOS values (14,4);

insert into AUTORESPRODUTOS values (15,5);

insert into AUTORESPRODUTOS values (1015,5);

insert into AUTORESPRODUTOS values (16,6);

insert into AUTORESPRODUTOS values (17,7);

insert into AUTORESPRODUTOS values (18,8);

SELECT AU.nome, PROD.titulo 
FROM AUTORES AU 
JOIN AUTORESPRODUTOS AP 
ON(AU.cod_autor=AP.cod_autor) 
JOIN PRODUTOS PROD 
ON(AP.cod_produto=PROD.cod_produto);

SELECT AVG(preco) MEDIA FROM PRODUTOS;

SELECT AVG(NVL(preco,0)) MEDIA FROM PRODUTOS;

SELECT MAX(preco) FROM PRODUTOS;

CREATE TABLE PRODS 
( 
codigo NUMERIC(3) NOT NULL, 
nome VARCHAR(50) NOT NULL, 
preco NUMERIC (5,2) NOT NULL, 
tipo CHAR(1) NULL, --[S]uprimento, [C]omponente, [P]eriférico 
CONSTRAINT PK1 PRIMARY KEY (codigo) 
);

INSERT INTO PRODS VALUES( 10, 'HD' ,200 ,'C');

INSERT INTO PRODS VALUES( 11, 'Memoria' ,250 ,'C');

INSERT INTO PRODS VALUES( 12, 'Impressora' ,680 ,'P');

INSERT INTO PRODS VALUES( 13, 'Processador' ,600 ,'C');

INSERT INTO PRODS VALUES( 14, 'DVD-RW' ,2 ,'S');

INSERT INTO PRODS VALUES( 15, 'Papel A4' ,19 ,'S');

INSERT INTO PRODS VALUES( 16, 'Scanner' ,199 ,'P');

SELECT * FROM PRODS;

SELECT COUNT(*) FROM PRODS;

SELECT COUNT(DISTINCT TIPO) FROM PRODS;

ALTER TABLE PRODS ADD (usuario NUMBER(1) NULL);

UPDATE PRODS 
SET usuario= 1 
WHERE codigoIN (10,12,13,14);

UPDATE PRODS 
SET usuario= 2 
WHERE usuarioIS NULL;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

UPDATE PRODS 
SET usuario= 2 
WHERE codigo= 14;

UPDATE PRODS 
SET usuario= NULL 
WHERE codigo= 13;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

SELECT COUNT(DISTINCT TIPO) FROM PRODS;

SELECT TIPO, COUNT(*) 
    FROM PRODUTOS GROUP BY TIPO 
    ORDER BY TIPO;

SELECT TIPO, COUNT(*) 
    FROM PRODS GROUP BY TIPO 
    ORDER BY TIPO;

SELECT TIPO, COUNT(*) AS TOTAL 
    FROM PRODS GROUP BY TIPO 
    ORDER BY TIPO;

SELECT AVG(PRECO) FROM PRODS;

SELECT AVG(PRECO) FROM PRODS WHERE TIPO = 'S';

SELECT TIPO, AVG(PRECO) 
    FROM PRODS GROUP BY TIPO 
    ORDER BY TIPO;

ALTER TABLE PRODS ADD (usuario NUMBER(1) NULL);

UPDATE PRODS 
SET usuario= 1 
WHERE codigoIN (10,12,13,14);

UPDATE PRODS 
SET usuario= 2 
WHERE usuarioIS NULL;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

UPDATE PRODS 
SET usuario= 2 
WHERE codigo= 14;

UPDATE PRODS 
SET usuario= NULL 
WHERE codigo= 13;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

UPDATE PRODS 
SET usuario= 1 
WHERE codigoIN (10,12,13,14);

ALTER TABLE PRODS ADD (usuario NUMBER(1) NULL);

UPDATE PRODS 
SET usuario= 1 
WHERE codigoIN (10,12,13,14);

UPDATE PRODS 
SET usuario = 1 
WHERE codigo IN (10,12,13,14);

UPDATE PRODS 
SET usuario= 2 
WHERE usuario IS NULL;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

UPDATE PRODS 
SET usuario= 2 
WHERE codigo= 14;

UPDATE PRODS 
SET usuario= NULL 
WHERE codigo= 13;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

ELECT tipo, usuario, AVG(preco) 


FROM PRODS 


GROUP BY tipo, usuario 


HAVING AVG(PRECO) > 300;


SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
ORDER BY tipo, usuario;

SELECT tipo, usuario, AVG(preco) 
FROM PRODS 
GROUP BY tipo, usuario 
HAVING AVG(PRECO) > 300;

SELECT CID.nome, COUNT(*) QTD 
FROM CIDADES CID JOIN ENDERECOS END 
ONCID.cod_cidade= END.cod_cidade 
GROUPBY CID.nome 
HAVING COUNT(*) > 10;

SELECT CID.nome, COUNT(*) QTD 
FROM CIDADES CID JOIN ENDERECOS END 
ON CID.cod_cidade= END.cod_cidade 
GROUPBY CID.nome 
HAVING COUNT(*) > 10;

SELECT CID.nome, COUNT(*) QTD 
FROM CIDADES CID JOIN ENDERECOS END 
ON CID.cod_cidade= END.cod_cidade 
GROUP BY CID.nome 
HAVING COUNT(*) > 10;

SELECT PRECO 
FROM produtos 
WHERE cod_produto= 9;

SELECT titulo 
FROM produtos 
WHERE preco > 179;

SELECT TITULO 
FROM PRODUTOS 
WHERE preco > 
    (SELECT preco 
    FROM PRODUTOS 
    WHERE cod_produto = 9);

SELECT titulo 
FROM PRODUTOS 
WHERE importado= 'N' AND preco> 
(SELECT MAX(preco) 
FROM PRODUTOS 
WHERE importado = 'S');

SELECT ano_lanCamento, AVG(preco) 
FROM PRODUTOS 
GROUP BY ano_lancamento 
HAVING AVG(preco)> 
(SELECT AVG(preco) 
FROM PRODUTOS 
WHERE ano_lancamento= trunc(sysdate, 'YYYY');

SELECT ano_lancamento, AVG(preco) 
FROM PRODUTOS 
GROUP BY ano_lancamento 
HAVING AVG(preco) > 
    (SELECT AVG(preco) 
    FROM PRODUTOS 
    WHERE ano_lancamento = trunc(sysdate, 'YYYY');

SELECT 
    cod_produto 
    SUBSTR(titulo, 1, 15), 
    preco, 
    'L' --coluna constante para todos os registros 
    FROM produtos 
    WHERE 
    importado = 'N' 
    AND titulo LIKE 'A%' 
    AND cod_produto> 2;

SELECT 
    cod_produto, 
    SUBSTR(titulo, 1, 15), 
    preco, 
    'L' --coluna constante para todos os registros 
    FROM produtos 
    WHERE 
    importado = 'N' 
    AND titulo LIKE 'A%' 
    AND cod_produto> 2;

INSERT INTO PRODS(codigo, nome, preco, tipo) 
    SELECT 
    cod_produto, 
    SUBSTR(titulo, 1, 15), 
    preco, 
    'L' --coluna constante para todos os registros 
    FROM produtos 
    WHERE 
    importado = 'N' 
    AND titulo LIKE 'A%' 
    AND cod_produto> 2;

INSERT INTO PRODS(codigo, nome, preco, tipo) 
    SELECT 
        cod_produto + 30, 
        SUBSTR(titulo, 1, 15), 
        preco, 
        'L' --coluna constante para todos os registros 
    FROM produtos 
    WHERE 
        importado = 'N' 
    AND titulo LIKE 'A%' 
     AND cod_produto> 2;

UPDATE PRODUTOS 
    SET preco= preco-(10/100 * preco) 
    WHERE cod_produtoIN 
    ( SELECT cod_produto 
    FROM PRODUTOS 
    WHERE prazo_entrega> 30 );

UPDATE PRODUTOS 
    SET preco = preco - (10/100 * preco) 
    WHERE cod_produto IN 
    ( SELECT cod_produto 
    FROM PRODUTOS 
    WHERE prazo_entrega> 30 );

DELETE FROM PRODS 
    WHERE codigo IN 
    ( SELECT cod_produto 
    FROM PRODUTOS 
    WHERE 
    importado= 'N' 
    AND tituloLIKE 'A%';

DELETE FROM PRODS 
    WHERE codigo IN 
    ( SELECT cod_produto 
    FROM PRODUTOS 
    WHERE 
    importado = 'N' 
    AND titulo LIKE 'A%';

DELETE FROM PRODS 
    WHERE codigo IN 
    (SELECT cod_produto 
    FROM PRODUTOS 
    WHERE 
    importado = 'N' 
    AND titulo LIKE 'A%' 
	AND cod_produto> 100 );

SELECT nome, uf FROM CIDADES;

SELECT nome FROM AUTORES;

SELECT Count(*) FROM AUTORES;

SELECT nome FROM AUTORES ORDER BY nome;

SELECT cod_autor, nome, rowid FROM Autores;

CREATE INDEX idx_autores_nome ON AUTORES (nome);

CREATE SEQUENCE seq_titulacoes START WITH 6 ;

SELECT seq_titulações.nextval FROM DUAL;

SELECT seq_titulacoes.nextval FROM DUAL;

SELECT seq_titulacoes.nextval FROM DUAL;

SELECT seq_titulacoes.nextval FROM DUAL;

SELECT seq_titulacoes.nextval FROM DUAL;

SELECT seq_titulacoes.currval FROM DUAL;

INSERT INTO TITULACOES( cod_titulacao, titulo) VALUES (seq_titulacoes.nextval, 'Tecnnologo');

CREATE TABLE TITULACOES 
( 
cod_titulacao NUMBER(4) DEFAULT seq_titulacoes.nextval NOT NULL, 
titulo VARCHAR (20) NOT NULL, 
CONSTRAINT pk_titulacoes PRIMARY KEY (cod_titulacao) 
);

INSERT INTO TITULACOES( titulo) VALUES ('Bacharel');

INSERT INTO TITULACOES( titulo) VALUES ('Especialista');

INSERT INTO TITULACOES( titulo) VALUES ('Mestre');

INSERT INTO TITULACOES( cod_titulacao, titulo) VALUES (seq_titulacoes.nextval, 'Tecnnologo');

