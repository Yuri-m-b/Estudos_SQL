/*Exemplo 1
SELECT C.ClientID,C.Nome,E.Rua,E.Cidade
FROM Client C
INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoID
*/
--Exemplo 2: BusinessEntityID, FirstName,LastName,EmailAddress
SELECT *
FROM person.Person

SELECT *
FROM person.EmailAddress
-- Coluna em comum BusinessEntityID, então:
SELECT p.BusinessEntityID,p.FirstName,p.LastName, pe.EmailAddress
FROM person.Person as P
INNER JOIN person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID

-- Exemplo 3: Queremos que os nomes dos produtos e as informações de suas subcategorias
-- ListPrice, Nome do Produto, Nome da Subcategoria
SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductSubcategory

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product as Pr
INNER JOIN Production.ProductSubcategory PC on PC.ProductCategoryID = pr.ProductSubcategoryID

-- EXEMPLO 4:
SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

-- DESAFIO 1: Juntar as informações de BusinessEntityID, Name, PhoneNumberTypeID e PhoneNumber em
-- 1 lista.
-- R1:
SELECT TOP 10 *
FROM person.PhoneNumberType

SELECT TOP 10 *
FROM person.PersonPhone

SELECT pp.BusinessEntityID, pt.Name, pp.PhoneNumberTypeID, pp.PhoneNumber
FROM person.PersonPhone AS PP
INNER JOIN person.PhoneNumberType AS PT on pt.PhoneNumberTypeID = pp.PhoneNumberTypeID

-- DESAFIO 2: Juntar as informações de AddressID, City, StateProvinceID, Nome do Estado em
-- 1 lista.
-- R2:
SELECT TOP 10 PA.AddressID, PA.City, PS.StateProvinceID, PS.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PS ON PS.StateProvinceID = PA.StateProvinceID