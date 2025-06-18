-- Thoroughly vacuum and analyze key tables
VACUUM (VERBOSE, ANALYZE)
  categories,
  customers,
  products,
  orders,
  order_items,
  inventory_transactions,
  reviews,
  suppliers,
  promotions,
  product_promotions;
