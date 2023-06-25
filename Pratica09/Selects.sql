USE Concessionaria;

SELECT
  veiculo
FROM
  Veiculos
WHERE
  versao = 'ELX'
  AND precoInicial >= 70000;

INSERT INTO
  Veiculos (
    codigoVeiculo,
    veiculo,
    precoInicial,
    codigoFabrica,
    versao
  )
VALUES
  ('6', 'Fastback', '155000', '01', 'Audade');

UPDATE
  Veiculos
SET
  precoInicial = precoInicial - (precoInicial * 0.1)
WHERE
  codigoVeiculo = 4;

DELETE FROM
  Veiculos
WHERE
  codigoVeiculo = 5;

SELECT
  veiculo
FROM
  Veiculos
WHERE
  precoInicial BETWEEN 60000
  AND 90000
  AND codigoFabrica = 01;

SELECT
  veiculo
FROM
  Veiculos
WHERE
  versao = 'ELX'
  OR versao = 'EX';

SELECT
  veiculo
FROM
  Veiculos
WHERE
  versao IS NULL;

SELECT
  veiculo
FROM
  Veiculos
WHERE
  veiculo LIKE 'P%';

SELECT
  veiculo
FROM
  Veiculos
WHERE
  veiculo LIKE '%S';