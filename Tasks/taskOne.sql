-- First task

-- Create a table called chai_store with the following columns:
-- - id: A unique identifier for each chai (auto-incrementing).
-- - chai_name: The name of the chai (e.g., "Masala Chai", "Green Chai").
-- - price: The price of each chai.
-- - chai_type: Type of chai (e.g., "Spiced", "Herbal", "Cold").
-- - available: Boolean value indicating if the chai is currently available or not.

CREATE TABLE chai_store (
  id SERIAL PRIMARY KEY,
  chai_name VARCHAR(50),
  price DECIMAL(5, 2),
  chai_type VARCHAR(50),
  available BOOLEAN
);