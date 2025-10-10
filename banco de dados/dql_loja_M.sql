USE Loja_M;

SELECT * FROM Pedido;

--TRAGA OU EXIBA OS REGISTROS DOS PEDIDOS
--PRECISA TER O NOME DO CLIENTE, O NOME DO PRODUTO E A DATA E HORA DO PEDIDO
SELECT 
	FORMAT (Data_Horario, 'dd-mm-yyyy hh-mm--ss') AS Data_Horario,
	C.Nome AS Nome_Cliente,
	PR.Nome AS Nome_Produto
FROM Pedido
INNER JOIN Cliente C  ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR ON Pedido.ID_Produto = PR.ID_Produto
WHERE MONTH(Data_Horario) = '08';

SELECT * FROM Pedido;


