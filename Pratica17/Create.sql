create database Loja;

use Loja;

create table Fornecedor
(
    codigo            int          not null,
    nome              varchar(255) not null,
    unidadeFederativa varchar(2)   not null,
    primary key (codigo)
);

insert into Fornecedor(codigo, nome, unidadeFederativa)
values ('1', 'DELL', 'SP'),
       ('2', 'HP', 'BH'),
       ('3', 'ASUS', 'RJ');

create table Produto
(
    codigo           int          not null,
    nome             varchar(255) not null,
    estoque          int          not null,
    valor            int          not null,
    codigoFornecedor int          not null,
    desconto         int          not null,
    primary key (codigo),
    foreign key (codigoFornecedor) references Fornecedor (codigo)
);

insert into Produto (codigo, nome, estoque, valor, codigoFornecedor, desconto)
values ('1', 'Teclado', '12', '38', '2', '10'),
       ('2', 'Mouse', '28', '22', '1', '10'),
       ('3', 'Placa', '6', '164', '3', '20'),
       ('4', 'Monitor', '42', '230', '1', '30'),
       ('5', 'Fonte', '33', '64', '3', '20');