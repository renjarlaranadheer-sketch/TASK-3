-- B1. Total revenue & average order value by state
SELECT
    `ship-state` AS state,
    COUNT(*)     AS total_orders,
    SUM(Amount)  AS total_revenue,
    AVG(Amount)  AS avg_order_value
FROM amazon_sale_report
WHERE Status LIKE 'Shipped%'
GROUP BY `ship-state`
ORDER BY total_revenue DESC;