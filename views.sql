USE auladba2;
--visão que mostra o código da venda, nome do produto, a data e a quantidade de itens de todas 
--as vendas na tabela item_venda
CREATE OR ALTER VIEW view_vendas AS
SELECT
    i.cod_venda, p.nome, v.data i.qtd_item FROM item_venda i 
    INNER JOIN venda v ON (i.cod_venda =  v.codigo)
    INNER JOIN produto p ON (i.cod_produto = p.codigo) 
    ORDER BY i.cod_venda;

--visão que mostra o nome, documento, telefone, e o valor total de todas as compras 
--feitas por cada cliente da tabela cliente
CREATE VIEW view_clientes AS
    SELECT cpf'CPF do Cliente', nome'Nome do Cliente', telefone'Telefone do Cliente', sum(valor_total)'Valor Total'
    FROM cliente 
    INNER JOIN venda ON cpf=id_cliente 
    ORDER BY (sum(valor_total) desc);

--visão que mostra o codigo do fornecedor, nome do fornecedor, nome do produto, código do protudo
--e a quantidade disponivel de cada produto da tabela produto.
CREATE OR ALTER VIEW view_fornecedores AS 
SELECT 
    f.codigo AS 'Codigo do Fornecedor', 
    f.nome AS 'Fornecedor',
    p.codigo AS 'Código do Produto',
	p.nome AS 'Produto Fornecido',
    p.qtd_disponivel AS 'Qtd disponivel'
    FROM fornecedor f
    INNER JOIN produto p ON (p.cod_fornecedor = f.codigo) 
    ORDER BY f.codigo;