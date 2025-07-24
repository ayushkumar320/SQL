-- Adds a new integer column named 'stock' to the 'products' table, setting its default value to 0.
ALTER TABLE products ADD stock INT DEFAULT 0;

-- Modifies the data type of the 'price' column in the 'products' table to DECIMAL(12, 2), allowing for 12 total digits with 2 after the decimal point. Note: Syntax may vary across different SQL databases (e.g., `MODIFY COLUMN` in MySQL).
ALTER TABLE products ALTER COLUMN price TYPE DECIMAL(12, 2);

-- Deletes the 'category' column from the 'products' table.
ALTER TABLE products
DROP COLUMN category;

-- Permanently deletes the entire 'products' table, including its structure and all data. This action cannot be undone. 🗑️
DROP TABLE products;

-- Quickly removes all rows (data) from the 'products' table, but keeps the table's structure intact for future use. This is generally faster than a DELETE statement for clearing a whole table.
TRUNCATE TABLE products;

-- Renames the 'products' table to 'inventory'.
ALTER TABLE products RENAME TO inventory;

-- Renames the 'stock' column to 'quantity' within the 'inventory' table.
ALTER TABLE inventory
RENAME COLUMN stock TO quantity;