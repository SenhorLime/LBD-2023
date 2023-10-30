create database LojaLimas;

use LojaLimas;

CREATE TABLE Fornecedor (
    codigo_Fornecedor INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    PRIMARY KEY (codigo_Fornecedor)
);

insert into Fornecedor(codigo_Fornecedor, nome, uf)
values 	('1', 'DELL', 'SP'),
		('2', 'HP', 'BH'),
        ('3', 'ASUS', 'RJ');

CREATE TABLE Produto (
    codigo INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    estoque INT NOT NULL,
    valor INT NOT NULL,
    codigo_Fornecedor INT NOT NULL,
    desconto INT NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_Fornecedor)
        REFERENCES Fornecedor (codigo_Fornecedor)
);

insert into Produto (codigo, nome, estoque, valor, codigo_Fornecedor, desconto)
values 	('1', 'Teclado', '12', '38', '2', '10'),
		('2', 'Mouse', '28', '22', '1', '10'),
        ('3', 'Placa', '6', '164', '3', '20'),
        ('4', 'Monitor', '42', '230', '1', '30'),
        ('5', 'Fonte', '33', '64', '3', '20');

CREATE VIEW vw_Produto AS
    SELECT 
        Produto.nome, Produto.estoque, valor
    FROM
        Produto;
        
SELECT 
    nome, estoque
FROM
    vw_Produto
WHERE
    estoque > 20;
    
CREATE VIEW vw_Join AS
    SELECT 
        Produto.nome,
        Produto.estoque,
        Fornecedor.nome AS Fornecedor,
        Fornecedor.uf AS Local_Fornecedor
    FROM
        Produto
            INNER JOIN
        Fornecedor ON Produto.codigo_Fornecedor = Fornecedor.codigo_Fornecedor;
        
SELECT 
    nome, Fornecedor
FROM
    vw_Join
WHERE
    Local_Fornecedor = 'BH'
        OR Local_Fornecedor = 'RJ';
	
DELIMITER //
create procedure Descontos() 
BEGIN
select * from Produtos
group by desconto;

END
DELIMITER ;

execute Descontos;
