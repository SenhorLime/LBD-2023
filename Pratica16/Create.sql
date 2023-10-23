create database Pratica16Views;

use Pratica16Views;

create table Cidade
(
    codigo_cidade int not null,
    nome          varchar(255),
    populacao     int not null,
    primary key (codigo_cidade)
);

insert into Cidade (codigo_cidade, nome, populacao)
values ('1', 'Belo Horizonte', '3000000'),
       ('2', 'Uberlândia', '800000'),
       ('3', 'Uberaba', '400000');

create table Morador
(
    codigo        int not null,
    nome          varchar(255),
    endereco      varchar(255),
    bairro        varchar(255),
    codigo_cidade int not null,
    idade         int not null,
    primary key (codigo),
    foreign key (codigo_cidade) references Cidade (codigo_cidade)
);

insert into Morador (codigo, nome, endereco, bairro, codigo_cidade, idade)
values ('1', 'Jose', 'Rua A', 'Cruzeiro', '1', '21'),
       ('2', 'Joao', 'Rua X', 'Centro', '2', '49'),
       ('3', 'Maria', 'Rua F', 'Norte', '3', '33'),
       ('4', 'Manoel', 'Rua D', 'Serra', '1', '29'),
       ('5', 'Paulo', 'Rua X', 'Centro', '3', '55');