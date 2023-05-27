USE AdventureWorks2012

SELECT FirstName, Title, MiddleName 
FROM Person.Person
WHERE Title = 'Mr.'
AND middleName IS NOT NULL
UNION
SELECT FirstName, Title, MiddleName 
FROM Person.Person
WHERE MiddleName = 'a'
AND Title IS NOT NULL
--AND MiddleName IS NOT NULL
ORDER BY MiddleName ASC


-- Mostra a media mensal de valores vendidos
-- Sales.SalesDerheader

SELECT * FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue), DATEPART(MONTH,OrderDate) Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY 2 DESC

SELECT AVG(TotalDue), DATEPART(YEAR,OrderDate) Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY 2

-- Quais os produtos que estão acima da media de vendas
-- Production.Product - ID, Listprice
-- SUB SELECT - Production.Product


SELECT P.ProductID, P.ListPrice
FROM Production.Product AS P
ORDER BY ListPrice DESC

SELECT PP.ProductID, AVG(PP.ListPrice) 
FROM Production.Product PP
GROUP BY ProductID


SELECT ProductID, ListPrice
FROM Production.Product AS P
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)
ORDER BY 2

