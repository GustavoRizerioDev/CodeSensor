-- Criando a database
Create database CodeSensor;

-- Usando a database
use CodeSensor;

-- Tabela de Empresa: Armazena informações sobre as empresas que utilizam o sistema.
CREATE TABLE Empresa (
    ID_empresa INT PRIMARY KEY auto_increment, 
    nome VARCHAR(100), 
    endereco VARCHAR(255), 
    contato VARCHAR(50), 
    email VARCHAR(100) 
);

insert into Empresa (nome, endereco, contato, email) 
values('Gustavo', 'Rua Aristeu', '11957540390', 'GustavoGRizeriog@Gmail.com');

select * from empresa;
desc empresa;

-- Tabela de Caminhões Frigoríficos: Armazena informações sobre os caminhões frigoríficos utilizados no transporte.
CREATE TABLE Caminhoes (
    ID_caminhao INT PRIMARY KEY auto_increment, 
    modelo VARCHAR(100), 
    placa VARCHAR(20), 
    capacidade_carga DECIMAL(10, 2), 
    ID_empresa INT, 
    FOREIGN KEY (ID_empresa) REFERENCES Empresa(ID_empresa) 
);

insert into caminhoes (modelo, placa, capacidade_carga, ID_empresa)
values ('Volvo', '334564', '10000', 1);

select * from caminhoes;
desc caminhoes;

-- Tabela de Sensores: Armazena informações sobre os sensores de temperatura e umidade.
CREATE TABLE Sensores (
    ID_sensor INT PRIMARY KEY auto_increment, 
    tipo_sensor VARCHAR(50),
    ID_caminhao INT, 
    data_instalacao DATE, 
    ID_empresa INT, 
    FOREIGN KEY (ID_caminhao) REFERENCES Caminhoes (ID_caminhao),
    FOREIGN KEY (ID_empresa) REFERENCES Empresa(ID_empresa) 
);

insert into sensores (tipo_sensor, ID_caminhao, data_instalacao, ID_empresa)
values ('Temperatura', 1, '2024-03-01', 1);

select * from sensores;
desc sensores;

-- Tabela de Leituras dos Sensores: Armazena os dados coletados pelos sensores em intervalos regulares.
CREATE TABLE Leituras_Sensores (
    ID_leitura INT PRIMARY KEY auto_increment, 
    ID_sensor INT, 
    valor_temperatura DECIMAL(5, 2),
    valor_umidade DECIMAL(5, 2), 
    FOREIGN KEY (ID_sensor) REFERENCES Sensores(ID_sensor) 
);

insert into Leituras_sensores (ID_sensor, valor_temperatura, valor_umidade)
values (1, '2', '85');

select * from leituras_sensores;
desc leituras_sensores;

-- Tabela de Usuários: Armazena informações sobre os usuários que têm acesso ao sistema.
CREATE TABLE Usuarios (
    ID_usuario INT PRIMARY KEY AUTO_INCREMENT, 
    nome_usuario VARCHAR(50) NOT NULL, 
    email VARCHAR(100) NOT NULL UNIQUE, 
    senha VARCHAR(255) NOT NULL, 
    ID_empresa INT,
    FOREIGN KEY (ID_empresa) REFERENCES Empresa(ID_empresa)
);

insert into usuarios (nome_usuario, email, senha, ID_empresa) 
values('Gustavo', 'GustavoGRizeriog@gmail.com', '12345', '1');

select * from usuarios;
desc usuarios;