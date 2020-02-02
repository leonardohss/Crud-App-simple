/* CRIAR BANCO DE DADOS */
CREATE DATABASE BDCRUDAPP;
  
/* SELECIONA O BANCO DE DADOS */
USE BDCRUDAPP;
  
/* CRIACÇÃO DA TABELA */
CREATE TABLE CLIENTE (
      ID INT NOT NULL AUTO_INCREMENT,
      NOME VARCHAR(50)  NOT NULL,
      ENDERECO VARCHAR(50),
      CEP VARCHAR(9),
      BAIRRO VARCHAR(50),
      CIDADE VARCHAR(50),
      UF VARCHAR(2),
      TELEFONE VARCHAR(15),
      CONSTRAINT PK_CLIENTE PRIMARY KEY(ID) 
);

INSERT INTO clienteteste (nome, endereco, cep, bairro, cidade, uf, telefone)
select nome, endereco, cep, bairro, cidade, uf, telefone from cliente
;
UPDATE clienteteste
set CIDADE = 'JUNDIAI'
where id = 6
;
select * from cliente cli1
;
SELECT * 
FROM cliente cli1 
WHERE not exists (select 1 from clienteteste cli2 where cli2.ID = cli1.ID AND cli2.CIDADE = cli1.CIDADE)