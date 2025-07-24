-- The client decides to discontinue "Black Chai" and requests its removal from the database.

DELETE FROM chai_store
WHERE chai_name = 'Black Chai';

SELECT * FROM chai_store