-- Data control language

-- Grant SELECT permission on the 'products' table to the user 'hitesh'.
GRANT SELECT ON products TO hitesh;

-- Grant INSERT and UPDATE permissions on the 'products' table to the user 'sales'.
GRANT INSERT, UPDATE ON products TO sales;

-- Revoke SELECT permission on the 'products' table from the user 'hitesh'.
REVOKE SELECT ON products FROM hitesh;

-- Revoke INSERT and UPDATE permissions on the 'products' table from the user 'sales'.
REVOKE INSERT, UPDATE ON products FROM sales;
