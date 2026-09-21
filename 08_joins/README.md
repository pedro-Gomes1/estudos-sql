# SQL JOINs

This folder contains the SQL exercises completed during the JOIN lessons.

The exercises focused on combining data from related tables using `INNER JOIN` and `LEFT JOIN`, as well as applying filtering, aggregation, grouping, and multiple table relationships.

---

## 📚 Tables Used

The exercises use three related tables:

### `clientes`

Contains customer information.

Main columns used:

* `id_cliente`
* `nome`
* `cidade`

### `pedidos`

Contains order information.

Main columns used:

* `id_pedido`
* `id_cliente`
* `id_produto`
* `valor`

### `produtos`

Contains product information.

Main columns used:

* `id_produto`
* `nome_produto`

The relationships between the tables are:

```text
clientes.id_cliente
        ↓
pedidos.id_cliente
        ↓
pedidos.id_produto
        ↓
produtos.id_produto
```

---

# 🎯 Learning Objectives

The main objectives of these exercises were to:

* Understand how SQL JOINs work;
* Combine data from different tables;
* Understand relationships between tables;
* Use the `ON` clause;
* Filter joined data using `WHERE`;
* Identify records without matching relationships;
* Use `IS NULL` with `LEFT JOIN`;
* Calculate totals using aggregate functions;
* Use `GROUP BY`;
* Filter aggregated results using `HAVING`;
* Use `COALESCE` to handle `NULL` values;
* Join multiple tables in a single query.

---

# 🔗 INNER JOIN Exercises

The first set of exercises focused on `INNER JOIN`.

`INNER JOIN` returns only records that have a matching relationship between the tables.

## Task 1 — Customers and Orders

The objective was to display:

* Customer name;
* Order value.

### Concepts practiced

* `INNER JOIN`
* `ON`
* Table aliases
* Relationships between tables

---

## Task 2 — Orders Above 500

The objective was to display customers and orders with a value greater than `500`.

### Concepts practiced

* `INNER JOIN`
* `WHERE`
* Comparison operators
* Filtering joined data

---

## Task 3 — Total Spent by Customer

The objective was to calculate the total amount spent by each customer.

The query used `SUM()` together with `GROUP BY`.

### Concepts practiced

* `SUM()`
* `GROUP BY`
* Aggregation
* `INNER JOIN`

---

## Task 4 — Customers Above a Spending Threshold

The objective was to display customers whose total spending was greater than `1000`.

The query used:

```sql
HAVING SUM(p.valor) > 1000
```

### Concepts practiced

* `SUM()`
* `GROUP BY`
* `HAVING`
* Aggregate filtering
* `INNER JOIN`

---

# 💼 INNER JOIN Interview Challenge

The challenge required combining three tables to display:

* Customer name;
* Product name;
* Order value.

The query used multiple `INNER JOIN`s:

```text
clientes
    ↓
pedidos
    ↓
produtos
```

### Concepts practiced

* Multiple `INNER JOIN`s
* Relationships between multiple tables
* Foreign keys
* Table aliases
* Queries involving multiple tables

---

# 🔗 LEFT JOIN Exercises

The second set of exercises focused on `LEFT JOIN`.

Unlike `INNER JOIN`, `LEFT JOIN` keeps all records from the left table, even when there is no matching record in the right table.

---

## Task 1 — Customers and Orders

The objective was to display customers and their order values, including customers who did not have orders.

The query used:

```sql
LEFT JOIN
```

to keep all customers in the result.

### Concepts practiced

* `LEFT JOIN`
* `ON`
* Table aliases
* Relationships between tables
* Unmatched records

---

## Task 2 — Customers Without Orders

The objective was to identify customers who had never placed an order.

The query used:

```sql
WHERE p.id_pedido IS NULL
```

This condition identifies customers without a matching order.

### Concepts practiced

* `LEFT JOIN`
* `IS NULL`
* Filtering unmatched records

---

## Task 3 — Total Spent by Customer

The objective was to calculate the total amount spent by each customer, including customers who had no orders.

The query used:

```sql
COALESCE(SUM(p.valor), 0)
```

so customers without orders would receive a total of `0`.

### Concepts practiced

* `LEFT JOIN`
* `SUM()`
* `COALESCE()`
* `GROUP BY`
* Aggregation with JOINs
* Handling `NULL` values

---

# 💼 LEFT JOIN Interview Challenge

The challenge required identifying customers who had never placed an order and displaying:

* Customer name;
* Customer city.

The query combined:

```text
LEFT JOIN
+
WHERE
+
IS NULL
```

### Concepts practiced

* `LEFT JOIN`
* `WHERE`
* `IS NULL`
* Table aliases
* Identifying unmatched records

---

# 🧠 Key Concepts

## INNER JOIN

`INNER JOIN` returns only records that have a matching relationship between the tables.

```sql
SELECT
    table1.column,
    table2.column
FROM table1
JOIN table2
    ON table1.id = table2.table1_id;
```

---

## LEFT JOIN

`LEFT JOIN` returns all records from the left table and the matching records from the right table.

```sql
SELECT
    table1.column,
    table2.column
FROM table1
LEFT JOIN table2
    ON table1.id = table2.table1_id;
```

If there is no matching record in the right table, the columns from that table return `NULL`.

---

## WHERE

`WHERE` filters individual records.

Example:

```sql
WHERE p.valor > 500
```

---

## IS NULL

`IS NULL` can be used with `LEFT JOIN` to identify records that do not have a corresponding match.

Example:

```sql
WHERE p.id_pedido IS NULL
```

---

## SUM()

`SUM()` calculates the total of a numeric column.

Example:

```sql
SUM(p.valor)
```

---

## GROUP BY

`GROUP BY` groups records so that aggregate functions can be calculated for each group.

Example:

```sql
GROUP BY c.id_cliente, c.nome
```

---

## HAVING

`HAVING` filters grouped results after aggregation.

Example:

```sql
HAVING SUM(p.valor) > 1000
```

---

## COALESCE

`COALESCE` can be used to replace `NULL` with another value.

Example:

```sql
COALESCE(SUM(p.valor), 0)
```

This allows customers without orders to have a total spending value of `0`.

---

# 📊 Skills Practiced

Throughout these exercises, I practiced:

* `INNER JOIN`
* `LEFT JOIN`
* `ON`
* `WHERE`
* `IS NULL`
* `SUM()`
* `COALESCE()`
* `GROUP BY`
* `HAVING`
* Multiple JOINs
* Table aliases
* Relational database concepts
* Filtering data
* Data aggregation
* Handling `NULL` values
* Working with multiple related tables

---

# 📈 Learning Progress

These exercises represent an important step from querying individual tables to working with relationships between multiple tables.

The progression was:

```text
Basic JOIN
    ↓
JOIN + WHERE
    ↓
JOIN + SUM()
    ↓
JOIN + GROUP BY
    ↓
JOIN + GROUP BY + HAVING
    ↓
Multiple JOINs
    ↓
LEFT JOIN
    ↓
LEFT JOIN + IS NULL
    ↓
LEFT JOIN + SUM() + COALESCE()
```

This progression helped reinforce how different SQL concepts can be combined to solve increasingly complex database problems.

---

# 🚀 Next Steps

After completing these JOIN exercises, the next topics to practice are:

* Multiple JOINs with aggregations
* `GROUP BY` with multiple tables
* `HAVING` with JOINs
* Subqueries
* `CASE`
* Common Table Expressions (`CTE`)
* More complex relational database queries
