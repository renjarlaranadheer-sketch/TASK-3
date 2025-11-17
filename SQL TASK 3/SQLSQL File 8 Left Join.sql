###  LEFT JOIN Examples (all orders + matching table)
###  Example : Orders even if category missing


SELECT
    a.Category,
    a.Amount,
    c.department
FROM amazon_sale_report a
LEFT JOIN category_info c
    ON a.Category = c.Category
ORDER BY a.Category;
