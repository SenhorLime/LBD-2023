CREATE DATABASE Escola;

USE Escola;

-- Questao 01 --
CREATE TABLE Aluno (
  matricula INT NOT NULL,
  nome varchar(255),
  endereco varchar(255),
  telefone varchar(15),
  idade INT NOT NULL,
  nota INT NOT NULL,
  turma INT NOT NULL,
  PRIMARY KEY (matricula)
);

-- Questao 02 --
INSERT INTO
  Aluno (
    matricula,
    nome,
    endereco,
    telefone,
    idade,
    nota,
    turma
  )
VALUES
  (
    '12345',
    'João Silva',
    'Rua das Flores, 123',
    '(11) 9876-5432',
    '18',
    '7.5',
    '3'
  );

INSERT INTO
  Aluno (
    matricula,
    nome,
    endereco,
    telefone,
    idade,
    nota,
    turma
  )
VALUES
  (
    '67890',
    'Maria Souza',
    'Avenida dos Sonhos, 456',
    '(21) 6543-2109',
    '20',
    '9.2',
    '4'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '23456',
    'Pedro Santos',
    'Rua das Oliveiras, 789',
    '(31) 7654-3210',
    '17',
    '6.8',
    '2'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '78901',
    'Ana Pereira',
    'Avenida das Estrelas, 987',
    '(41) 2109-8765',
    '19',
    '8.3',
    '1'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '34567',
    'Lucas Costa',
    'Rua dos Coqueiros, 321',
    '(51) 5432-1098',
    '16',
    '5.2',
    '5'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '89012',
    'Fernanda Oliveira',
    'Avenida das Flores, 654',
    '(12) 4321-0987',
    '18',
    '7.9',
    '3'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '45678',
    'Guilherme Mendes',
    'Rua dos Pássaros, 890',
    '(32) 3210-9876',
    '17',
    '6.1',
    '2'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '90123',
    'Beatriz Almeida',
    'Avenida das Pedras, 543',
    '(61) 1098-7654',
    '19',
    '8.7',
    '1'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '56789',
    'Rafaela Santos',
    'Rua das Palmeiras, 876',
    '(71) 9876-5432',
    '16',
    '4.5',
    '5'
  );

INSERT INTO
  Aluno (
    Matricula,
    Nome,
    Endereco,
    Telefone,
    Idade,
    Nota,
    Turma
  )
VALUES
  (
    '23451',
    'Gabriel Ferreira',
    'Avenida dos Girassóis, 210',
    '(81) 7654-3210',
    '20',
    '9.8',
    '4'
  );