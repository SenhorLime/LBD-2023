USE Escola;

-- Questao 03 --
SELECT
  nome,
  telefone,
  idade
FROM
  Aluno
WHERE
  nota > 8;

-- Questao 04 --
SELECT
  nome,
  telefone
FROM
  Aluno
WHERE
  telefone LIKE '_____9%';

-- Questao 05 --
SELECT
  nome,
  idade
FROM
  Aluno
WHERE
  idade < 30
ORDER BY
  idade ASC;

-- Questao 06 --
SELECT
  DISTINCT nota
FROM
  Aluno;

-- Questao 07 --
SELECT
  matricula,
  nome,
  idade
FROM
  Aluno
WHERE
  idade BETWEEN 12
  AND 50;

-- Questao 08 --
SELECT
  nome
FROM
  Aluno
WHERE
  nome LIKE '%A%';

-- Questao 09 --
SELECT
  nome
FROM
  Aluno
WHERE
  nome LIKE '%Silva';

-- Questao 10 --
SELECT
  AVG(nota) AS media_notas
FROM
  Aluno;

-- Questao 11 --
SELECT
  turma,
  nome,
  MAX(nota) AS nota_maxima
FROM
  Aluno
GROUP BY
  turma;

-- Questao 12 --
SELECT
  turma,
  nome,
  MIN(nota) AS nota_minima
FROM
  Aluno
GROUP BY
  turma;

-- Questao 13 --
SELECT
  COUNT(*) AS total_alunos
FROM
  Aluno;

-- Questao 14 --
SELECT
  turma,
  COUNT(*) AS total_alunos
FROM
  Aluno
GROUP BY
  turma
HAVING
  COUNT(*) > 3;

-- Questao 15 --
SELECT
  turma,
  AVG(idade) AS media_idade
FROM
  Aluno
GROUP BY
  turma
HAVING
  AVG(idade) < 18;

-- Questao 16 --
SELECT
  turma,
  MAX(nota) AS maior_nota
FROM
  Aluno
GROUP BY
  turma
HAVING
  MAX(nota) > 5
ORDER BY
  maior_nota DESC;

-- Questão 17 --
SELECT
  turma,
  AVG(nota) AS media_nota
FROM
  Aluno
WHERE
  turma <> '1'
GROUP BY
  turma
HAVING
  AVG(nota) > 7;