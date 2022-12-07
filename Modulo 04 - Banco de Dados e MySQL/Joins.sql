alter table pessoa add idmesa int;
alter table pessoa add FOREIGN KEY (`Idmesa`) REFERENCES `mesa` (`id`);
alter table pessoa drop idmesa;

-- INNER JOIN 
select mesa.*, pessoa.*
	from mesa 
    INNER join pessoa on
    mesa.atendenteid = pessoa.id;
    
-- LEFT JOIN 
select mesa.*, pessoa.*
	from mesa 
    left join pessoa on
    mesa.atendenteid = pessoa.id;

-- RIGHT JOIN    
select mesa.*, pessoa.*
	from mesa 
    RIGHT join pessoa on
    mesa.atendenteid = pessoa.id;

-- FULL OUTER JOIN
select mesa.*, pessoa.*
	from mesa 
    left join pessoa on
    mesa.atendenteid = pessoa.id
    union
    select mesa.*, pessoa.*
	from mesa 
    right join pessoa on
    mesa.atendenteid = pessoa.id;

-- CROSS JOIN
select mesa.*, pessoa.*
	from mesa 
    cross join pessoa ;

-- INNER JOIN INVERSO
select mesa.*, pessoa.*
	from mesa 
    INNER join pessoa on
    mesa.atendenteid <> pessoa.id;

-- ATIVIDADE 1

/* 1.Listar o código das mesas juntamente com o nome dos atendentes responsáveis por cada mesa (apenas as 
mesas que contém atendente); */
select mesa.codigo as Codigo_Mesa, mesa.atendenteId as ID_Atendente, pessoa.nome as Nome_Atendente, pessoa.id as ID_Pessoa
	from mesa
    left join pessoa 
    on mesa.atendenteId = pessoa.id;
 
/* 2. Listar as comandas com seus produtos mostrando o código da comanda e o nome do produto; */
select comanda.codigo as Comanda, comandaproduto.id as ComPro, produto.id as ID_Produto, produto.nome as Nome
	from comanda
    inner join comandaproduto
    on comanda.Id = comandaproduto.comandaid
    inner join produto
    on produto.Id = comandaproduto.produtoid;

/* 3. Listar as comandas mostrando o valor total de cada comanda; */    
select comanda.codigo as codigo, sum(comandaproduto.Valortotal) as Valor
	from comanda join comandaproduto on comandaproduto.comandaId = comanda.id group by comanda.codigo;
    
/* 4. Buscar a comanda que teve a maior valor, mostrando o código da comanda, o valor da comanda e o nome do 
atendente responsável por aquela comanda */
select comanda.codigo 'Código', pessoa.nome 'Atendente', mesa.nome 'Mesa', max(comanda.Valor) 'Valor'
	from comanda 
    join comandaproduto
    on comandaproduto.comandaId = comanda.id
    join mesa
    on comanda.mesaId = mesa.id
    join pessoa
    on mesa.atendenteId = pessoa.id;

-------------------------------------------------------------------------------------------------------------
select * from  produto;
select * from  comandaproduto;
select * from  comanda;

