CREATE DATABASE sccr;

USE sccr;

-- MySQL dump 10.11
--
-- Host: localhost    Database: sccr
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt

--
-- Table structure for table equipamentos
--

DROP TABLE IF EXISTS equipamentos;
CREATE TABLE equipamentos (
  `idequipamento` int(11) NOT NULL auto_increment,
  `descricao` varchar(45) NOT NULL,
  `potencia` int(11) NOT NULL,
  `diasdeuso` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `minutos` int(11) NOT NULL,
  `fp` double NOT NULL default '0.92',
  PRIMARY KEY  (`idequipamento`)
) ;

--
-- Dumping data for table `equipamentos`
--
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ar Condicionado 7500 BTU', 1000, 30, 8, 0, 0.92);                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ar Condicionado 10000 BTU', 1350, 30, 8, 0, 0.92);                                            
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aparelho de Som Pequeno', 20, 30, 4, 0, 0.92);                                                
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aparelho de Som 3 em 1', 80, 20, 3, 0, 0.92);                                                 
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aparelho de Som', 220, 20, 3, 0, 0.92);                                                       
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aparelho de DVD', 8, 8, 2, 0, 0.92);                                                          
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aquecedor de Ambiente', 1500, 15, 8, 0, 0.92);                                                
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aspirador de Po Pequeno', 100, 30, 1, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Aspirador de Po', 600, 10, 2, 0, 0.92);                                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Batedeira de Bolo', 120, 8, 0, 30, 0.92);                                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Bebedouro', 200, 30, 15, 0, 0.92);                                                            
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Boiler 50 e 60 litros', 1500, 30, 6, 0, 0.92);                                                
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Boiler 100 litros', 2030, 30, 6, 0, 0.92);                                                    
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Boiler 200 a 500 litros', 3000, 30, 6, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Carregador de Celular', 15, 20, 12, 0, 0.92);                                                 
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Chapinha', 60, 5, 0, 40, 0.92);                                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Chuveiro - posicao Inverno', 5400, 30, 0, 8, 0.92);                                         
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Chuveiro - posicao Verao', 4800, 30, 0, 8, 0.92);                                          
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Circulador de Ar Grande', 200, 30, 8, 0, 0.92);                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Circulador de Ar Pequeno/Medio', 90, 30, 8, 0, 0.92);                                         
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Computador/Impressora/Estabilizador', 180, 30, 3, 0, 0.92);                                    
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Enceradeira', 500, 2, 2, 0, 0.92);                                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Espremedor de Frutas', 100, 20, 0, 10, 0.92);                                                  
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Exaustor de Fogao', 170, 30, 4, 0, 0.92);                                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Exaustor de Parede', 110, 30, 4, 0, 0.92);                                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ferro de Passar Roupa Comum', 550, 12, 1, 0, 0.92);                                            
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ferro de Passar Roupa Automatico', 1000, 12, 1, 0, 0.92);                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Forno Eletrico', 1500, 30, 0, 20, 0.92);                                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Freezer', 180, 30, 15, 0, 0.92);                                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Frigobar', 60, 30, 15, 0, 0.92);                                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Comum 280 litros - Antiga', 160, 30, 15, 0, 0.92);                                   
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Comum 280 litros - Nova', 80, 30, 15, 0, 0.92);                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Comum 310 litros - Antiga', 180, 30, 15, 0, 0.92);                                   
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Comum 310 litros - Nova', 90, 30, 15, 0, 0.92);                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Duplex 430 litros - Antiga', 280, 30, 15, 0, 0.92);                                  
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Geladeira Duplex 430 litros - Nova', 125, 30, 15, 0, 0.92);                                    
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Incandescente 40 W', 40, 30, 5, 0, 0.92);                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Incandescente 60 W', 60, 30, 5, 0, 0.92);                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Incandescente 100 W', 100, 30, 5, 0, 0.92);                                           
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Fluorescente 20 W', 20, 30, 5, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Fluorescente 40 W', 40, 30, 5, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Fluorescente Compacta 11 W', 11, 30, 5, 0, 0.92);                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Fluorescente Compacta 15 W', 15, 30, 5, 0, 0.92);                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lampada Fluorescente Compacta 23 W', 23, 30, 5, 0, 0.92);                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lava Jato', 370, 8, 1, 0, 0.92);                                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lavadora de Loucas', 1500, 30, 0, 40, 0.92);                                                  
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Lavadora de Roupas', 500, 12, 1, 0, 0.92);                                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Liquidificador', 300, 15, 0, 15, 0.92);                                                        
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Microondas', 1200, 30, 0, 20, 0.92);                                                           
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Radio Relogio', 5, 30, 24, 0, 0.92);                                                         
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Secador de Cabelo Grande', 1400, 30, 0, 10, 0.92);                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Secador de Cabelo Pequeno', 600, 30, 0, 15, 0.92);                                             
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Secadora de Roupa Grande', 3500, 12, 1, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Secadora de Roupa Pequena', 1000, 8, 1, 0, 0.92);                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Tanquinho', 270, 12, 1, 0, 0.92);                                                              
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Telefone sem Fio', 5, 30, 24, 0, 0.92);                                                        
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('TV Preto e Branco', 40, 30, 5, 0, 0.92);                                                       
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('TV Portatil', 40, 30, 5, 0, 0.92);                                                            
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('TV 14 Polegadas', 60, 30, 5, 0, 0.92);                                                         
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('TV 20 Polegadas', 90, 30, 5, 0, 0.92);                                                         
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('TV 29 Polegadas', 110, 30, 5, 0, 0.92);                                                        
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Torneira Eletrica', 3500, 30, 0, 30, 0.92);                                                    
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Torradeira/Sanduicheira', 800, 30, 0, 10, 0.92);                                               
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ventilador de Teto', 120, 30, 8, 0, 0.92);                                                     
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Ventilador Pequeno', 65, 30, 8, 0, 0.92);                                                      
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Video Cassete', 10, 8, 2, 0, 0.92);                                                            
insert into equipamentos (descricao, potencia, diasdeuso, horas, minutos, fp) values ('Video Game', 15, 15, 4, 0, 0.92);                                                             


-- Dump completed on 2013-10-26 15:06:36
