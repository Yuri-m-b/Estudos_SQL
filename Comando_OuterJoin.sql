-- Quero descobrir quais pessoas tem um cart�o de credito registrado
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
