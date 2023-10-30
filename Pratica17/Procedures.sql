use Loja;

-- Questao 06
create procedure QuantidadeRegistrosPorDesconto()
begin
    select desconto, COUNT(*) as quantidadeRegistros
    from Produto
    group by desconto
    order by desconto;
end;

-- Questao 07
call QuantidadeRegistrosPorDesconto();

-- Questao 08
create procedure QuantidadePorEstoque(in quantidadeNoEstoque int)
begin
    select *
    from vwProduto
    where estoque >= quantidadeNoEstoque;
end;

-- Questao 09
call QuantidadePorEstoque(20);
call QuantidadePorEstoque(47);
call QuantidadePorEstoque(5);
