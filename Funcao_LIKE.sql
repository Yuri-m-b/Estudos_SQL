-- Like encontra o valor na tabela com informação pela metade

-- Exemplo onde se deseja pegar o nome de uma pessoa que começa com ovi
-- A posição do "%" é importante para decidir se o que está sendo procurado está no começo
-- ou no final.
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%' -- nome da pessoa Ovidiu

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to' -- Nome da pessoa termina com to... Roberto/Alberto

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%' -- Nome da pessoa tem essa no meio... Vanessa

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_' -- Trás mais uma letra após o O... Aaron/Cameron/Roy