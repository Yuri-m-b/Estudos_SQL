-- Seleciona a coluna FirstName da tabela person.Person
-- por�m removendo os nomes duplicados
SELECT DISTINCT FirstName
FROM person.Person;

/* Desafio 2:
Quantos sobrenomes �nicos temos na tabela person.person
*/
--Resposta: 1206
SELECT DISTINCT LastName
FROM person.Person;
