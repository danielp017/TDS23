-- Quantos Produtos Vermelhos Tem Preco Entre 500 e 1000 USB

SELECT COUNT(*) AS 'Predutos Vermelhos' FROM Production.Product
WHERE COLOR = 'RED'
AND ListPrice BETWEEN 500 AND 1000

-- Produtos Que Tem Essa SEQ De Caracter No Nome Road
-- *%

SELECT COUNT(NAME) FROM Production.Product
WHERE NAME LIKE '%ROAD%'

SELECT TOP 10 * FROM Sales.SalesOrderDetail
SELECT * FROM Sales.SalesOrderDetail
SELECT TOP 10 * FROM Sales.SalesOrderDetail ORDER BY LineTotal ASC
SELECT TOP 10 * FROM Sales.SalesOrderDetail ORDER BY LineTotal DESC

SELECT TOP 10 SUM(LINETOTAL)
FROM Sales.SalesOrderDetail

SELECT SUM(LINETOTAL) AS TOTALVENDAS FROM Sales.SalesOrderDetail

SELECT MAX(LINETOTAL) AS TOTALVENDAS FROM Sales.SalesOrderDetail

SELECT MIN(LINETOTAL) AS TOTALVENDAS FROM Sales.SalesOrderDetail

SELECT AVG(LINETOTAL) AS TOTALVENDAS FROM Sales.SalesOrderDetail

SELECT FirstName, COUNT(FirstName) AS QTDE FROM Person.Person
GROUP BY FirstName

SELECT SpecialOfferID, SUM(UnitPrice) FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, SUM(UnitPrice) AS 'TOTAL VENDAS' FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SpecialOfferID ASC

SELECT SpecialOfferID, SUM(UnitPrice) AS 'TOTAL VENDAS' FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
ORDER BY SUM(UnitPrice) DESC

SELECT ProductID, COUNT(ProductID) AS 'QUANTIDADE DE PRODUTOS' FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT ProductID, COUNT(ProductID) AS 'QUANTIDADE DE PRODUTOS' FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY COUNT(ProductID) DESC

-- PRODUCTION.PRODUCT - Produtos Prata - SILVER / Media Preço - LISTPRICE

SELECT Color, AVG(ListPrice) FROM Production.Product
GROUP BY Color

SELECT Color, AVG(ListPrice) FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

SELECT MiddleName, COUNT(MiddleName) FROM Person.Person
GROUP BY MiddleName

SELECT MiddleName, COUNT(MiddleName) FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName

SELECT MiddleName, COUNT(MiddleName) AS QTDE FROM Person.Person
GROUP BY MiddleName
ORDER BY MiddleName ASC

/*DESAFIOS 
1 Qual a media que cada produto é vendido (SalesOrdeTail)
2 Quais os 10 produtos que no total tiveram os maiores valores de venda
agrupados por produtos do maior para o menor (SalesOrdeTail)
3 Quantos produtos e qual a quantidade media de produtos temos cadastrados nas ordens
de serviço (WorkOrder) - Agrupar pelo ID do produto (Production.WorkOrder)
*/

SELECT ProductID, AVG(OrderQty) FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT TOP 10 ProductID, SUM(LineTotal) FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

SELECT ProductID, COUNT(ProductID) AS QTDE, AVG(OrderQty) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID

SELECT FirstName, COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName

SELECT FirstName, COUNT(FirstName)
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) >10

SELECT FirstName, COUNT(FirstName) AS QTDE
FROM Person.Person
WHERE FirstName LIKE 'A%'
GROUP BY FirstName
HAVING COUNT(FirstName) >10

-- Agrupar os Produtos (ProductID) por vendas totais (LineTotal) entre 162k e 500k

SELECT ProductID, SUM(LineTotal) AS 'TOTAL DE VENDAS'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quais produtos não estão trazendo em media vendas de 100.00 Mil no total

SELECT ProductID, AVG(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000