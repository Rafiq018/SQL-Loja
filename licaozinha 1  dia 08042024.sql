create database Loja
use Loja
create table cliente(
	cod_clie numeric(4) constraint cc_PK PRIMARY KEY,
	nome_clie varchar(20) not null,
	endereco varchar(30),
	cidade varchar(15),
	cep char(8),
	uf char(2),
	cnpj char(16),
	ie char(12)
);

create table vendedor(
	cod_ven numeric(4) constraint cv_PK PRIMARY KEY,
	nome_ven varchar(20) not null,
	salario_fixo numeric(12,2),
	comissao char (1)
);

create table produto(
	cod_prod numeric(4) constraint prod_PK PRIMARY KEY,
	unidade varchar(3),
	descricao varchar(20),
	val_unit numeric(10,2)
);
create table pedido(
	num_pedido numeric(4) constraint npd_PK PRIMARY KEY,
	pr_entrega numeric(3) not null,
	cod_clie numeric(4),
	cod_ven numeric(4)
	);
create table item_pedido(
	num_pedido numeric(4),
	cod_prod numeric(4),
	quant numeric(10,2)
);
alter table pedido
add constraint cc_FK foreign key(cod_clie) references cliente (cod_clie)
alter table pedido
add constraint cv_FK foreign key(cod_ven) references vendedor (cod_ven)


alter table item_pedido add constraint npd_FK foreign key(num_pedido) references pedido (num_pedido)
alter table item_pedido
add constraint prod_FK foreign key(cod_prod) references produto (cod_prod)

select * from pedido

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(720, 'Ana', 'Rua 17 n 19', 'Niteroi', '24358310', 'RJ', '12113231/0001-34', 2134);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(870, 'Fl�vio', 'Av. Pres Vargas 10', 'S�o Paulo', '22763931', 'SP', '22534126/9387-9', 4631);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(110, 'Jorge', 'Rua Caiap�, 13', 'Curitiba', '30078500' ,'PR', '14512764/9834-9', 4532);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(222, 'L�cia', 'Rua Itabira, 123', 'Belo Horizonte', '22124391', 'MG', '283152123/9348-8', 2985);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(830, 'Mauricio', 'Av. Paulista, 1236', 'S�o Paulo', '3012683', 'SP', '32816985/7465-6', 9343);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(130, 'Edmar', 'Rua da Praia, s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', 7121);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', 7431);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(20, 'Beth', 'Av. Clim�rio, 45', 'S�o Paulo', '25679300', 'SP', '32485126/7326-8', 9280);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', '24760876', 'PR', '32848223/324-2', 1923);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(180, 'L�vio', 'Av. Beira Mar, 1256', 'Florian�polis', '30077500', 'SC', '12736571/2347-4', 1111);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(260, 'Susana', 'Rua Lopes Mandes, 12', 'Niter�i', '30046500', 'RJ', '21763571/232-9', 2530);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(290, 'Renato', 'Rua Meireles, 123', 'S�o Paulo', '30225900', 'SP', '13276571/1231-4', 1820);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(390, 'Sebasti�o', 'Rua da Igreja, 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', 9071);

insert into cliente(cod_clie, nome_clie, endereco, cidade, cep, uf, cnpj, ie)
values(234, 'Jos�', 'Quadra 3, Bl. 3, sl. 1003', 'Bras�lia', '22841650', 'DF', '21763576/1232-3', 2931);

insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(209, 'Jos�', 1800, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(111, 'Carlos', 2490, 'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(11, 'Jo�o', 2780, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(240, 'Ant�nio', 9500, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(720, 'Felipe', 4600, 'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(213, 'Jonas', 2300, 'A');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(101, 'Jo�o', 2650, 'C');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(310, 'Josias', 870, 'B');
insert into vendedor(cod_ven, nome_ven, salario_fixo, comissao)
values(250, 'Maur�cio', 2930, 'B');

insert into produto(cod_prod, unidade, descricao, val_unit)
values(25, 'KG', 'Queijo', 0.97);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(31, 'BAR', 'Chocolate', 0.87);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(78, 'L', 'Vinho', 2.00);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(22, 'M', 'Linho', 0.11);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(30, 'SAC', 'A��car', 0.30);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(53, 'M', 'Linha', 1.80);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(13, 'G', 'Ouro', 6.18);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(45, 'M', 'Madeira', 0.25);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(87, 'M', 'Cano', 1.97);
insert into produto(cod_prod, unidade, descricao, val_unit)
values(77, 'M', 'Papel', 1.05);

insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(121, 20, 410, 209);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(97, 20, 720, 101);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(101, 15, 720, 101);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(137, 20, 720, 720);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(148, 20, 720, 101);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(189, 15, 870, 213);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(104, 30, 110, 101);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(203, 30, 830, 250);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(98, 20, 410, 209);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(143, 30, 20, 111);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(105, 30, 180, 240);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(111, 15, 260, 240);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(103, 20, 260, 11);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(91, 20, 260, 11);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(138, 20, 260, 11);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(108, 15, 290, 310);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(119, 30, 390, 250);
insert into pedido(num_pedido, pr_entrega, cod_clie, cod_ven)
values(127, 10, 410, 11);

insert into item_pedido (num_pedido, cod_prod, quant)
values(121, 25, 10);
insert into item_pedido (num_pedido, cod_prod, quant)
values(121, 31, 35);
insert into item_pedido (num_pedido, cod_prod, quant)
values(97, 77, 20);
insert into item_pedido (num_pedido, cod_prod, quant)
values(101, 31, 9);
insert into item_pedido (num_pedido, cod_prod, quant)
values(101, 78, 18);
insert into item_pedido (num_pedido, cod_prod, quant)
values(101, 13, 5);
insert into item_pedido (num_pedido, cod_prod, quant)
values(98, 77, 5);
insert into item_pedido (num_pedido, cod_prod, quant)
values(148, 45, 8);
insert into item_pedido (num_pedido, cod_prod, quant)
values(148, 31, 7);
insert into item_pedido (num_pedido, cod_prod, quant)
values(148, 77, 3);
insert into item_pedido (num_pedido, cod_prod, quant)
values(148, 25, 10);
insert into item_pedido (num_pedido, cod_prod, quant)
values(148, 78, 30);
insert into item_pedido (num_pedido, cod_prod, quant)
values(104, 53, 32);
insert into item_pedido (num_pedido, cod_prod, quant)
values(203, 31, 6);
insert into item_pedido (num_pedido, cod_prod, quant)
values(189, 78, 45);
insert into item_pedido (num_pedido, cod_prod, quant)
values(143, 31, 20);
insert into item_pedido (num_pedido, cod_prod, quant)
values(143, 78, 10);

select nome_clie, cnpj from cliente where cod_clie>500

select nome_ven, salario_fixo from vendedor where comissao = 'A' or comissao = 'B'

select descricao from produto where unidade != 'KG'

select num_pedido from pedido where cod_clie = 410 and cod_ven = 209

select num_pedido from pedido where pr_entrega = 20 and cod_ven = 101 or cod_ven = 11

select num_pedido from item_pedido where cod_prod = 77 or cod_prod = 53 or cod_prod = 31

select cod_clie from cliente where cod_clie between 200 and 800 and cidade = 'S�o Paulo'

select cod_prod from item_pedido where num_pedido = 148 

select * from cliente where cod_clie between 130 and 390 order by cod_clie asc

select nome_clie from cliente where nome_clie between 'B' and 'R'  

select nome_clie, uf from cliente where uf = 'SP' or uf = 'MG' or uf = 'RJ'

select descricao, val_unit from produto where unidade = 'BAR' or unidade = 'L' or unidade = 'G'  

select * from vendedor where cod_ven = 101 or cod_ven = 213 or cod_ven = 310

select cod_clie, nome_clie from cliente where cod_clie between 20 and 180 or cod_clie between 250 and 720