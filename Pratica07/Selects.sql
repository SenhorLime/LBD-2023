-- Usando a tabela Hospital
USE Hospital;

-- Alterando o valor de Qtd_Consulta do ultimo registro
UPDATE
  Paciente
SET
  Qtd_Consulta = 35
WHERE
  Matricula = 006;

-- Consultando Nome e Matricula pela Matricula de forma descrescente
SELECT
  Nome,
  Matricula
FROM
  Paciente
ORDER BY
  Matricula DESC;

-- Consultando Nome e Idade dos pacientes que tem mais de 10 consultas
SELECT
  Nome,
  Idade
FROM
  Paciente
WHERE
  Qtd_Consulta > 10;

-- Consultando Nome e Qtd_Consulta dos pacientes com consultas menor que 40, ordenando por consulta
SELECT
  Nome,
  Qtd_Consulta
FROM
  Paciente
WHERE
  Qtd_Consulta < 40
ORDER BY
  Qtd_Consulta;

-- Deletando Endereco de dois pacientes aleatorios
UPDATE
  Paciente
SET
  Endereco = NULL
WHERE
  Matricula = 003
  OR Matricula = 004;

-- Consultando Paciente com Qtd_Consulta menor que 15 e Idade maior que 60 anos
SELECT
  *
FROM
  Paciente
WHERE
  Qtd_Consulta < 15
  OR Idade > 60;

-- Consultando Nome, Endereco, Telefone, Idade e Qtd_Consultas dos pacientes com mais de 5 consultas e menor de 30 anos
SELECT
  Nome,
  Endereco,
  Telefone,
  Idade,
  Qtd_Consulta
FROM
  Paciente
WHERE
  Qtd_Consulta > 5
  AND Idade < 30;

-- Consultando Nome, Endereco, Idade dos pacientes com endereco cadastrado
SELECT
  Nome,
  Endereco,
  Idade
FROM
  Paciente
WHERE
  Endereco IS NOT NULL;

-- Consultando Nome e Qtd_Consultas dos pacientes entre 10 a 50 consultas, ordenando por numero de consultas
SELECT
  Nome,
  Qtd_Consulta
FROM
  Paciente
WHERE
  Qtd_Consulta BETWEEN 10
  AND 50
ORDER BY
  Qtd_Consulta;

-- Consultando Qtd_Consultas sem mostras consultas repetidas
SELECT
  DISTINCT Qtd_Consulta
FROM
  Paciente;

-- Consultando Nome dos usuarios que tem a letra 'A' no nome
SELECT
  Nome
FROM
  Hospital
WHERE
  Nome LIKE '%A%'

-- Consultando os Pacientes que nao tem endereco cadastrado
SELECT
  *
FROM 
  Paciente
WHERE
  Endereco IS NULL;

-- Consultando Matricula, Nome e Idade dos que possuem idade entre 20 a 60 anos
SELECT
  Matricula,
  Nome,
  Idade
FROM
  Paciente
WHERE
  Idade BETWEEN 20
  AND 60;

-- Deletando os Pacientes que possuem 8 no numero de telefone
DELETE FROM
  Paciente
WHERE
  Telefone LIKE '%8%';

-- Consultando Nome e Idade dos pacientes de idade 10, 15, 20, 25, 30, 35, 40
SELECT
  Nome,
  Idade
FROM
  Paciente
WHERE
  Idade IN (10, 15, 20, 25, 30, 35, 40);

-- Deletando todos os registros e verificando se foi deletado
DELETE FROM
  Paciente;

SELECT
  *
FROM
  Paciente;

-- Apagando a tabela e verificando
DROP TABLE Paciente;

SELECT
  *
FROM
  Paciente;

-- Deletando o DB
DROP DATABASE Hospital;