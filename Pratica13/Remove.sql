use CidadeLimao;

-- Questao 10 --
DELETE
FROM Morador
WHERE codigoCidade = 2;

DELETE
FROM Cidade
WHERE codigoCidade = 2;

-- Questao 11 --
DELETE
FROM Morador
WHERE bairro = 'Centro';

-- Questao 12 --
DELETE
FROM Morador;

-- Questao 13 --
DELETE
FROM Cidade;

-- Questao 14 --
DROP TABLE Cidade;
DROP TABLE Morador;

-- Questao 15 --
DROP DATABASE CidadeLimao;