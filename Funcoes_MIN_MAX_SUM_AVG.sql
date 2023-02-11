-- Funções que agregam ou combinam dados de uma tabela em 1 resultado só.
-- Retorna o valor total da coluna LineTotal
SELECT TOP 10 SUM(LineTotal) AS "Soma" -- "As" coloca um nome na coluna
FROM Sales.SalesOrderDetail
-- Retorna o menor valor da coluna LineTotal
SELECT TOP 10 MIN(LineTotal) AS "Menor" 
FROM Sales.SalesOrderDetail
-- Retorna o menor valor da coluna LineTotal
SELECT TOP 10 MAX(LineTotal) AS "Maior" 
FROM Sales.SalesOrderDetail
-- Retorna o menor valor da coluna LineTotal
SELECT TOP 10 AVG(LineTotal) AS "Media" 
FROM Sales.SalesOrderDetail