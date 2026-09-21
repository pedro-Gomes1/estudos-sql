-- SQL Studies
-- Topic: HAVING


-- Exercise 1
-- Return categories with more than 2 products
SELECT categoria
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;


-- Exercise 2
-- Return categories whose average price is greater than 500
SELECT categoria
FROM produtos
GROUP BY categoria
HAVING AVG(preco) > 500;


-- Exercise 3
-- Return categories whose total stock is greater than 10
SELECT categoria
FROM produtos
GROUP BY categoria
HAVING SUM(estoque) > 10;


-- Exercise 4
-- Return categories whose highest product price is greater than 1000
SELECT categoria
FROM produtos
GROUP BY categoria
HAVING MAX(preco) > 1000;

-- Interview Challenge
-- Return categories whose highest product price is greater than 1000

SELECT categoria
FROM produtos
GROUP BY categoria
HAVING MAX(preco) > 1000;
