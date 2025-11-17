use amazon_database;
SELECT * FROM amazon_sale_report LIMIT 10;
SHOW TABLES;

###  A.Basic SQL Queries (SELECT, WHERE, ORDER BY) 

-- A2. Top 10 highest value orders
SELECT
    `Order ID`,
    `Date`,
    Category,
    Amount,
    `ship-state`
FROM amazon_sale_report
WHERE Amount IS NOT NULL
ORDER BY Amount DESC
LIMIT 10;

