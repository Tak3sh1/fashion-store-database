create database bd_acessorio;
use bd_acessorio;


create table tb_cliente(
cd_cliente int auto_increment primary key,
nm_cliente varchar(45),
nr_telefone varchar(11),
nm_email varchar(45)
);

create table tb_vendedor(
cd_vendedor int auto_increment primary key,
nm_vendedor varchar(45)
);

create table tb_categoria(
id_categoria int auto_increment primary key,
nm_categoria varchar(45)
);

select * from tb_produto; 

create table tb_produto(
cd_produto int auto_increment primary key,
nm_produto varchar(45),
vl_preco decimal(10,2),
fk_cd_cliente int, 
fk_id_categoria int, 
FOREIGN KEY(fk_cd_cliente)references tb_cliente(cd_cliente),
FOREIGN KEY(fk_id_categoria)references tb_categoria(id_categoria)
);

insert into tb_cliente(cd_cliente,nm_cliente,nr_telefone,nm_email) values(null,'Ana Mariana','119990087','ana@017mariana.com'),
(null,'Eliana Silva','1166666089','eliana@silvinha.com'),
(null,'Mário Santana','21888950','mario@017santana.com'),
(null,'José Claúdio','139679056','claudio@01ze.com'),
(null,'Laura Santos','134500082','santos@097laura.com');

insert into tb_categoria(id_categoria,nm_categoria) values(null,'Colar'),
(null,'Anél'),
(null,'Pulseira'),
(null,'Brinco'),
(null,'Presilha');

insert into tb_vendedor(cd_vendedor,nm_vendedor) values(null,'Ricardo Carlos'),
(null,'Leticia Alicia'),
(null,'Roberto Carloso'),
(null,'Biana Rodrigues'),
(null,'Miguel Cintra');


insert into tb_produto(cd_produto,nm_produto,vl_preco,fk_cd_cliente,fk_id_categoria) values(null,'Colar','50.00',null,null),
(null,'Colar','50.00',null,null),
(null,'Pulseira','60.90',null,null),
(null,'Brinco','35.80',null,null),
(null,'Presilha','23.99',null,null);

select repeat(nm_produto,2)
from tb_produto;

SELECT REPLACE(nm_vendedor,'Leticia Alicia','Miguel Cintra')
from tb_vendedor;

select nm_produto as 'Nome produto',vl_preco as 'Valor',
vl_preco * 5 as 'Compra'
from tb_produto
where cd_produto = 5;

select vl_preco as 'Valor', vl_preco * 10 as 'Valor compra',
 vl_preco * 10 -(vl_preco *0.5) as 'Venda com desconto'
from tb_produto
where cd_produto = 5;

select nm_produto, ceiling(vl_preco)
from tb_produto
where cd_produto = 5;
