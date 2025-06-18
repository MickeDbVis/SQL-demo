-- Increase a product’s price by 10%
UPDATE products
SET unit_price = unit_price * 1.10,
    updated_at  = NOW()
WHERE product_id = 1;
