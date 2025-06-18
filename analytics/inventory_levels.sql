-- Current stock and total sold per product
SELECT
  p.product_id,
  p.product_name,
  p.stock_quantity,
  COALESCE(SUM(
    CASE WHEN it.transaction_type='SALE' THEN -it.quantity_changed ELSE 0 END
  ),0) AS total_sold
FROM products p
LEFT JOIN inventory_transactions it ON it.product_id = p.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY p.stock_quantity ASC;
