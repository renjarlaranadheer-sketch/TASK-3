##--E. VIEWS (Create Views for Analysis)
### CREATE OR REPLACE VIEW v_daily_sales AS
SELECT
    STR_TO_DATE(`Date`, '%m-%d-%y') AS order_date,
    COUNT(*)    AS total_orders,
    SUM(Amount) AS total_revenue
FROM amazon_sale_report
WHERE Status LIKE 'Shipped%'
GROUP BY STR_TO_DATE(`Date`, '%m-%d-%y');

