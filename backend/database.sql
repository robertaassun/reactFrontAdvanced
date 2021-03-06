create schema fullsetup;

use fullsetup;

create table produtos (
idproduto int not null PRIMARY KEY auto_increment, 
categoria varchar(45) not null,
descricao varchar(150) not null,
preco decimal(8,2),
precofinal decimal(8,2),
imagem varchar(255)
);

create table tbl_categorias(
categoria int not null primary key auto_increment,
categoria varchar(40) not null
);

ALTER TABLE produtos ADD CONSTRAINT FOREIGN KEY (categoria) REFERENCES tbl_categorias (categoria);

insert into tbl_categorias (categoria) values 
('processadores'),
('memoria'),
('placa mae'),
('placa de video'),
('gabinete');

insert into produtos (categoria, descricao, preco, precofinal, imagem)
values 
('processador', 'PROCESSADOR AMD FX-6300 HEXA-CORE 3.5GHZ (3.8GHZ TURBO) 14 MB CACHE AM3', 724, 637,'imagens/processador1.jpg'),
('processador', 'PROCESSADOR AMD RYZEN 3 3100 QUAD-CORE 3.6GHZ (3.9GHZ TURBO) 18MB CACHE', 833.98, 739, 'imagens/processador2.jpg'),
('processador','PROCESSADOR AMD RYZEN 5 3600XT HEXA-CORE 3.8GHZ (4.5GHZ TURBO) 35MB CACHE AM4', 1993.07, 1699, 'imagens/processador3.jpg'),
('processador', 'PROCESSADOR AMD RYZEN 7 3800XT OCTA-CORE 3.9GHZ (4.7GHZ TURBO) 36MB CACHE', 2995.35, 2599, 'imagens/processador4.jpg'),
('memoria', 'MEMORIA CORSAIR VENGEANCE RGB PRO 16GB (2X8) DDR4 3200MHZ PRETA', 2335.99, 2599, 'imagens/memRam1.jpg'),
('memoria', 'MEMORIA CORSAIR DOMINATOR PLATINUM 32GB (2X16) DDR4 3000MHZ LED', 1888.53, 1659, 'imagens/memRam2.jpg'),
('memoria', 'MEMORIA CORSAIR DOMINATOR PLATINUM RGB 16GB (2X8) DDR4 3600MHZ PRETO, CMT16GX4', 1533.30, 1349,'imagens/memRam3.jpg'),
('placa mae', 'PLACA MAE ASROCK Z490 TAICHI DDR4 SOCKET LGA1200 INTEL Z490', 4331.80, 3800, 'imagens/placaMae1.jpg'),
('placa de video', 'PLACA DE VIDEO GALAX GEFORCE RTX 2070 SUPER 8GB HOF 256-BIT, 27ISL6UC53HT', 4200.00, 3696, 'imagens/placaVideo1.jpg'),
('placa de video', 'PLACA DE VIDEO ASUS GEFORCE RTX 2080 SUPER 8GB ROG STRIX 256-BIT, ROG-STRIX-RT', 6963.71, 6100, 'imagens/placaVideo2.jpg'),
('gabinete', 'GABINETE COOLER MASTER COSMOS C700M RGB, MCC-C700M-MG5N-S00', 3899.35, 3400, 'imagens/gabinete1.jpg');
('gabinete', 'GABINETE GAMER AZZA PYRAMID 804V LATERAL DE VIDRO PRATA, CSAZ-804V', 2899.77, 2550, 'imagens/gabinete2.jpg');
('gabinete', 'GABINETE THERMALTAKE VERSA C22 RGB PRETO + FONTE 700W E WATER COOLER 240 RGB', 2555.00, 250, 'imagens/gabinete3.jpg');

create table pedidos (
 id_cliente int not null PRIMARY KEY auto_increment,
 nome_cliente varchar(30) not null, 
 endereco varchar(50) not null, 
 telefone varchar(10), 
 produto varchar(30) not null, 
 valor_uni int not null, 
 qtd int not null,
 total int as (valor_uni * qtd)
 );

insert into pedidos (nome_cliente, endereco, telefone, produto, valor_uni, qtd)
values
('Catia Silvana', 'Rua Casa Forte, 834', '2679-6809', 'processador', 637, 1),
('Marcela Silva', 'Rua Joao Amado Coutinho, 121', '99263-3411', 'gabinete', 3400, 1),
('Tania Regina', 'Estrada Faustiono Bizoto,634', '97856-9874', 'placa de video', 3696, 1),
('Bruno Uchimura', 'Av Jurupis', '96874-5214', 'memoria', 1659, 1);