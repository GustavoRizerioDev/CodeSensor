-- Selecionando o Database para uso e criação das tabelas.
use sprint1;

-- Inserindo informações de empresas para testes. --
insert into empresa values(1,'Swift', 'Av. Dr. Ricardo Jafet, 1501', '1140208588', 'swiftbrasil@swift.com.br'),
						  (2,'Friboi', 'Av. Paulista, 234', '1123144234', 'friboibrasil@friboi.com.br'),
                          (3,'JBS S/A', 'Av. Faria Lima, 341', '1154325854', 'jbsbrasil@jbs.com.br'),
                          (4,'Frimesa', 'Av. Brasil, 459', '11941454355', 'frimesabrasil@frimesa.com.br'),
                          (5,'Nutribras', 'Av. Sapopemba, 513', '1157483750', 'nutribrasbrasil@nutribras.com.br');

-- Inserindo informações de motoristas para testes. --
insert into motorista values(1,'Gustavo Silva', '11928412423', 'gustavosilva@swift.com.br'),
							(2,'Luiz André', '11914125785', 'luizandre@friboi.com.br'),
                            (3,'Pedro Oliveira', '11941392541', 'pedrooliveira@jbs.com.br'),
                            (4,'Mauricio Sousa', '11922565413', 'mauriciosousa@frimesa.com.br'),
                            (5,'Ricardo Benevides', '11911512347', 'ricardobenevides@nutribras.com.br');


-- Inserindo informações de caminhões para testes. --
insert into caminhao values(1, 'Caminhão 3/4', 'Hyundai' , 'PLK12K1', 3000, 1, 1),
						   (2, 'BiTruck','DAF','QOR13F1', 6000, 2, 2),
                           (3, 'BiTruck ','Scania', 'FLC12G5', 14000, 3, 3),
                           (4, 'Carreta','Mercedes benz', 'GSW4161', 15000, 4, 4),
                           (5, 'BiTruck','Volkswagen', 'LQR10C1', 10000, 5, 5);


-- Inserindo informações de usuários para testes. --
insert into usuario values(1, 'Guilherme Gavassa', 'guilhermegavassa@swift.com.br','senha1234senha',1),
						  (2, 'Flávio Pereira', 'flaviopereira@friboi.com.br','senha5678senha',2),
                          (3, 'Pablo Alcântara', 'pabloalcantara@jbs.com.br','senha4321senha',3),
                          (4, 'Osvaldo Cruz', 'osvaldocruz@frimesa.com.br','senha9999senha',4),
                          (5, 'Túlio Brasa', 'tuliobrasa@nutribras.com.br','senha1111senha',5)
;


-- Inserindo informações dos sensores para testes. --
insert into sensor values(1, 'Temperatura', 'LM35', '2024-06-21',1,1),
						 (2, 'Umidade', 'DTH11', '2024-06-21',1,1),
                         (3, 'Temperatura', 'LM35', '2024-06-22',2,2),
						 (4, 'Umidade', 'DTH11', '2024-06-22',2,2),
                         (5, 'Temperatura', 'LM35', '2024-06-23',3,3),
						 (6, 'Umidade', 'DTH11', '2024-06-23',3,3),
                         (7, 'Temperatura', 'LM35', '2024-06-24',4,4),
						 (8, 'Umidade', 'DTH11', '2024-06-24',4,4),
                         (9, 'Temperatura', 'LM35', '2024-06-25',5,5),
						 (10, 'Umidade', 'DTH11', '2024-06-25',5,5);


-- Inserindo informações de Leituras dos Sensores para testes.
insert into leitura_sensor values(1, 2.44, 86,1),
								 (2, 2.54, 87,1),
                                 (3, 2.52, 86,1),
                                 (4, 2.71, 88,1),
                                 (5, 3.10, 90,1),
								 (6, 2.8, 87,1),
                                 (7, 2.52, 86,1),
                                 (8, 2.41, 90,1)
;

drop table empresa;

drop table motorista;

drop table caminhao;

drop table sensor;

drop table leitura_sensor;

drop database sprint1;