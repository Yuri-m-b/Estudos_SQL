-- AS serve para renomear as colunas ou agrega��o.
--Exemplo 1:
SELECT TOP 10 ListPrice as "Lista de pre�o"
FROM Production.Product

--Exemplo 2:
SELECT TOP 10 AVG(ListPrice) as "Media de pre�o"
FROM Production.Product

/*Desafio 1
Encontrar o FirstName e Lastname da tabela person.Person e traduzir os nomes
*/
--R1
SELECT FirstName AS "Primeiro Nome", LastName AS "Sobrenome"
FROM person.Person

/*Desafio 2
ProductNumber da tabela production.Product "Numero do produto"
*/
--R2
SELECT ProductNumber AS "N�mero do produto"
FROM production.Product