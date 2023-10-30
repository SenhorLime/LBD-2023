use Loja;

-- Questao 10
create trigger AntesDeletarFornecedor
    before delete
    on Fornecedor
    for each row
begin
    delete from Produto where codigoFornecedor = OLD.codigo;
end;
