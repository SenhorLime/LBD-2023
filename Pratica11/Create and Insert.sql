CREATE DATABASE Aeroporto;

USE Aeroporto;

-- Questao 01 --
CREATE TABLE Piloto (
  codigoPiloto INT NOT NULL,
  nomePiloto VARCHAR(255),
  salario FLOAT NOT NULL,
  gratificacao FLOAT NOT NULL,
  companhia VARCHAR(255),
  PRIMARY KEY (codigoPiloto)
);

-- Questao 02 --
INSERT INTO
  Piloto (
    codigoPiloto,
    nomePiloto,
    salario,
    gratificacao,
    companhia
  )
VALUES
  ('01', 'Rafael', '20000.00', '5000.00', 'GOL');

INSERT INTO
  Piloto (
    codigoPiloto,
    nomePiloto,
    salario,
    gratificacao,
    companhia
  )
VALUES
  ('02', 'Robert', '20700.00', '5000.00', 'AZUL');

INSERT INTO
  Piloto (
    codigoPiloto,
    nomePiloto,
    salario,
    gratificacao,
    companhia
  )
VALUES
  ('03', 'Nelson', '30000.00', '1000.00', 'GOL');