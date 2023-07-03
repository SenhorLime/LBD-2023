USE Aeroporto;

-- Questao 03 --
UPDATE
  Piloto
SET
  salario = 19000.00,
  companhia = 'LATAM'
WHERE
  codigoPiloto = 3;

-- Questao 04 --
UPDATE
  Piloto
SET
  nomePiloto = 'Roberto'
WHERE
  codigoPiloto = 2;

-- Questao 05 --
UPDATE
  Piloto
SET
  companhia = 'LATAM'
WHERE
  codigoPiloto = 1;

-- Questao 06 --
UPDATE
  Piloto
SET
  salario = salario * 1.2
WHERE
  codigoPiloto = 1;