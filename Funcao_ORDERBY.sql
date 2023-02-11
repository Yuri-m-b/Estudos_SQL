-- ORDENA a coluna de forma cres (asc) ou decres (desc)
-- Ordenando a coluna Firstname de forma crescente
SELECT *
FROM Person.Person
ORDER BY Firstname asc

-- Ordenando a coluna Firstname de forma decrescente
SELECT *
FROM Person.Person
ORDER BY Firstname desc

-- Ordenando a coluna Firstname de forma crescente e a coluna lastname de forma decrescente
SELECT Firstname, LastName
FROM Person.Person
ORDER BY Firstname asc, LastName desc

--DESAFIO 1-
/*
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro
para o mais barato
*/
--R:
SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

--DESAFIO 2-
/*
Obter o nome e o número do produto que tem o productID entre 1~4
*/
--R:
SELECT TOP 4 name, ProductNumber
FROM Production.Product
WHERE ProductID > 0 AND ProductID < 5
ORDER BY ProductID