-- Flip the discontinued flag on a product
UPDATE products
SET discontinued = NOT discontinued,
    updated_at   = NOW()
WHERE product_id = 3;
