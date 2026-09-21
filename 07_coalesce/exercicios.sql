-- SQL Studies
-- Topic: COALESCE
-- Handling NULL values


-- Exercise 1
-- Return the discount value
SELECT desconto
FROM produtos;


-- Exercise 2
-- Replace NULL discounts with 0
SELECT
    COALESCE(desconto, 0) AS desconto
FROM produtos;


-- Exercise 3
-- Display the product name and replace NULL discounts with 0
SELECT
    nome,
    COALESCE(desconto, 0) AS desconto
FROM produtos;
