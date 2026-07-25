-- Consulta: compras de um cliente específico
-- Objetivo: exibir cliente, produto, quantidade,
-- valor total do item e data da venda.

SELECT
    clientes.cliente,
    produtos.produto,
    itensvenda.quantidade,
    itensvenda.valortotal,
    vendas.data
FROM relacional.clientes
INNER JOIN relacional.vendas
    ON clientes.idcliente = vendas.idcliente
INNER JOIN relacional.itensvenda
    ON vendas.idvenda = itensvenda.idvenda
INNER JOIN relacional.produtos
    ON itensvenda.idproduto = produtos.idproduto
WHERE clientes.idcliente = 5
ORDER BY vendas.data;