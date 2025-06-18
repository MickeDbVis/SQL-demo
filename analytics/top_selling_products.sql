-- Top 10 products by units sold and revenue
SELECT
  p.product_id,
  p.product_name,
  SUM(oi.quantity)                    AS units_sold,
  SUM(oi.quantity * oi.unit_price)    AS revenue
FROM products p
JOIN order_items oi ON oi.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY units_sold DESC
LIMIT 10;
