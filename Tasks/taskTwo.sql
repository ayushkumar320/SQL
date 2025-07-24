-- Task two

-- The client provides a list of their chai offerings and wants you to insert the following data into the database:
-- - Masala Chai – ₹30 – Spiced – Available
-- - Green Chai – ₹25 – Herbal – Available
-- - Black Chai – ₹20 – Classic – Available
-- - Iced Chai – ₹35 – Cold – Not Available
-- - Oolong Chai – ₹40 – Specialty – Available

INSERT INTO chai_store (
  chai_name, price, chai_type, available
) VALUES 
  ('Masala Chai', 30.00, 'Spiced', TRUE),
  ('Green Chai', 25.00, 'Herbal', TRUE),
  ('Black Chai', 20.00, 'Classic', TRUE),
  ('Iced Chai', 35.00, 'Cold', FALSE),
  ('Oolong Chai', 40.00, 'Specialty', TRUE);