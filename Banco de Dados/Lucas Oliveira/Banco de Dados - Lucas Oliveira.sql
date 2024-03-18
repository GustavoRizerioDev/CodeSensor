-- Criando Database
create database CodeSensor;

-- Usando Database
use CodeSensor;

-- Tabela para guardar os dados da empresa cadastrada
create table empresa (
id_empresa    int primary key auto_increment,
nome_fantasia varchar(70),
endereco      varchar (150),
CNPJ		  char (14),
telefone   	  varchar (20),
email		  varchar (100) not null,
unique ix_CNPJ (CNPJ)
);

insert into empresa
values (null, 'Friboi', 'Rua Hadock Lobo, 395', '02916265003770','08000115057', 'friboi@friboi.com.br'),
	   (null, 'Swift', 'Av. Rui Barbosa, 279', '02914460038204', '08004002892', 'swift@swift.com.br'),
       (null, 'Seara', 'Av. Marginal Direita do Tietê, 500', '02914460020267', '08000472425', 'seara@seara.com'),
       (null, 'Sadia', 'Av. Vital Brasil, 1851', '0730099011048', '08007028800', 'sadia@sadia.com.br'),
       (null, 'Perdigão', 'Av. Raposo Tavares, 52', '89421903013561', '08007017782', 'perdigao@perdigao.com'),
       (null, 'Masterboi', 'Av. da Recuperação, 7380', '03721769000278', '08005483579', 'masterboiltda@masterboi.com');
       
select * from empresa;
desc empresa;


-- Tabela para guardar dados de cada caminhão
create table caminhao_frigorifico (
id_caminhao  	   int primary key auto_increment,
modelo			   varchar (50),
placa        	   char (7),
capacidade_carga   int,
situacao           varchar (30),
id_empresa  	   int,
unique ix_placa (placa),
check (situacao in ('Com problemas', 'Em trânsito', 'Concluído')),
foreign key (id_empresa) references empresa (id_empresa)
)auto_increment = 100;

insert into caminhao_frigorifico
values (null, 'Volkswagen Constellation 18.320', 'BRA2E19', '30000', null, 2),
	   (null, 'Volkswagen Delivery 13.180', 'BEE4R22', '15000', null, 1),
       (null, 'Mercedes-Benz Atego EURO6', 'MSK9B10', '40000', null, 3),
       (null, 'Mercedes-Benz Actros 2548', 'DKV0I01', '50000', null, 5),
       (null, 'Ford Transit Chassi', 'BOK3C58', '37000', null, 6),
       (null, 'Volvo VM', 'QTP5F71', '29000', null, 4);

select * from caminhao_frigorifico;
desc caminhao_frigorifico;

-- Tabela para guardar os dados do tipo do produto
create table tipo_produto (
id_produto   		int primary key,
tipo_carne   		varchar (10) not null,
temperatura_min 	decimal (4,2),
temperatura_max 	decimal (4,2),
umidade_recomendada decimal (3,1),
id_caminhao			int not null,
check (tipo_carne in ('Bovina', 'Aves', 'Suína')),
foreign key (id_caminhao) references caminhao_frigorifico (id_caminhao)
);

insert into tipo_produto
values 		(1, 'Bovina', '-2.90', '0.50', '75', 103),
			(2, 'Aves', '-1.60', '2.45', '80', 100),
            (3, 'Suína', '-3.05', '-1.00', '83', 101),
            (4, 'Suína', '-2.50', '0.00', '78', 102),
            (5, 'Bovina', '-3.00', '-1.10', '81', 104),
            (6, 'Aves', '-2.80', '1.00', '73', 105);

select * from tipo_produto;
desc tipo_produto;

-- Tabela para guardar os dados do sensor
create table sensores (
id_sensor 		 int primary key,
nome_sensor      varchar (10),
dado_temperatura decimal (4,2),
dado_umidade     decimal (3,1),
data_dados       date,
id_caminhao      int not null,
foreign key (id_caminhao) references caminhao_frigorifico (id_caminhao)
);

insert into sensores
values 		(1, 'LM35', '-2.10', null, '2024-03-17', 100),
		 	(2, 'DHT11', null, '81.3', '2024-01-25', 100),
            (3, 'DHT11', null, '79.0', '2024-02-02', 101);
            
select * from sensores;
desc sensores;

-- Tabela para guardar os dados de cada motorista do caminhão
create table motoristas (
id_motorista  int primary key,
nome   		  varchar (100),
telefone	  varchar (15),
CPF			  char (11),
id_caminhao	  int not null,		 	
unique ix_CPF (CPF),
foreign key (id_caminhao) references caminhao_frigorifico (id_caminhao)
);

insert into motoristas
values 		(1, 'Lucas Oliveira', '11913420182', '47851935782', 101),
			(2, 'Guilherme Gavassa', '11959625468', '59348216712', 103),
            (3, 'Kauan Paschoal', '15965285749', '41278936489', 102),
            (4, 'Gustavo Rizerio', '21987452365', '1234567891', 100),
            (5, 'Deivid Menezes', '18962446439', '19950862499', 105),
            (6, 'Kauê de Oliveira', '11912456980', '34269715820', 104);

select * from motoristas;
desc motoristas;



-- Tabela para login dos usuários no site
create table usuarios (
id_usuario 		int primary key,
nome 			varchar (100),
email  			varchar (100),
senha			varchar (100),
id_empresa		int,
foreign key (id_empresa) references empresa (id_empresa)
);

insert into usuarios
values 		(1, 'Pedro Oliveira da Silva', 'pedro.silva@swift.com.br', '123456789', 2),
			(2, 'Júlia Gonçalves Campioto', 'julia.campioto@friboi.com.br', '#Julia123', 1),
            (3, 'Fabiano Martiniano', 'fabiano.martiniano@seara.com', '23547681', 3),
            (4, 'Lucas Oliveira Moraes', 'lucas.moraes@sadia.com.br', '04579554Lo', 4),
            (5, 'Alisson Ferro de Souza', 'alisson.souza@masterboi.com', 'alissonFERRO5741', 6),
            (6, 'Pedro Monteiro', 'pedro.monteiro@perdigao.com', 'PEmonteiro2597', 5);

select * from usuarios;
desc usuarios;
