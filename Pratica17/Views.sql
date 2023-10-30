use Loja;

-- Questao 02
create view vwProduto as
select nome, estoque, valor
from Produto;

-- Questao 03
select nome, estoque
from vwProduto
where estoque > 20;

-- Questao 04
create view vwJoin as
select Produto.nome,
       Produto.estoque,
       Fornecedor.nome              as Fornecedor,
       Fornecedor.unidadeFederativa as LocalFornecedor
from Produto
         inner join Fornecedor on Produto.codigoFornecedor = Fornecedor.codigo;

-- Questao 05
select nome, Fornecedor
from vwJoin
where LocalFornecedor = 'BH'
   or LocalFornecedor = 'RJ';