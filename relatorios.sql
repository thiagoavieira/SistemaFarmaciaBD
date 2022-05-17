--O sistema deve permitir a impressão de uma listagem das vendas efetuadas para a data atual, 
--contendo o nome do cliente, telefone para contato, codigo da venda e hora da venda.
SELECT c.nome, c.telefone, v.codigo, v.hora FROM venda v 
	INNER JOIN cliente c ON c.cpf = v.id_cliente;

--O sistema deve permitir a impressão de um comprovante de venda do medicamento, contendo o nome do 
--cliente, documento de identificação, data de venda, vendedor responsável e valor total.
SELECT c.nome, c.cpf, v.data, v.vend_responsavel, v.valor_total FROM venda v 
	INNER JOIN cliente c ON c.cpf = v.id_cliente;
	
-- recupera pra cada vendedor que realizou alguma venda, os códigos das vendas feitas por ele e a 
--soma do valor total delas	
SELECT f.nome, GROUP_CONCAT(v.codigo)'códigos das vendas', SUM(v.valor_total) 'valor das vendas'
	FROM funcionario f 
	INNER JOIN venda v ON f.codigo = v.vend_responsavel 
	GROUP BY f.nome;
	
--O sistema deve permitir a consulta on-line do estoque dos medicamentos. Essa consulta deve 
--mostrar para cada medicamento, o código, nome e a quantidade disponível.
SELECT p.codigo, p.nome, p.qtd_disponivel FROM produto p 
	INNER JOIN medicamento m ON p.codigo = m.cod_produto;
