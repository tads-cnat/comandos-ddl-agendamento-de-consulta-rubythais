CREATE TABLE Pessoa (
    Cpf CHAR(11) PRIMARY KEY,
    Nome VARCHAR (100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NUÇÇ,
    Data_Nascimento DATE NOT NULL,
    Endereço VARCHAR(255),
    Telefone VARCHAR(20)
);

CREATE TABLE Paciente (
    Codigo SERIAL PRIMARY KEY,
    Cpf CHAR(11) UNIQUE NOT NULL REFERENCES Pessoa(Cpf,
    Senha VARCHAR (10) NOT NULL,
    Plano_de_Saude BOOLEAN NOT NULL
);

CREATE TABLE Medico (
    Crm CHAR(6) PRIMARY KEY,
    Cpf CHAR(11) UNIQUE NOT NULL REFERENCES Pessoa(Cpf)
);

CREATE TABLE Especialidade (
    Identificador SERIAL PRIMARY KEY,
    Descricao VARCHAR(100) NOT NULL
);