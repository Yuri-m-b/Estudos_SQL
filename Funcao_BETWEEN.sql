-- Between é usado para encontrar o valor entre um valor mínimo e um valor máximo.
-- Mostra os produtos que estão com preço entre 1000 e 1500 dolares.
SELECT *
FROM Production.Product
WHERE ListPrice between 1000 and 1500

-- Mostra os produtos que não estão com preço entre 1000 e 1500 dolares.
SELECT *
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate