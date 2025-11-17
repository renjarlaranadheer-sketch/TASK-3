##FULL OUTER JOIN (MySQL workaround)

## MySQL doesn't support FULL OUTER JOIN → But we can simulate it:

##  Example: All categories OR orders 

SELECT
    a.Category,
    a.Amount,
    c.department
FROM amazon_sale_report a
LEFT JOIN category_info c
    ON a.Category = c.Category

UNION

SELECT
    a.Category,
    a.Amount,
    c.department
FROM amazon_sale_report a
RIGHT JOIN category_info c
    ON a.Category = c.Category;
