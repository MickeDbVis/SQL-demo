-- Revenue and orders during each promotion
SELECT
  pr.promotion_id,
  pr.promotion_name,
  SUM(oi.quantity * oi.unit_price) AS revenue_during_promo,
  COUNT(DISTINCT oi.order_id)      AS orders_during_promo
FROM promotions pr
JOIN product_promotions pp ON pp.promotion_id = pr.promotion_id
JOIN order_items oi         ON oi.product_id     = pp.product_id
JOIN orders o               ON o.order_id        = oi.order_id
WHERE o.order_date BETWEEN pr.start_date AND pr.end_date
GROUP BY pr.promotion_id, pr.promotion_name
ORDER BY revenue_during_promo DESC;
