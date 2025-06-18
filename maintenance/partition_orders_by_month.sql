-- Example: create a June-2025 partition of orders
CREATE TABLE orders_2025_06 PARTITION OF orders
  FOR VALUES FROM ('2025-06-01') TO ('2025-07-01');
