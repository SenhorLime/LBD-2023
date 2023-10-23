use Pratica16Views;

-- Questao 01 --
select nome, idade
from Morador
WHERE idade < (select AVG(idade) from Morador);

-- Questao 02 --
select Morador.nome, Morador.bairro, Cidade.nome AS Cidade
from Morador
         inner join Cidade on Morador.codigo_cidade = Cidade.codigo_cidade
where Cidade.populacao > 500000;

-- Questao 03 --
select Cidade.nome AS Cidade, AVG(Morador.idade) AS Media_Idade
from Morador
         inner join Cidade on Morador.codigo_cidade = Cidade.codigo_cidade
group by Cidade.nome;

-- Questao 04 --
create view vw_local AS
select nome, endereco, bairro
from Morador;

-- Questao 05 --
select *
from vw_local
where bairro = 'Centro';

-- Questao 06 --
create view vw_join AS
select Morador.nome,
       Morador.endereco,
       Morador.bairro,
       Morador.idade,
       Cidade.nome      AS Cidade,
       Cidade.populacao AS Populacao
from Morador
         inner join Cidade on Morador.codigo_cidade = Cidade.codigo_cidade;

-- Questao 07 --
select *
from vw_join
where idade > 30
  and Populacao > 600000;
