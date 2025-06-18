-- Lifetime value (LTV) by customer
SELECT
  c.customer_id,
  c.first_name || ' ' || c.last_name AS customer_name,
  SUM(o.total_amount)                   AS lifetime_value
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
GROUP BY c.customer_id, customer_name
HAVING SUM(o.total_amount) > 0
ORDER BY lifetime_value DESC;
