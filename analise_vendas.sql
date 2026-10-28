/*
Projeto: Análise de Vendas Superstore
Ferramenta: SQL Server
Objetivo: Analisar faturamento, lucro, produtos,
categorias, descontos e evolução das vendas.
*/

USE SuperstoreDB;
GO

-- 1. Conferir o total de registros
SELECT COUNT(*) AS TotalRegistros
FROM dbo.Superstore_Final3;
GO

-- 2. Indicadores gerais de vendas
SELECT
    COUNT(*) AS TotalRegistros,
    SUM(Sales) AS FaturamentoTotal,
    SUM(Profit) AS LucroTotal,
    SUM(Quantity) AS QuantidadeTotalVendida,
    AVG(Discount) AS DescontoMedio
FROM dbo.Superstore_Final3;
GO

-- 3. Faturamento e lucro por categoria
SELECT
    Category AS Categoria,
    COUNT(*) AS TotalRegistros,
    SUM(Quantity) AS QuantidadeVendida,
    SUM(Sales) AS FaturamentoTotal,
    SUM(Profit) AS LucroTotal,
    CAST(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100
        AS DECIMAL(10,2)
    ) AS MargemLucroPercentual
FROM dbo.Superstore_Final3
GROUP BY Category
ORDER BY FaturamentoTotal DESC;
GO

-- 4. Top 10 produtos mais lucrativos
SELECT TOP 10
    [Product Name] AS Produto,
    Category AS Categoria,
    SUM(Quantity) AS QuantidadeVendida,
    SUM(Sales) AS FaturamentoTotal,
    SUM(Profit) AS LucroTotal
FROM dbo.Superstore_Final3
GROUP BY
    [Product Name],
    Category
ORDER BY LucroTotal DESC;
GO

-- 5. Top 10 produtos com maior prejuízo
SELECT TOP 10
    [Product Name] AS Produto,
    Category AS Categoria,
    SUM(Quantity) AS QuantidadeVendida,
    SUM(Sales) AS FaturamentoTotal,
    SUM(Profit) AS LucroTotal
FROM dbo.Superstore_Final3
GROUP BY
    [Product Name],
    Category
HAVING SUM(Profit) < 0
ORDER BY LucroTotal ASC;
GO

-- 6. Análise de faturamento e lucro por desconto
SELECT
    Discount AS Desconto,
    COUNT(*) AS TotalRegistros,
    SUM(Sales) AS FaturamentoTotal,
    SUM(Profit) AS LucroTotal,
    CAST(
        SUM(Profit) / NULLIF(SUM(Sales), 0) * 100
        AS DECIMAL(10,2)
    ) AS MargemLucroPercentual
FROM dbo.Superstore_Final3
GROUP BY Discount
ORDER BY Discount;
GO