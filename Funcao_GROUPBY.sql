-- GROUP BY basicamente divide o resultado de uma pesquisa em grupos
-- Para cada grupo voc� pode aplicar uma fun��o de agrega��o por exemplo:
-- calcular a soma de itens
-- contar o n�mero de itens naquele grupo

SELECT *
FROM Sales.SalesOrderDetail

-- Nessa fun��o o programa procura no banco de dados todas as diferentes
-- SpecialOfferID, faz a soma do valor unitario e agrupa elas
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID
-- Essa fun��o apenas demonstra o que foi feito na fun��o de cima
/*
SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9
*/

--Ex2: quero saber quantos cada produto foi vendido at� hoje
--O programa v� quantas vezes o productID 707 aparece no banco de dados
SELECT ProductID, Count(ProductID) AS "contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

--Ex3: quero saber quantos nomes temos cadastrados no banco de dados
SELECT FirstName, Count(FirstName) AS "contagem"
FROM Person.Person
GROUP BY FirstName

--Ex4: Na tabela production.product eu quero saber a m�dia de pre�o para os produtos
-- que s�o pratas(silveR)
SELECT Color, AVG(ListPrice) AS "contagem"
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color

/*
Desafio 1:
Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por MiddleName
*/
--R1:
SELECT MiddleName, COUNT(MiddleName)
FROM Person.Person
GROUP BY MiddleName

/*
Desafio 2:
Eu preciso saber em m�dial qual � a quantidade(quantity) que cada produto � vendido na loja
*/
--R2:
SELECT ProductID, AVG(OrderQty) AS "Contagem"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID asc

/*
Desafio 3:
Eu quero saber quais foram as 10 vendas que no total tiveram os maiores valores
de venda(line total) por produto do maior valor para o menor
*/
--R3:
SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) desc

/*
Desafio 4:
Eu preciso saber quantos produtos e qual a quantidade m�dia de produtos temos
cadastrados nas nossas ordem de servi�o (WorkOrder), agrupados por productID
*/
--R4:
SELECT ProductID, COUNT(ProductID) AS "Contagem", AVG(OrderQTY) AS "Media"
FROM Production.WorkOrder
GROUP BY ProductID
