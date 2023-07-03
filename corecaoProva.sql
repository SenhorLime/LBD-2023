create database correcao;
use correcao;
CREATE TABLE Clientes (
    codCLi INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    genero VARCHAR(255),
    idade INT NOT NULL,
    cidade VARCHAR(255),
    numCompras INT NOT NULL,
    mes VARCHAR(255),
    vl_ult_compra INT NOT NULL
);

INSERT INTO Clientes (codCLi, nome, genero, idade, cidade, numCompras, mes, vl_ult_compra) 
VALUES 
    (1, 'João Silva', 'Masculino', 30, 'São Paulo', 5, 'Julho', 450),
    (2, 'Maria Santos', 'Feminino', 25, 'Rio de Janeiro', 3, 'Agosto', 400),
    (3, 'Carlos Oliveira', 'Masculino', 40, 'Belo Horizonte', 8, 'Setembro', 350),
    (4, 'Ana Ferreira', 'Feminino', 35, 'Brasília', 2, 'Julho', 250),
    (5, 'Pedro Alves', 'Masculino', 28, 'Fortaleza', 6, 'Agosto', 300),
    (6, 'Lúcia Santos', 'Feminino', 45, 'Salvador', 4, 'Setembro', 400),
    (7, 'Ricardo Costa', 'Masculino', 32, 'Recife', 7, 'Julho', 350),
    (8, 'Isabela Pereira', 'Feminino', 22, 'Curitiba', 1, 'Agosto', 300),
    (9, 'Fernando Souza', 'Masculino', 38, 'Manaus', 9, 'Setembro', 450),
    (10, 'Mariana Lima', 'Feminino', 27, 'Porto Alegre', 5, 'Julho', 400);
-- questao 1 --
select * from Clientes
Where (vl_ult_compra > 300) and (cidade is null) and (genero is not null)
order by genero;
-- questao 02 --
select cidade, sum(numCompras) as total_compras
from Clientes
WHERE vl_ult_compra between 1000 and 10000
group by cidade
having total_compras > 50000;
-- questao 3--
select avg(idade) as media_idade
from Clientes
where vl_ult_compra IN (1000, 1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000) and cidade = 'Belo Horizonte'
group by idade desc
having media_idade > 35;

select nome, idade, numCompras, cidade
from Clientes
where idade between 20 and 50 and numCompras > 20 and nome like 'b'
order by idade;

select count(*) as num_clientes
from Clientes;

select min(numCompras) as minCompra, nome
from Clientes;

select avg(vl_ult_compra) as media_ult_compra, avg(numCompras) as media_compras
from Clientes;
