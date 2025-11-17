CREATE TABLE IF NOT EXISTS category_info (
    Category VARCHAR(100) PRIMARY KEY,
    department VARCHAR(100),
    gst_rate INT
);

INSERT IGNORE INTO category_info VALUES
('Kitchen', 'Home', 12),
('Electronics', 'Tech', 18),
('Clothing', 'Fashion', 5),
('Grocery', 'Food', 5),
('Beauty', 'Cosmetics', 18);
   
   
   ## INNER JOIN Examples (shows only matching rows)
   
   
SELECT
    a.`Order ID`,
    a.`ship-state`,
    r.region
FROM amazon_sale_report a
INNER JOIN state_region r
    ON a.`ship-state` = r.state
WHERE a.Status LIKE 'Shipped%';

