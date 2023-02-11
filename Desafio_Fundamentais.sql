/* Desafio 1
Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares?
*/
--R1:
SELECT count(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

/* Desafio 2
Quantas pessoas temos com o sobrenome que inica com a letra P?
*/
--R2:
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

/* Desafio 3
Em quantas cidades únicas estão cadastrados nossos clientes?
*/
--R3:
SELECT COUNT(DISTINCT City)
FROM Person.Address

/* Desafio 4
Quais são as cidades únicas que temos cadastrados em nosso sistema?
*/
--R4:
SELECT DISTINCT City
FROM Person.Address

/* Desafio 5
Quais produtos vermelhos tem preço entre 500 a 1000 dolares?
*/
--R5:
SELECT *
FROM Production.Product
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000

/* Desafio 6
Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/
--R6:
SELECT count (*)
FROM Production.Product
WHERE Name LIKE '_%road%_'