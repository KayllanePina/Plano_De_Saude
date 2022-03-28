CREATE DATABASE BANCO_DE_DADOS;

CREATE TABLE CLIENTE (ID_CLIENTE SERIAL CONSTRAINT PK_ID_CLIENTE PRIMARY KEY NOT NULL,
  NOME VARCHAR (255) NOT NULL,
  DATA_NASCIMENTO DATE NOT NULL,
  EMAIL VARCHAR (255) NOT NULL  
);

SELECT * FROM CLIENTE; 

CREATE TABLE DEPENDENTE (ID_DEPENDENTE SERIAL CONSTRAINT PK_ID_DEPENDENTE PRIMARY KEY NOT NULL,
	CLIENTE INT NOT NULL,
	DEPENDENTE INT NOT NULL,
	CONSTRAINT FK_CLIENTE FOREIGN KEY (CLIENTE) REFERENCES CLIENTE(ID_CLIENTE),
	CONSTRAINT FK_DEPENDENTE FOREIGN KEY (DEPENDENTE) REFERENCES CLIENTE(ID_CLIENTE)
);

SELECT * FROM DEPENDENTE; 


INSERT INTO CLIENTE(ID, NOME, DATA_NASCIMENTO, EMAIL) VALUES (1, 'kay', '19/08/2002', 'kay@pina.com.br'),
INSERT INTO CLIENTE VALUES (2, 'kayllane', '29/06/2005', 'kayllane@ferreira.com.br')

INSERT INTO DEPENDENTE(CLIENTE, TITULAR_ID,DEPENDENTE) VALUES (1, 1, 2),
INSERT INTO DEPENDENTE(CLIENTE, TITULAR_ID,DEPENDENTE) VALUES (2, 1, 2)


CREATE TABLE PRODUTO (ID_PRODUTO SERIAL CONSTRAINT PK_ID_PRODUTO PRIMARY KEY NOT NULL,
	CODIGO_ANS INT NOT NULL,
	DESCRICAO VARCHAR(100),
	VALOR INT NOT NULL
);

SELECT * FROM PRODUTO;

INSERT INTO PRODUTO (CODIGO_ANS, DESCRICAO, VALOR) VALUES (2222, 'Exemplo de descricao', 100)


CREATE TABLE CONTRATO (ID_CONTRATO SERIAL CONSTRAINT PK_ID_CONTRATO PRIMARY KEY NOT NULL,
	CLIENTE INT NOT NULL,
	PRODUTO INT NOT NULL,
	DATA_INICIO_VIGENCIA DATE NOT NULL,
	CONSTRAINT FK_CLIENTE FOREIGN KEY (CLIENTE) REFERENCES CLIENTE (ID_CLIENTE),
	CONSTRAINT FK_PRODUTO FOREIGN KEY (PRODUTO) REFERENCES CLIENTE (ID_PRODUTO)
);

SELECT * FROM CONTRATO;

INSERT INTO CONTRATO (CLIENTE, PRODUTO, DATA_INICIO_VIGENCIA) VALUES (1, 1, '28/03/2022')