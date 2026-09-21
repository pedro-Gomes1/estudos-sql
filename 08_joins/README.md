# JOINs

This section contains exercises focused on combining data from multiple relational tables.

## Objective

The objective is to understand how tables can be related using keys and how `JOIN` operations allow information from different tables to be queried together.

## Exercises

### Exercise 1 — Customers and orders

**Task:**
Combine customers and orders to display customer information together with order data.

**Objective:**
Understand how related tables can be combined using a common key.

### Exercise 2 — Filter orders

**Task:**
Return orders whose value is greater than a specified amount.

**Objective:**
Practice combining `JOIN` with filtering conditions.

### Exercise 3 — Total amount per customer

**Task:**
Calculate the total order value for each customer.

**Objective:**
Practice combining `JOIN`, `SUM()` and `GROUP BY`.

### Exercise 4 — Filter customers by total

**Task:**
Return customers whose total order value is greater than a specified amount.

**Objective:**
Practice combining `JOIN`, `GROUP BY`, `SUM()` and `HAVING`.

### Exercise 5 — Customers without orders

**Task:**
Identify customers who do not have any associated orders.

**Objective:**
Understand how `LEFT JOIN` and `IS NULL` can be used to identify records without a matching relationship.

### Exercise 6 — Handling customers without orders

**Task:**
Calculate the total amount spent by each customer, returning `0` when the customer has no orders.

**Objective:**
Combine `LEFT JOIN`, `SUM()` and `COALESCE()` to correctly represent missing relationships.

### Exercise 7 — Customers, orders and products

**Task:**
Combine customers, orders and products to retrieve information from the three related tables.

**Objective:**
Practice working with multiple relationships in a relational database.

### What I practiced

* `INNER JOIN`
* `LEFT JOIN`
* `ON`
* Table aliases
* Primary and foreign key relationships
* `GROUP BY`
* `SUM()`
* `HAVING`
* `IS NULL`
* `COALESCE()`
* Multiple-table queries
