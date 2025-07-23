### You've been approached by a client who runs a small chai store and wants to set up a simple database to manage their chai offerings. The client has provided the following requirements:
 
##### Database Setup:
Create a new database named chai_store_db for managing chai products.
~~~~sql
create DATABASE chai_store_db;
~~~~

##### Chai Table:
Create a table called chai_store with the following columns:
- id: A unique identifier for each chai (auto-incrementing).
- chai_name: The name of the chai (e.g., "Masala Chai", "Green Chai").
- price: The price of each chai.
- chai_type: Type of chai (e.g., "Spiced", "Herbal", "Cold").
- available: Boolean value indicating if the chai is currently available or not.
 
~~~~sql
create table chai_store(
id serial primary key,
chai_name varchar(50),
price decimal(5,2),
chai_type varchar(50),
available boolean
);
~~~~
 
##### Initial Data Insertion:
The client provides a list of their chai offerings and wants you to insert the following data into the database:
- Masala Chai – ₹30 – Spiced – Available
- Green Chai – ₹25 – Herbal – Available
- Black Chai – ₹20 – Classic – Available
- Iced Chai – ₹35 – Cold – Not Available
- Oolong Chai – ₹40 – Specialty – Available
 
~~~~ sql
insert into chai_store(chai_name, price, chai_type, available) 
values
    ('Masala Chai', 30.00, 'Spiced', true),
    ('Green Chai', 25.00, 'Herbal', true),
    ('Black Chai', 20.00, 'Classic', true),
    ('Iced Chai', 35.00, 'Cold', false),
    ('Oolong Chai', 40.00, 'Specialty', true);
~~~~ 
 
##### Data Queries:
The client needs some reports:
- Display all chai names and prices, using column aliases like “Chai Name” and “Cost in INR”.
~~~~sql
select chai_name as "Chai Name", 
price as "Cost in INR" from chai_store;
~~~~
 
- Find all chai varieties that have the word “Chai” in their name.
~~~~sql
select * from chai_store
where chai_name like '%Chai%';
~~~~
 
- List all chai varieties that cost less than ₹30.
~~~~sql
select * from chai_store 
where price < 30;
~~~~
 
- Show chai varieties sorted by price from highest to lowest.
~~~~sql
select * from chai_store 
order by price desc;
~~~~
 
##### Data Updates:
- The client wants to update the price of "Iced Chai" to ₹38 and mark it as available.
~~~~sql
update chai_store
set price = 38.00, available = true
where chai_name = 'Iced Chai';
~~~~
 
##### Data Deletions:
- The client decides to discontinue "Black Chai" and requests its removal from the database.
~~~~sql
delete from chai_store
where chai_name = 'Black Chai';
~~~~