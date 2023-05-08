CREATE database Empresa;

use Empresa;

CREATE TABLE Funcionario (
  Matricula int PRIMARY KEY,
  Nome varchar(25),
  Endereco varchar(25),
  Departamento int
);

INSERT INTO
  Funcionario (Matricula, Nome, Endereco, Departamento)
VALUES
  ('1001', 'João', 'Rua 5', '108');

INSERT INTO
  Funcionario (Matricula, Nome, Endereco, Departamento)
VALUES
  ('1003', 'Pedro', 'Rua 8', '123');

INSERT INTO
  Funcionario (Matricula, Nome, Endereco, Departamento)
VALUES
  ('1004', 'Manoel', 'Rua 6', '120');

INSERT INTO
  Funcionario (Matricula, Nome, Endereco, Departamento)
VALUES
  ('1005', 'Pedro', 'Rua 7', '123');

INSERT INTO
  Funcionario (Matricula, Nome, Endereco, Departamento)
VALUES
  ('1007', 'Maria', 'Rua6', '132');

UPDATE
  Funcionario
SET
  Endereco = 'Rua 727'
WHERE
  Matricula = 1001;

SELECT
  *
FROM
  Funcionario;

CREATE TABLE Departamento (
  IdDept int PRIMARY KEY,
  Desricao TEXT,
  FOREIGN key (IdDept) REFERENCES Funcionario(Departamento)
);

SELECT
  *
FROM
  Funcionario
WHERE
  Departamento = 123;

DROP TABLE Funcionario;

DROP TABLE Departamento;

DROP database Empresa;