SELECT * FROM sys.tables


SELECT * FROM dbo.authors




SELECT au_fname, phone FROM dbo.authors ORDER BY au_fname DESC


SELECT TOP 5 * ord_num, qty
FROM dbo.sales
ORDER BY qty DESC


SELECT * FROM DBO.authors
WHERE state ='CA'
AND contract = 0
ORDER BY city



SELECT SUM(qty) AS 'VENDAS TOTAIS' FROM dbo.sales

