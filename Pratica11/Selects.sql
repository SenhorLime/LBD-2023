USE Aeroporto;

-- Questao 07 --
SELECT
  SUM(salario) as somaSalarial
FROM
  Piloto;

-- Questão 08 --
SELECT
  companhia,
  AVG(salario) as mediaSalarial
FROM
  Piloto
GROUP BY
  companhia;

-- Questao 09 --
SELECT
  companhia,
  AVG(gratificacao) as mediaGratificacao
FROM
  Piloto
GROUP BY
  companhia
HAVING
  AVG(gratificacao) > 3500;