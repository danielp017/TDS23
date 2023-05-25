SELECT * FROM PERSON.PERSON 
WHERE BusinessEntityID = 5 
OR BusinessEntityID = 23


SELECT * FROM Production.Product
WHERE Weight > 500
AND Weight <= 700


SELECT * FROM HumanResources.Employee
WHERE SalariedFlag = 1
AND MaritalStatus = 'M'
AND BirthDate <= '1983/01/01'

SELECT * FROM Person.Person
WHERE FirstName ='Peter'
AND LastName = 'Krebs'

SELECT * FROM Person.EmailAddress
WHERE BusinessEntityID = 26

SELECT Person.Person.FirstName, Person.Person.LastName, Person.EmailAddress.EmailAddress
FROM Person.Person,Person.EmailAddress
WHERE Person.BusinessEntityID = EmailAddress.BusinessEntityID
AND Person.BusinessEntityID = 26

SELECT COUNT (Name) AS 'QTDE DE PRODUTOS'
FROM Production.Product

SELECT DISTINCT NAME FROM Production.Product

SELECT DISTINCT TITLE FROM Person.Person

SELECT ListPrice FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500


SELECT ListPrice FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500


SELECT weight 
FROM Production.Product
WHERE Weight BETWEEN 500 AND 1000

SELECT * FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'


SELECT * FROM PERSON.PERSON 
WHERE BusinessEntityID IN (5,111,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'RO%'


SELECT * FROM Person.Person
WHERE FirstName LIKE 'RO__'


-- Quantos Produtos temos no Banco De Dados Acima De 1500

-- Quantas Pessoas Tem O Sobrenome Que Começa Com A Letra P

--Em Quantas Cidades Unicas Estao As Pessoas/Clientes

SELECT *
FROM Production.Product
WHERE StandardCost > '1500'


SELECT COUNT (LastName)
FROM Person.Person 
WHERE LastName LIKE 'P%'

SELECT COUNT (DISTINCT City)
FROM Person.Address


/*
AND - E
OR - OU
NOT - ACOMPANHADO


=
>
<
<>
>=
<=

*/

