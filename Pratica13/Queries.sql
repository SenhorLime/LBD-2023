SELECT 
    nome, idade
FROM
    Morador
WHERE
    idade < (SELECT 
            AVG(idade)
        FROM
            Morador);

SELECT 
    Morador.nome, bairro, Cidade.nome
FROM
    Morador,
    Cidade
WHERE
    Morador.codigoCidade = Cidade.codigoCidade;

SELECT 
    Cidade.nome, AVG(idade)
FROM
    Morador
        LEFT JOIN
    Cidade ON Morador.codigoCidade = Cidade.codigoCidade
GROUP BY Cidade.nome;

-- Continuar a partir daqui --
SELECT 
    Morador.nome, Morador.endereco
FROM
    Morador,
    Cidade
WHERE
    Morador.codigoCidade = 2
        OR Morador.codigoCidade = 3;