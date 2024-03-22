CREATE DATABASE codesensor;

use codesensor;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY auto_increment,
    nome VARCHAR(50),
    CPF CHAR(15),
	email varchar(50),
    senha VARCHAR(30),
    confirmarSenha VARCHAR(30)
);

insert into usuario(nome, CPF, email, senha, confirmarSenha)
values ('Antonio', '201.213.242/22', 'antonio@gmail.com', 'antonio21', 'antonio21'),
		('Junior', '203.521.441/23', 'antonio@gmail.com', 'antonio21', 'antonio21'),
        ('Antonio', '101.259.312/09', 'antonio@gmail.com', 'antonio21', 'antonio21');
        
        
CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY auto_increment,
    CNPJ VARCHAR(20),
	nomeFantasia VARCHAR(50)
);
insert into empresa(CNPJ, nomeFantasia)
values ('12.941.931/0001-73', 'Friboi'),
		('39.545.406/0001-95', 'Swift'),
        ('46.622.799/0001-59', 'Seara');


CREATE TABLE sensor(
	idSensor INT PRIMARY KEY auto_increment,
	nomeSensor VARCHAR(10)
    
);

insert into sensor(nomeSensor)
values ('LM35'),
		('DHT11');

CREATE TABLE temperatura (
	idTemperatura INT PRIMARY KEY auto_increment,
    valorTemperatura DECIMAL(3, 3),
    DATA_HORA DATETIME

);

CREATE TABLE umidade (
	idHumidade INT PRIMARY KEY NOT NULL auto_increment,
	valorHumidade DECIMAL(3, 2),
    DATA_HORA DATETIME
);

CREATE TABLE veiculo(
	idVeiculo INT PRIMARY KEY auto_increment,
    modeloVeiculo VARCHAR(50),
    placa CHAR(7),
	capacidade VARCHAR(30)	
);

INSERT into veiculo(modeloVeiculo, placa, capacidade)
values ('Volkswagen', 'NEP0061', '15000'),
		('Volvo', 'DJE0017', '10000'),
        ('Mercedez-Benz', 'MRB7569', '12000');
        
        
       