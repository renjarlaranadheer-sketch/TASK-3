-- B2. Category-wise sales
SELECT
    Category,
    COUNT(*)    AS total_orders,
    SUM(Amount) AS total_revenue,
    AVG(Amount) AS avg_order_value
FROM amazon_sale_report
WHERE Status LIKE 'Shipped%'
GROUP BY Category
ORDER BY total_revenue DESC;