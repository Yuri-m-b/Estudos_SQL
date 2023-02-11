-- Like encontra o valor na tabela com informa��o pela metade

-- Exemplo onde se deseja pegar o nome de uma pessoa que come�a com ovi
-- A posi��o do "%" � importante para decidir se o que est� sendo procurado est� no come�o
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
WHERE FirstName LIKE '%ro_' -- Tr�s mais uma letra ap�s o O... Aaron/Cameron/Roy