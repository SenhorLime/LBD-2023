use CidadeLimao;

-- Questao 02 --
SELECT nome,
       idade
FROM Morador
WHERE idade < (SELECT AVG(idade)
               FROM Morador);

-- Questao 03 --
SELECT Morador.nome,
       bairro,
       Cidade.nome
FROM Morador,
     Cidade
WHERE Morador.codigoCidade = Cidade.codigoCidade;

-- Questao 04 --
SELECT Cidade.nome,
       AVG(idade)
FROM Morador
         LEFT JOIN
     Cidade ON Morador.codigoCidade = Cidade.codigoCidade
GROUP BY Cidade.nome;


-- Questao 05 --
SELECT Morador.nome,
       Morador.endereco
FROM Morador
         LEFT JOIN Cidade ON Morador.codigoCidade = Cidade.codigoCidade
WHERE Morador.idade > 30
  AND (Cidade.codigoCidade = 2 or Cidade.codigoCidade = 3);

-- Questao 06 --
SELECT Morador.nome, Cidade.nome
FROM Morador
         INNER JOIN Cidade ON Morador.codigoCidade = Cidade.codigoCidade
WHERE Cidade.populacao > 500000;

-- Questao 07 --
SELECT Cidade.nome, COUNT(*) AS qt_registros
FROM Morador
         INNER JOIN Cidade ON Morador.codigoCidade = Cidade.codigoCidade
GROUP BY Cidade.nome;

-- Questao 08 --
SELECT Morador.nome
FROM Morador
         INNER JOIN Cidade ON Morador.codigoCidade = Cidade.codigoCidade
WHERE Cidade.nome LIKE 'U%';

-- Questao 09 --
SELECT Morador.nome, Cidade.nome, Cidade.populacao
FROM Morador
INNER JOIN Cidade ON Morador.codigoCidade = Cidade.codigoCidade
WHERE Cidade.populacao BETWEEN 500000 AND 600000;