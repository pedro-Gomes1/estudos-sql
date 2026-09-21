-- SQL Studies
-- Topic: GROUP BY


-- Exercise 1
-- Display each product category
SELECT categoria
FROM produtos
GROUP BY categoria;


-- Exercise 2
-- Count products in each category
SELECT
    categoria,
    COUNT(*) AS quantidade_produtos
FROM produtos
GROUP BY categoria;


-- Exercise 3
-- Calculate the average price for each category
SELECT
    categoria,
    AVG(preco) AS preco_medio
FROM produtos
GROUP BY categoria;


-- Exercise 4
-- Calculate the total stock for each category
SELECT
    categoria,
    SUM(estoque) AS estoque_total
FROM produtos
GROUP BY categoria;


-- Exercise 5
-- Find the highest price in each category
SELECT
    categoria,
    MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria;
