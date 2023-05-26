-- Create DataBase AulaJoin

CREATE DATABASE aulajoin

USE aulajoin;


CREATE TABLE tabelaA (
    id int,
	nome varchar(10)
)

CREATE TABLE tabelaB (
    id int,
	nome varchar(10)
)

INSERT INTO tabelaA (id, nome) VALUES (1,'Robo')
INSERT INTO tabelaA (id, nome) VALUES (1,'Macaco')
INSERT INTO tabelaA (id, nome) VALUES (1,'Samurai')
INSERT INTO tabelaA (id, nome) VALUES (1,'Monitor')


INSERT INTO tabelaB (id, nome) VALUES (1,'Espada')
INSERT INTO tabelaB (id, nome) VALUES (1,'Robo')
INSERT INTO tabelaB (id, nome) VALUES (1,'Mario')
INSERT INTO tabelaB (id, nome) VALUES (1,'Samurai')

SELECT * FROM tabelaA
INNER JOIN tabelaB
ON tabelaA.nome =tabelaB.nome

SELECT * FROM tabelaA

SELECT * FROM tabelaB

SELECT * FROM tabelaA A
INNER JOIN tabelaB B
ON A.nome = B.nome


SELECT * FROM tabelaA A
FULL OUTER JOIN tabelaB B
ON A.nome = B.nome

SELECT * FROM tabelaA A
LEFT JOIN tabelaB B
ON A.nome = B.nome
WHERE B.nome IS NULL

USE AdventureWorks2012

SELECT ProductID, NAME, ProductNumber FROM Production.Product
WHERE NAME LIKE '%CHAI%'
UNION
SELECT ProductID, NAME, ProductNumber FROM Production.Product
WHERE NAME LIKE '%DECAL%'
ORDER BY NAME DESC


-- Person.Person / EmailADDRESS
-- ID, FirstName, LastName, Email

SELECT P.BusinessEntityID, P.FirstName, P.LastName, PE.EmailAddress 
FROM Person.Person P
INNER JOIN Person.EmailAddress PE
ON P.BusinessEntityID = PE.BusinessEntityID
INNER JOIN HumanResources.Employee HR
ON P.BusinessEntityID = HR.BusinessEntityID
WHERE HR.JobTitle LIKE '%DESI%'

-- Nome dos produtos e as informações de subcategoria 
-- ListPrice, Name Produto, Nome da Subcategoria
-- Product / ProductSubcategory

SELECT PR.ListPrice AS PRECO, PR.NAME AS PRODUTO, PC.NAME AS SUBCATEGORIA
FROM Production.Product AS PR
INNER JOIN Production.ProductSubcategory AS PC
ON PR.ProductSubcategoryID = PC.ProductSubcategoryID

-- Trazer o cliente ID, tipo de telefone, o ID do telefone, o numero do telefone
-- personphone e phonenumbertype

SELECT * FROM Person.PersonPhone
SELECT * FROM Person.PhoneNumberType

SELECT * 
FROM Person.PersonPhone AS PP



-- Preciso das pessoas que tem cartão de credito registrado
-- ID, Nome, Email
-- Preciso das pessoas que não tem cartão um de credito registrado
-- ID, Nome, Email
-- tabelas Person, EmailAddress, Sales.PersonCreditcard

SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID

SELECT PP.BusinessEntityID, PP.FirstName, PC.CreditCardID, PE.EmailAddress
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
LEFT JOIN Person.EmailAddress PE
ON PP.BusinessEntityID = PE.BusinessEntityID
WHERE PC.CreditCardID IS NULL
AND PE.EmailAddress IS NOT NULL

SELECT AVG(ListPrice) FROM Production.Product

SELECT ProductID, ListPrice
FROM Production.Product
WHERE ListPrice > 438.6662

SELECT ProductID, ListPrice
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- Nome dos funcionarios que são Design Enginner

SELECT * FROM Person.Person
-- BusinessEntityID

SELECT * FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINNER'

SELECT FirstName FROM Person.Person
WHERE BusinessEntityID IN (5,6,15)

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'DESIGN ENGINNER')
