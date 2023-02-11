-- Between � usado para encontrar o valor entre um valor m�nimo e um valor m�ximo.
-- Mostra os produtos que est�o com pre�o entre 1000 e 1500 dolares.
SELECT *
FROM Production.Product
WHERE ListPrice between 1000 and 1500

-- Mostra os produtos que n�o est�o com pre�o entre 1000 e 1500 dolares.
SELECT *
FROM Production.Product
WHERE ListPrice NOT between 1000 and 1500

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate