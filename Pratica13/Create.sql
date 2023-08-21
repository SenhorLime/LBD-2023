create database CidadeLimao;

use CidadeLimao;

CREATE TABLE Cidade (
    codigoCidade INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    populacao INT NOT NULL,
    PRIMARY KEY (codigoCidade)
);

CREATE TABLE Morador (
    codigo INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    bairro VARCHAR(255) NOT NULL,
    codigoCidade INT NOT NULL,
    idade INT NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigoCidade)
        REFERENCES Cidade (codigoCidade)
);