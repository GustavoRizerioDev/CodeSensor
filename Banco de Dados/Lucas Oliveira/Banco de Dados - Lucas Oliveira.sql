-- Criando Database
create database CodeSensor;

-- Usando Database
use CodeSensor;

-- Tabela para guardar os dados da empresa cadastrada
create table empresa (
id_empresa    int primary key auto_increment,
nome_fantasia varchar(70),
endereco      varchar (100),
telefone   	  char (11),
email		  varchar (100) not null
);

select * from empresa;
desc empresa;

-- Tabela para guardar dados de cada caminhão
create table caminhao_frigorifico (
id_caminhao  	   int primary key auto_increment,
motorista    	   varchar (100),
placa        	   char (7),
capacidade_carga   decimal (10,2),
situacao           varchar (30),
unique ix_placa (placa),
check (situacao in ('Com problemas', 'Em trânsito', 'Concluído')) 
);

select * from caminhao_frigorifico;
desc caminhao_frigorifico;

-- Tabela para guardar os dados do sensor
create table sensores (
id_sensor 		 int primary key,
nome_sensor      varchar (10),
dado_temperatura decimal (5,2),
dado_umidade     decimal (3,1),
data_dados       date
);

select * from sensores;
desc sensores;

-- Tabela para guardar os dados de cada motorista do caminhão
create table motoristas (
id_motorista  int primary key,
nome   		  varchar (100),
telefone	  char (11),
CPF			  char (11),

);

select 
id_motorista as 'Identificação do motorista',
nome, telefone, CPF
from motoristas;

desc motoristas;

-- Tabela para guardar os dados do tipo do produto
create table tipo_produto (
id_produto   		int primary key,
tipo_carne   		varchar (10) not null,
temperatura_min 	decimal (5,2),
temperatura_max 	decimal (5,2),
umidade_recomendada decimal (3,1),
check (tipo_carne in ('Bovina', 'Aves', 'Suína'))
);

select 
id_produto as 'Identificação do produto',
tipo_carne as 'Tipo da carne',
temperatura_min as 'Temperatura mínima necessáaria',
temperatura_max as 'Temperatura máxima necessária',
umidade_recomendada as 'Umidade recomendada'
	from tipo_produto;

desc tipo_produto;

