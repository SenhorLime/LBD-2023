CREATE DATABASE Concessionaria;

CREATE TABLE Fabricas (
  codigoFabrica INT NOT NULL,
  fabrica VARCHAR(255),
  PRIMARY KEY (codigoFabrica)
);

CREATE TABLE Veiculos (
  codigoVeiculo INT NOT NULL,
  veiculo VARCHAR(255),
  precoInicial INT NOT NULL,
  codigoFabrica INT NOT NULL,
  versao VARCHAR(255),
  PRIMARY KEY (codigoVeiculo),
  FOREIGN KEY (codigoFabrica) REFERENCES Fabricas (codigoFabrica)
);

INSERT INTO
  Fabricas (codigoFabrica, fabrica)
VALUES
  ('01', 'Betim');

INSERT INTO
  Fabricas (codigoFabrica, fabrica)
VALUES
  ('02', 'Contagem');

INSERT INTO
  Fabricas (codigoFabrica, fabrica)
VALUES
  ('03', 'Pernambuco');

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('1', 'Compass', '153000', '03', 'Sport');

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('2', 'Renegade', '94000', '03', 'Longitude');

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('3', 'Pulse', '71000', '01', 'ELX');

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('4', 'Strada', '62000', '01', 'EX');

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('5', 'Toro', '168000', '02', NULL);