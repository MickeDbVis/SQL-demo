-- Total orders and spend per customer
SELECT
  c.customer_id,
  c.first_name || ' ' || c.last_name AS customer_name,
  COUNT(o.order_id)      AS total_orders,
  SUM(o.total_amount)    AS total_spent
FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, customer_name
ORDER BY total_spent DESC;
