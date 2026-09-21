-- SQL Studies
-- Topic: Aggregate Functions


-- Exercise 1
-- Count the number of products
SELECT COUNT(*) AS quantidade_produtos
FROM produtos;


-- Exercise 2
-- Find the highest product price
SELECT MAX(preco) AS maior_preco
FROM produtos;


-- Exercise 3
-- Find the lowest product price
SELECT MIN(preco) AS menor_preco
FROM produtos;


-- Exercise 4
-- Calculate the average product price
SELECT AVG(preco) AS preco_medio
FROM produtos;


-- Exercise 5
-- Calculate the total stock
SELECT SUM(estoque) AS estoque_total
FROM produtos;
