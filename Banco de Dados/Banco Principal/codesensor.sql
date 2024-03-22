	create database codesensor;
	use codesensor;

	create table empresa ( 
	 id int primary key auto_increment,  
	 nome_fantasia varchar(50) not null,  
	 cnpj char(18) not null,
     chave_criacao char(6) not null
	); 
    
	create table usuario (
	id int primary key auto_increment,
    nome varchar(50) not null,
    email varchar(80) not null,
    senha varchar(20) not null,
    cpf char(14) not null
    );
    
	create table tipo_produto ( 
	 id int primary key auto_increment,  
	 nome varchar(50) not null,  
	 temperatura_min decimal (5,2) not null default '-4.00',  
	 temperatura_max decimal (5,2) not null default '0.00',  
	 umidade_min decimal (5,2) not null default '80.00',
     umidade_max decimal (5,2) not null default '90.00'
	); 
    
    create table veiculo ( 
	 id int primary key auto_increment,
	 placa char(7) not null,  
	 situacao varchar(20) not null ,
	 
	 check(situacao in('com sensor', 'sem sensor'))
	);

	create table sensor ( 
	 id int primary key auto_increment,  
	 nome varchar(50) not null,  
	 temperatura decimal (5,2),  
	 umidade decimal (5,2),
	 
	 check(nome in('LM35', 'DHT11'))
	);
    
    create table leitura (
		id int primary key auto_increment,
        data_hora datetime
    );
    
    insert into empresa (nome_fantasia, cnpj, chave_criacao)
    values ('Friboi', '02.916.265/0027-07', '123456'),
		('Swift', '02.914.460/0382-04', '654321'),
		('Boi Berrou', '50.315.767/0001-88', '111111'),
        ('Boi da Vila', '59.151.817/0001-03', '121212'),
        ('Abatedouro da Esquina', '25.394.372/0001-70', '557266');
        
	insert into usuario (nome, senha, cpf)
    values ('Claudio', 'Cd123456#', '863.343.340-00'),
			('Juliane', 'J66432!u', '598.005.780-30'),
            ('Marilia', '$Gf541002', '895.279.710-80'),
            ('Manuele', '!!29Pp392', '661.249.030-67'),
            ('Frizza', 'Fz22032024!', '081.087.650-72');
    
   insert into tipo_produto (nome)
   values ('Bovina'),
			('Suina'),
            ('Ave');
            
	insert into veiculo (placa, situacao)
	values ('WSR4O74', 'com sensor'),
			('NBA1C88','com sensor'),
            ('GVV6A31', 'sem sensor'),
            ('LVJ2B17', 'com sensor'),
            ('HPY0E71', 'sem sensor');
            
    insert into sensor (nome, temperatura, umidade)
    values ('LM35', 2.21, 82.00),
		('LM35', 4.21, 80.03),
        ('DHT11', 2.01, 80.13),
        ('DHT11', 3.25, 70.01),
        ('LM35', 2.11, 80.42);
        
	insert into leitura (data_hora)
    values ('2024-10-02 13:41:22'),
			('2024-10-02 13:41:30'),
			('2024-10-04 08:15:02'),
            ('2024-10-04 08:15:03' ),
            ('2024-11-23 19:07:27');
            
	select * from empresa;
    select * from usuario;
	select * from tipo_produto;
    select * from veiculo;
    select * from sensor;
    select * from leitura;
    
    
    
    
    
    
	select nome_fantasia as nome, cnpj from empresa;
    select * from empresa where cnpj like '_2%';
    select * from empresa where id > 2 order by id desc;
    
    
    select nome from usuario where cpf = '661.249.030-67';
    select * from usuario where id > 3 and id <= 5;
    select nome, senha, cpf from usuario where senha like '%!%';
    
  
            
