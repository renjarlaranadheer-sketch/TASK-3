###  D. Subqueries 

-- D1. Orders above overall average shipped amount
SELECT
    `Order ID`,
    Amount,
    `ship-state`
FROM amazon_sale_report
WHERE Status LIKE 'Shipped%'
  AND Amount > (
        SELECT AVG(Amount)
        FROM amazon_sale_report
        WHERE Status LIKE 'Shipped%'
    )
ORDER BY Amount DESC;