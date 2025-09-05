USE BD_Pedido_Marcelo;

SELECT * FROM cliente;
SELECT * FROM pedido;

--1) Listando todos os dados dos clientes e os números de pedidos já realizados pelos clientes
SELECT * FROM cliente
INNER JOIN pedido
	ON cliente.codigo_do_cliente = numero_do_pedido;

--2) Listando todos os dados dos vendedores e os número de pedidos em que constam esses vendedores
SELECT * FROM vendedor
INNER JOIN pedido
	ON vendedor.codigo_do_vendedor = numero_do_pedido;

--3) Listando os pedidos em ordem crescente de número do pedido, incluindo os nomes de clientes e  de vendedores 
SELECT * FROM item_do_pedido
INNER JOIN cliente
	ON cliente.nome_do_cliente = item_do_pedido.numero_do_pedido
	ORDER BY item_do_pedido.numero_do_pedido ASC;

SELECT numero_do_pedido, cliente, vendedor FROM pedido;