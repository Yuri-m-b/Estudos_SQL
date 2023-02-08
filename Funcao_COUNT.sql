-- Conta a quantidade de linhas da tabela person.Person
SELECT COUNT(*)
FROM person.Person

-- Conta a quantidade de títulos diferentes da tabela person.Person
SELECT COUNT(Title)
FROM person.Person

-- Conta a quantidade de títulos ÚNICOS diferentes da tabela person.Person
SELECT COUNT(DISTINCT Title)
FROM person.Person

/*DESAFIO 1
Eu quero saber quantos produtos temos cadastrados em nossa tabela de produtos.
(production.product)
*/
--Resposta 1: 504
SELECT COUNT(ProductID)
FROM Production.Product

/*DESAFIO 2
Eu quero saber quantos tamanhos de produtos temos cadastrados em nossa tabela.
*/
--Resposta 2: 18
SELECT COUNT(DISTINCT Size)
FROM Production.Product

/*DESAFIO 3
Eu quero saber quantos tamanhos de produtos temos cadastrados em nossa tabela.
*/
--Resposta 3: 211
SELECT COUNT(Size)
FROM Production.Product