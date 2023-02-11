-- Usado com o operador IN junto com WHERE, para verificar se um valor corresponde com qualquer valor
-- passado na lista de valores.

-- Retorna a lista onde businessentityID são 2,7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

-- Retorna a lista onde businessentityID NÃO são 2,7 e 13
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13)