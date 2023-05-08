use Empresa;

-- Consultando Nome e Salario ordenado pelo salario
SELECT
  Nome,
  Salario
FROM
  Funcionario
ORDER BY
  Salario DESC;

-- Consultando Nome, Telefone e Idade dos que possuem mais de 3 filhos
SELECT
  Nome,
  Telefone,
  Idade
FROM
  Funcionario
WHERE
  Filhos > 3;

-- Consultando o Nome e Salario dos funcionarios com salario menor que 1000, ordenado por salario
SELECT
  Nome,
  Salario
FROM
  Funcionario
WHERE
  Salario < 1000
ORDER BY
  Salario DESC;

-- Consultando Matricula, Nome e Idade dos funcionarios entre 30 a 50 anos
SELECT
  Matricula,
  Nome,
  Idade
FROM
  Funcionario
WHERE
  Idade BETWEEN 30
  AND 50;

-- Consultando Salarios sem resultados repetidos
SELECT
  DISTINCT Salario
FROM
  Funcionario;

-- Consultando Nome dos funcionarios que tem A no nome
SELECT
  Nome
FROM
  Funcionario
WHERE
  Nome LIKE '%A%';

-- Consultando Nome, Endereco, Telefone, Idade e Filhos daqueles com mais de 4 filhos e menos de 25 anos
SELECT
  Nome,
  Endereco,
  Telefone,
  Idade,
  Filhos
FROM
  Funcionario
WHERE
  Filhos > 4
  AND Idade < 25;

-- Consultando Matricula, Nome e Idade ordenado por ordem alfabetica
SELECT
  Matricula,
  Nome,
  Idade
FROM
  Funcionario
ORDER BY
  Nome ASC;

-- Consultando Nome e Filhos dos funcionarios que tem entre 3 a 6 filhos ordenando pelo numero de filhos
SELECT
  Nome,
  Filhos
FROM
  Funcionario
WHERE
  Filhos BETWEEN 3 AND 6
ORDER BY
  Filhos ASC;
  
-- Consultando os funcionarios com Salario maior que 5000 ou Idade maior que 45
SELECT
	Nome
FROM 
	Funcionario
WHERE
	Salario > 5000 or Idade > 45;
  
-- Apagando a tabela e depois o DB
DROP TABLE Funcionario;
DROP DATABASE Empresa;
