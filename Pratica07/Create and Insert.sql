-- Criacao do DB Hospital
CREATE DATABASE Hospital;

USE Hospital;

-- Criacao da table Paciente
CREATE TABLE Paciente (
  Matricula INT PRIMARY KEY,
  Nome varchar(70),
  Endereco varchar(100),
  Qtd_Consulta INT,
  Telefone varchar(20),
  Idade INT
);

-- Inserindo dados na tabela
INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '001',
    'Ana Souza',
    'Rua das Flores, 123',
    '4',
    '(11) 12345678',
    '28'
  );

INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '002',
    'Felipe Santos',
    'Avenida dos Girassois, 456',
    '2',
    '(21) 98765432',
    '35'
  );

INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '003',
    'Maria Oliveira',
    'Praça da Lua, 789',
    '8',
    '(81) 55554444',
    '42'
  );

INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '004',
    'Pedro Silva',
    'Rua dos Ipês, 987',
    '1',
    '(31) 33332222',
    '19'
  );

INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '005',
    'Camila Rodrigues',
    'Avenida das Acácias, 654',
    '6',
    '(41) 77778888',
    '56'
  );

INSERT INTO
  Paciente (
    Matricula,
    Nome,
    Endereco,
    Qtd_Consulta,
    Telefone,
    Idade
  )
VALUES
  (
    '006',
    'João Paulo',
    'Rua das Águas, 234',
    '3',
    '(31) 55554444',
    '32'
  );