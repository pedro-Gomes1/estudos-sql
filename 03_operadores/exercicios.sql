-- SQL Studies
-- Topic: Filtering Operators


-- Exercise 1
-- Products from the "eletrônicos" category
SELECT *
FROM produtos
WHERE categoria = 'eletrônicos';


-- Exercise 2
-- Products that are electronics and cost more than 500
SELECT *
FROM produtos
WHERE categoria = 'eletrônicos'
  AND preco > 500;


-- Exercise 3
-- Products that are electronics or furniture
SELECT *
FROM produtos
WHERE categoria = 'eletrônicos'
   OR categoria = 'móveis';


-- Exercise 4
-- Products belonging to one of the specified categories
SELECT *
FROM produtos
WHERE categoria IN ('eletrônicos', 'móveis');


-- Exercise 5
-- Products with prices between 500 and 1500
SELECT *
FROM produtos
WHERE preco BETWEEN 500 AND 1500;


-- Exercise 6
-- Products whose names contain "mouse"
SELECT *
FROM produtos
WHERE nome LIKE '%mouse%';
