DROP SCHEMA IF EXISTS projetodba;
CREATE SCHEMA IF NOT EXISTS projetodba;

USE projetodba;

DROP TABLE IF EXISTS item_venda;
DROP TABLE IF EXISTS venda;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS medicamento;
DROP TABLE IF EXISTS produto;
DROP TABLE IF EXISTS fornecedor;
DROP TABLE IF EXISTS vendedor;
DROP TABLE IF EXISTS farmaceutico;
DROP TABLE IF EXISTS funcionario;


CREATE SEQUENCE funcionario_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 10000
    NOCACHE
    NOCYCLE;
	
	
CREATE SEQUENCE fornecedor_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 10000
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE produto_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 100000
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE venda_id_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999999
    NOCACHE
    NOCYCLE;

CREATE TABLE IF NOT EXISTS funcionario (
    codigo INT NOT NULL,
    nome VARCHAR(50),
    cpf CHAR(11) NOT NULL,
    endereco VARCHAR(50),
	cep CHAR(8),
	telefone CHAR (14),
	data_nascimento DATE,
    CONSTRAINT pk_funcionario PRIMARY KEY (codigo)
);
DESCRIBE funcionario;


CREATE TABLE IF NOT EXISTS farmaceutico (
    codigo INT NOT NULL,
	crf VARCHAR(6) NOT NULL,
	CONSTRAINT unique_crf UNIQUE (crf),
    CONSTRAINT fk_farmaceutico FOREIGN KEY (codigo)
        REFERENCES funcionario (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE farmaceutico;


CREATE TABLE IF NOT EXISTS vendedor (
    codigo INT NOT NULL,
    CONSTRAINT fk_vendedor FOREIGN KEY (codigo)
        REFERENCES funcionario (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE vendedor;


CREATE TABLE IF NOT EXISTS fornecedor (
    codigo INT NOT NULL,
	cnpj CHAR(14) NOT NULL,
    nome VARCHAR(50),
	telefone CHAR (14),
	email VARCHAR(50),
	cep CHAR(8),
    endereco VARCHAR(50),
    CONSTRAINT pk_fornecedor PRIMARY KEY (codigo)
);
DESCRIBE fornecedor;


CREATE TABLE IF NOT EXISTS produto (
    codigo INT NOT NULL,
    nome VARCHAR(50),
	data_validade DATE,
	qtd_disponivel INT,
	valor DECIMAL(10 , 2 ),
	cod_fornecedor INT NOT NULL,
    CONSTRAINT pk_produto PRIMARY KEY (codigo),
	CONSTRAINT fk_fornecedor FOREIGN KEY (cod_fornecedor)
        REFERENCES fornecedor (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE produto;


CREATE TABLE IF NOT EXISTS medicamento (
    cod_produto INT NOT NULL,
	bula TEXT,
	quantidade VARCHAR(30),
	fabricante VARCHAR(50),
    CONSTRAINT fk_medicamento FOREIGN KEY (cod_produto)
        REFERENCES produto (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE medicamento;


CREATE TABLE IF NOT EXISTS cliente (
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(50),
	data_nascimento DATE,
	telefone CHAR (14),
	cep CHAR(8),
	endereco VARCHAR(50),
    CONSTRAINT pk_cliente PRIMARY KEY (cpf)
);
DESCRIBE cliente;


CREATE TABLE IF NOT EXISTS venda (
    codigo INT NOT NULL,
	id_cliente CHAR(11) NOT NULL,
	farm_responsavel INT,
	vend_responsavel INT NOT NULL,
	data DATE,
	hora TIME,
	receita ENUM('S', 'N'),
	valor_total DECIMAL(10 , 2 ),
    CONSTRAINT pk_produto PRIMARY KEY (codigo),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente)
        REFERENCES cliente (cpf)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_farm_responsavel FOREIGN KEY (farm_responsavel)
        REFERENCES farmaceutico (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
	CONSTRAINT fk_vend_responsavel FOREIGN KEY (vend_responsavel)
        REFERENCES vendedor (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE venda;


CREATE TABLE IF NOT EXISTS item_venda (
    cod_produto INT NOT NULL,
	cod_venda INT NOT NULL,
	qtd_item INT NOT NULL,
	valor_itens DECIMAL(10 , 2),
    CONSTRAINT pk_item_venda PRIMARY KEY (cod_produto , cod_venda),
    CONSTRAINT fk_cod_produto FOREIGN KEY (cod_produto)
        REFERENCES produto (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_cod_venda FOREIGN KEY (cod_venda)
        REFERENCES venda (codigo)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
DESCRIBE item_venda;


