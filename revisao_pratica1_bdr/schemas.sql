-- Criação do banco de dados
CREATE DATABASE rede_games;

-- Tabela loja
CREATE TABLE loja (
    id_loja SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- Tabela jogo
CREATE TABLE jogo (
    id_jogo SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    ano_lancamento INTEGER,
    genero VARCHAR(50)
);

-- Tabela cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

-- Tabela compra
CREATE TABLE compra (
    id_compra SERIAL PRIMARY KEY,
    data_compra DATE NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_loja INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_loja) REFERENCES loja(id_loja)
);

-- Tabela compra_jogo (tabela associativa)
CREATE TABLE compra_jogo (
    id_compra INTEGER NOT NULL,
    id_jogo INTEGER NOT NULL,
    quantidade INTEGER NOT NULL DEFAULT 1,
    PRIMARY KEY (id_compra, id_jogo),
    FOREIGN KEY (id_compra) REFERENCES compra(id_compra),
    FOREIGN KEY (id_jogo) REFERENCES jogo(id_jogo)
);
