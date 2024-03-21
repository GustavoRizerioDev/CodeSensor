	create database codesensor;
	use codesensor;

	create table empresa ( 
	 id int primary key auto_increment,  
	 nome_fantasia varchar(50) not null,  
	 cnpj varchar(18) not null,  
	 chave_acesso char(6) not null
	); 

	create table tipo_produto ( 
	 id int primary key auto_increment,  
	 nome varchar(50) not null,  
	 temperatura_min decimal (5,2) not null,  
	 temperatura_max decimal (5,2) not null,  
	 umidade_recomendada decimal (5,2) not null
	); 
    
    create table veiculos ( 
	 id int primary key auto_increment,
	 id_empresa int not null, 
	 placa varchar(7) not null,  
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

	create table carregamento ( 
	 id int primary key auto_increment,  
	 id_veiculo int not null,  
	 id_tipo_produto int not null  
	); 