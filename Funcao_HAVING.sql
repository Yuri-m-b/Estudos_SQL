-- HAVING é basicamente muito usado em junção com o group by para filtrar resultados de um agrupamento
/*
SELECT coluna1
FROM nomeTabela
GROUP BY coluna1
HAVING condicao
*/

SELECT FirstName, count(FirstName) as "Quantidade"
FROM person.Person
GROUP BY FirstName
HAVING count(FirstName) > 10

-- Exemplo: queremos saber quais produtos que no total de vendar estão entre 162k a 500k
SELECT ProductID, sum(lineTotal) as "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING sum(lineTotal) between 162000 and 500000

-- EXEMPLO 3
SELECT FirstName, count(FirstName) as "Quantidade"
FROM person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING count(FirstName) > 10

/*DESAFIO 1
Estamos querendo identificar as provincias(stateProvinceID) com o maior número de cadastros
no nosso sistema, então é preciso encontrar quais províncias estão registradas no banco
de dados mais que 1000 vezes
*/
--R1
SELECT StateProvinceID, count(StateProvinceID) as "Cadastros"
FROM Person.Address
GROUP BY StateProvinceID
HAVING count(StateProvinceID) > 1000

/*DESAFIO 2
Sendo que se trata de uma mutinacional os gerentes querem saber quais produtos
(productID) não estão trazendo em média no mínimo 1 milhão em total de vendas(lineTotal)
*/
--R2
SELECT ProductID, count(ProductID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(lineTotal) < 1000000