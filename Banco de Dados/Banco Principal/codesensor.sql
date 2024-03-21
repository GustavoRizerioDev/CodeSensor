	create database codesensor;
	use codesensor;

	create table empresa ( 
	 id int primary key auto_increment,  
	 nome_fantasia varchar(50) not null,  
	 cnpj char(18) not null,
     chave_criacao char(6) not null
	); 
    
    insert into empresa (nome_fantasia, cnpj, chave_criacao)
    values ('Friboi', '02.916.265/0027-07', '123456'),
		('Swift', '02.914.460/0382-04', '654321'),
		('Boi Berrou', '50.315.767/0001-88', '111111'),
        ('Boi da Vila', '59.151.817/0001-03', '121212'),
        ('Abatedouro da Esquina', '25.394.372/0001-70', '557266');
    
	create table usuario (
	id int primary key auto_increment,
    nome varchar(50) not null,
    senha varchar(20) not null,
    cpf char(14) not null
    );
    
    insert into usuario (nome, senha, cpf)
    values ('Claudio', 'Cd123456#', '863.343.340-00'),
			('Juliane', 'J66432!u', '598.005.780-30'),
            ('Marilia', '$Gf541002', '895.279.710-80'),
            ('Manuele', '!!29Pp392', '661.249.030-67'),
            ('Frizza', 'Fz22032024!', '081.087.650-72');
    
	create table tipo_produto ( 
	 id int primary key auto_increment,  
	 nome varchar(50) not null,  
	 temperatura_min decimal (5,2) not null,  
	 temperatura_max decimal (5,2) not null,  
	 umidade_recomendada decimal (5,2) not null
	); 
    
    insert into tipo_produto (nome, temperatura_min, temperatura_max, umidade_recomendada)
    values ('Bovina', '0.00', '4.00', '80.00'),
			('Suina', '0.00', '4.00', '80.00'),
            ('Ave', '0.00', '4.00', '80.00');
    
    create table veiculos ( 
	 id int primary key auto_increment,
	 placa varchar(7) not null,  
	 situacao varchar(20) not null ,
	 
	 check(situacao in('com sensor', 'sem sensor'))
	);
    
    insert into veiculos (placa, situacao)
    values ('WSR4O74', 'com sensor'),
			('NBA1C88','com sensor'),
            ('GVV6A31', 'sem sensor'),
            ('LVJ2B17', 'com sensor'),
            ('HPY0E71', 'sem sensor');

	create table sensor ( 
	 id int primary key auto_increment,  
	 nome varchar(50) not null,  
	 temperatura decimal (5,2),  
	 umidade decimal (5,2),
	 
	 check(nome in('LM35', 'DHT11'))
	);
    
    insert into sensor (nome, temperatura, umidade)
    values ('LM35', 2.21, 82.00),
		('LM35', 4.21, 80.03),
        ('DHT11', 2.01, 80.13),
        ('DHT11', 3.25, 70.01),
        ('LM35', 2.11, 80.42);
    
    create table leitura (
		id int primary key auto_increment,
        data_hora datetime
    );
    
    insert into leitura (data_hora)
    values ('2024-10-02 13:41:22'),
			('2024-10-02 13:41:30'),
			('2024-10-04 08:15:02'),
            ('2024-10-04 08:15:03' ),
            ('2024-11-23 19:07:27');
            
	select * from leitura;
            
	create table carregamento ( 
	 id int primary key auto_increment
	); 
    