create database codesensor;
use codesensor;

create table Sensor (

id int primary key auto_increment,
nome varchar (20),
temperatura decimal (3,1),
umidade decimal (4,2));

insert into Sensor (nome, temperatura, umidade) values ('DHT11', null, 80.00);

select * from Sensor;

create table Empresa (

 id int primary key auto_increment,
 nome_fantasia varchar(50) not null,
 cnpj varchar(14) not null, 
 chave_acesso int not null
 a);
 insert into Empresa (nome_fantasia, cnpj, chave_acesso) values ('MaxCarnes', '01234578-91012', 124);
 
 create table Tipo_Produto ( 
 
 id int primary key auto_increment,
 nome varchar(20) not null,
 temperatura_min decimal (3,1) not null,
 temperatura_max decimal (3,1) not null,
 umidade_recomendada decimal (4,2) not null);
 
 
 insert into Tipo_Produto (nome, temperatura_min, temperatura_max, umidade_recomendada)
 values ('Aves', 0.0, 2.0, 81.00);
 
 select * from Tipo_Produto;
 
 
 create table Veículos (
 
 id int primary key auto_increment,
 placa varchar(7) not null,
 situacao varchar(20) not null,
 id_empresa int, 
foreign key (id_empresa) references Empresa(id)
);
