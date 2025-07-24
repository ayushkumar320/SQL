BEGIN;
INSERT INTO products (
  name,
  price,
  stock
) VALUES (
  'Jacket'
  5000.00,
  10
);
UPDATE inventory SET stock = stock - 5 
WHERE name = 'Jacket';
COMMIT;

BEGIN;

-- Create a savepoint
SAVEPOINT savepoint1;

-- Perform some operations
INSERT INTO products (name, price, stock)
VALUES ('Jacket', 5000.00, 10);

-- Rollback to the savepoint if needed
ROLLBACK TO savepoint1;
