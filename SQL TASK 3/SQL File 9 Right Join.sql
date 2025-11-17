## RIGHT JOIN Examples (all rows from right table)
###  Example 1: Show all categories even if no orders exist

SELECT
    c.Category,
    c.department,
    COUNT(a.`Order ID`) AS total_orders
FROM amazon_sale_report a
RIGHT JOIN category_info c
    ON a.Category = c.Category
GROUP BY c.Category, c.department;
