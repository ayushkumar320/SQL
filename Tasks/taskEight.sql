-- The client wants to update the price of "Iced Chai" to ₹38 and mark it as available.

UPDATE chai_store
SET price = 38.00, available = TRUE
WHERE chai_name = 'Iced Chai';