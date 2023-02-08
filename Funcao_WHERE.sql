/*
OPERADOR - DESCRIÇÃO
=			IGUAL
>			MAIOR QUE
<			MENOR QUE
>=			MAIOR QUE OU IGUAL
<=			MENOR QUE OU IGUAL
<>			DIFERENTE DE
AND			OPERADOR LÓGICO E
OR			OPERADOR LÓGICO OU
*/
-- Retorna a única informação da tabela que tem como sobrenome = miller E nome = anna
SELECT *
FROM person.Person
WHERE LastNAME = 'miller' AND FirstName = 'anna'

-- Retorna a única informação da tabela que tem como cor = blue OU cor = preta
SELECT *
FROM production.Product
WHERE color = 'blue' OR color ='black'

-- Retorna a única informação da tabela que tem como preço MAIOR que 1500
SELECT *
FROM production.Product
WHERE ListPrice > 1500

-- Retorna a única informação da tabela que tem como preço MAIOR que 1500 E MENOR que 5000
SELECT *
FROM production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

-- Retorna a única informação da tabela que seja qualquer cor DIFERENTE de red
SELECT *
FROM production.Product
WHERE color <> 'red'

/* DESAFIO 3:
A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg
mas não mais que 700kg para inspeção
*/
--Resposta 3:
SELECT Name
FROM production.Product
WHERE Weight > 500 AND Weight < 700

/* DESAFIO 4:
Foi pedido pelo marketing uma relação de todos os empregados(employees) que são casados
e são asalariados(salaried)
*/
--Resposta 4:
SELECT *
FROM HumanResources.Employee
WHERE SalariedFlag = 1 AND MaritalStatus = 'M'

/* DESAFIO 5:
Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos
enviar uma cobrança!
*/
--Resposta 5:
SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'
-- BusinessEntityID = 26
SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26
-- Email = peter0@adventure-works.com