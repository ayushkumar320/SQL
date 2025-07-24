-- Data maniuplation language

-- Insert a new product into the 'products' table
INSERT INTO products(
  name,
  price,
  stock
) VALUES (
  'TShirt',
  500.00,
  10
);

-- Update the price of the 'TShirt' product
UPDATE products
SET price = 800.00
WHERE name = 'TShirt';

-- Delete the 'TShirt' product from the 'products' table
DELETE FROM products
WHERE name = 'TShirt';

-- Select all data from the 'products' table
SELECT * FROM products;
