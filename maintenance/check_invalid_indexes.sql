-- Find user indexes never scanned (potential candidates for removal)
SELECT
  schemaname,
  relname   AS table_name,
  indexrelname AS index_name,
  idx_scan
FROM pg_stat_user_indexes
WHERE idx_scan = 0
ORDER BY relname;
