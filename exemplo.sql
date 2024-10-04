create DATABASE vendas_produtos_1E;
use vendas_produtos_1E;

create table vendas (
id_vendas int auto_increment primary key not null,
produto varchar(100) not null,
quantidade int not null,
preco decimal(10,2) not null
);

insert into vendas(produto, quantidade, preco)
values ("Ferrari", 1, 100000.00),
("Fusca", 2, 12000.00),
("Porsche", 3, 500000.00),
("Variante", 4, 13000.00),
("Logan", 5, 80000.00),
("F1", 6, 40000.00),
("Celta", 7, 20000.00),
("Chevrolet", 8, 60000.00),
("Dogde Charger", 9, 23000.00),
("BMW", 10, 30000.00);

select * from vendas;

select count(*) AS Total_vendas from vendas;

select sum(quantidade) AS Total_produtos from vendas;

select avg(preco) AS Media_de_preço from vendas;

select min(preco) AS Menor_preço from vendas;

select max(preco) AS Maior_preço from vendas;

select produto, count(*) AS Total_vendas from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas from vendas
group by produto
having Total_produtos_vendas >10;

select produto, quantidade, preco from vendas
order by preco desc
limit 5;

select produto, preco,
	(select max(preco) from vendas) AS Maior_preço from vendas;
