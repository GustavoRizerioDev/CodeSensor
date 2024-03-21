-- Criar database
create database CodeSensor;

-- Usar database
use CodeSensor;

-- Criar Tabela
create table empresa(
idEmpresa			int PRIMARY KEY auto_increment,
NomeEmpresa 		varchar(50),
Presidente			varchar(30),
telefone			char(12)
);

drop table empresa;


-- Inserir dados na tabela
insert into empresa(NomeEmpresa, Presidente, telefone)
values		('Friboi', 'Tony Ramos', '11996164937'),
			('CarnesBrasil', 'Pedro Alvares', '11935167637'),
            ('Sadia', 'Felipe Scudero', '11923145736'),
            ('Perdigao','Cristovao Com Lombo','11923948245'),
            ('Carnes Natura','Breno','11983149243');
            
-- Mostrar dados
select * from empresa;

-- Adcionar coluna Email
alter table empresa add column email varchar(30);

-- Criar tabela
create table Suporte(
idSuporte		int primary key auto_increment,
nomeFuncionario	varchar(50),
fkEmpresa		int,
constraint fkSEmpresa foreign key(fkEmpresa) references empresa (idEmpresa)
);

-- Inserir dados
insert into Suporte(nomeFuncionario, fkEmpresa)
values		('Caio', '1'),
			('Pedro', '4'),
            ('Livia', '3'),
            ('Matheus', '2'),
            ('Carla', '3');
            
-- Mostrar dados
select * from Suporte;

-- Dropar tabela
drop table Suporte;

-- Criar tabela usuario
create table usuarios(
idUsuario int auto_increment,
nome varchar(50),
email varchar(50),
CPF char(11),
primary key(idUsuario));

-- Inserir dados
insert into usuarios(nome, email, CPF)
values 	('Pedro', 'pedro@gmail.com', '86998800819'),
		('Matheus', 'matheus@gmail.com', '67417881823'),
        ('Marcos', 'marcos@gmail.com', '95850967818'),
        ('Paula', 'paula@gmail.com', '49685332843'),
        ('Milena', 'milena@gmail.com', '07417657800');

-- Ver dados da tabela
select * from usuarios;
