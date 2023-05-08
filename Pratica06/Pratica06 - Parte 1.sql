-- Criacao do DB Empresa
CREATE database Empresa;

use Empresa;

-- Criacao da Tabela Funcionario
CREATE TABLE Funcionario (
    Matricula int PRIMARY KEY,
    Nome varchar(70),
    Endereco varchar(100),
    Telefone varchar(20),
    Idade int,
    Salario float(10, 2),
    Filhos int
);

-- Inserindo itens na tabela Funcionario
INSERT INTO
    Funcionario (
        Matricula,
        Nome,
        Endereco,
        Telefone,
        Idade,
        Salario,
        Filhos
    )
VALUES
    (
        '001',
        'Lucas Vila',
        'Rua Álvaro Santana, Jardim Maria Amélia, 37',
        '(74) 3428-0853',
        '27',
        '6650.90',
        '1'
    );

INSERT INTO 
    Funcionario (
        Matricula,
        Nome,
        Endereco,
        Telefone,
        Idade,
        Salario,
        Filhos
    )
VALUES
    (
        '002',
        'Ricardo Brito',
        'Avenida Arthur da Costa e Silva, Conjunto Habitacional Octávio Cilurzo, 41',
        '(75) 2689-4282',
        '38',
        '5950.75',
        '3'
    );

INSERT INTO 
    Funcionario (
        Matricula,
        Nome,
        Endereco,
        Telefone,
        Idade,
        Salario,
        Filhos
    )
VALUES
    (
        '003',
        'Tatiana Fonseca',
        'Rua João Honório, Brasilândia, 82',
        '(74) 3748-1145',
        '46',
        '7867.15',
        '4'
    );

INSERT INTO 
    Funcionario (
        Matricula,
        Nome,
        Endereco,
        Telefone,
        Idade,
        Salario,
        Filhos
    )
VALUES
    (
        '004',
        'Mônica Quintana',
        'Rua Lida Leda Montanari Leme, Condomínio Jardim Flamboyan, 92',
        '(75) 2268-5748',
        '21',
        '4495.20',
        '0'
    );
    
-- Alterando o numero de filhos do ultimo registro para 10
UPDATE
	Funcionario
SET
	Filhos = 10
WHERE 
	Matricula = 004;

-- Consultando todos os funcionarios
SELECT 
    *
FROM
    Funcionario;
