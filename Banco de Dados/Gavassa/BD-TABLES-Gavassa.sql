-- Criação do Database para a Sprint 01.
create database sprint1;

-- Selecionando o Database para uso e criação das tabelas.
use sprint1;

-- Tabela para adicionar os dados das empresas.
create table empresa(
	id_empresa int primary key auto_increment, -- ID da empresa, primary key para identificação.
    nome_fantasia varchar(80), -- Nome fantasia da empresa.
    endereco varchar(200), -- Endereço da empresa.
    contato varchar(60), -- Informações para contato da Empresa.
    email varchar(100) -- Endereço de email da empresa.
);

-- Tabela para adicionar os dados dos motoristas.
create table motorista(
	id_motorista int primary key auto_increment, -- ID do Motorista, primary key para identificação.
    nome varchar(100), -- Nome do motorista.
    contato varchar(60), -- Informações de contato empresarial do motorista.
    email varchar(100) -- Endereço de Email do Motorista.
);

-- Tabela para adicionar os dados do caminhões frigoríficos.
create table caminhao(
	id_caminhao int primary key auto_increment, -- ID do Motorista, primary key para identificação.
    tipo varchar(50),
    modelo varchar(150) not null, -- Modelo do caminhão.
    placa varchar(7) not null, -- Placa de identificação do caminhão.
    capacidade_carga decimal(10,2), -- Capacidade máxima de carga do caminhão.
    id_empresa int, -- FK referenciando o ID da tabela "empresa".
    id_motorista int, -- FK referenciando o ID da tabela "motorista".
    foreign key (id_empresa) references empresa(id_empresa), -- FK referenciando o ID da tabela "empresa".
    foreign key (id_motorista) references motorista(id_motorista) -- FK referenciando o ID da tabela "motorista".
    );

-- Tabela para adicionar os dados dos usuários.
create table usuario(
	id_usuario int primary key auto_increment, -- ID do Usuário, primary key para identificação.
    nome varchar(50) not null, -- Nome do usuário que utilizará a plataforma.
    email varchar(60) not null unique, -- Endereço de email do usuário.
    senha varchar(100) not null, -- Senha do usuário.
    id_empresa int, -- FK referenciando o ID da tabela "empresa".
    foreign key (id_empresa) references empresa(id_empresa) -- FK referenciando o ID da tabela "empresa".
);

-- Tabela para adicionar os dados dos sensores.
create table sensor(
	id_sensor int primary key, -- ID do Sensor, primary key para identificação.
    tipo varchar(50), -- Tipo do sensor (Temperatura ou Umidade)
    modelo varchar(50), -- Modelo do sensor
    dt_instalacao date, -- Data de instalação do sensor.
    id_caminhao int, -- FK referenciando o ID da tabela "caminhao".
    id_empresa int, -- FK referenciando o ID da tabela "empresa".  
    foreign key (id_caminhao) references caminhao(id_caminhao), -- FK referenciando o ID da tabela "caminhao".
    foreign key (id_empresa) references empresa(id_empresa) -- FK referenciando o ID da tabela "empresa".  
);

-- Tabela para adicionar os dados das leituras dos sensores.
create table leitura_sensor(
	id_leitura_sensor int primary key, -- ID da Leitura do Sensor, primary key para identificação.
    leitura_temperatura decimal(3,2), -- Leitura do sensor de temperatura.
    leitura_umidade int, -- Leitura do sensor de umidade.
    id_sensor int, -- FK referenciando o ID da tabela "sensor".
    foreign key (id_sensor) references sensor(id_sensor) -- FK referenciando o ID da tabela "sensor".
);

drop table empresa;

drop table motorista;

drop table caminhao;

drop table sensor;

drop table leitura_sensor;

drop database sprint1;

