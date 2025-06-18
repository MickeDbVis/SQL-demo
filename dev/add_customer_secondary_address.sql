-- Add a secondary address field for customers
ALTER TABLE customers
ADD COLUMN secondary_address TEXT;
