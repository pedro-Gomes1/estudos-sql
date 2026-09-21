-- ============================================================
-- SQL INNER JOIN
-- Exercises completed during the INNER JOIN lesson
-- ============================================================


-- ============================================================
-- TASK 1
-- ============================================================

SELECT
    c.nome,
    p.valor
FROM clientes c
JOIN pedidos p
    ON c.id_cliente = p.id_cliente;


-- ============================================================
-- TASK 2
-- Filter orders with a value greater than 500
-- ============================================================

SELECT
    c.nome,
    p.valor
FROM clientes c
JOIN pedidos p
    ON c.id_cliente = p.id_cliente
WHERE p.valor > 500;


-- ============================================================
-- TASK 3
-- Calculate the total amount spent by each customer
-- ============================================================

SELECT
    c.nome,
    SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome;


-- ============================================================
-- TASK 4
-- Display customers whose total spending is greater than 1000
-- ============================================================

SELECT
    c.nome,
    SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome
HAVING SUM(p.valor) > 1000;


-- ============================================================
-- INTERVIEW CHALLENGE
-- Display the customer name, product name,
-- and order value.
-- ============================================================

SELECT
    c.nome,
    p.nome_produto,
    pe.valor
FROM clientes c
JOIN pedidos pe
    ON c.id_cliente = pe.id_cliente
JOIN produtos p
    ON pe.id_produto = p.id_produto;

-- ============================================================
-- SQL JOINs
-- Exercises completed during the JOINs lesson
-- ============================================================


-- ============================================================
-- TASK 1
-- List all customers and their orders.
-- Customers without orders should also be displayed.
-- ============================================================

SELECT
    c.nome,
    p.valor
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente;


-- ============================================================
-- TASK 2
-- Find customers who have never placed an order.
-- ============================================================

SELECT
    c.nome
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;


-- ============================================================
-- TASK 3
-- Calculate the total amount spent by each customer.
-- Customers without orders should have a total of 0.
-- ============================================================

SELECT
    c.nome,
    COALESCE(SUM(p.valor), 0) AS total_gasto
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome;


-- ============================================================
-- INTERVIEW CHALLENGE
-- Find customers who have never placed an order
-- and display their names and cities.
-- ============================================================

SELECT
    c.nome,
    c.cidade
FROM clientes c
LEFT JOIN pedidos p
    ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;
