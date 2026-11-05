-- Name: Sahil Raza | Roll No: 2410303422 | Student ID: BCS2024382 | Assignment 15
-- Assignment 15: Indexes and Adding a Row
-- Aim: Create an index on a column, read rows by that column, and add a row.

-- Clean-up (so this file can be run again and again)
DROP TABLE IF EXISTS customer;

-- Set-up (given in the assignment, not a task)
CREATE TABLE customer (customer_id INT PRIMARY KEY, name VARCHAR(30) NOT NULL, city VARCHAR(20));
INSERT INTO customer (customer_id, name, city) VALUES (1, 'Kiran', 'Kochi'), (2, 'Deepak', 'Delhi'), (3, 'Lata', 'Mumbai'), (4, 'Asha', 'Delhi');

-- Task 1: Create an index named idx_city on the city column of the customer table.
CREATE INDEX idx_city ON customer (city);

-- Task 2: Show the name of the customers who live in Delhi, sorted by name.
SELECT name FROM customer WHERE city = 'Delhi' ORDER BY name;

-- Task 3: Add a customer with customer_id 5, name Arjun and city Pune with one INSERT.
INSERT INTO customer (customer_id, name, city) VALUES (5, 'Arjun', 'Pune');
SELECT * FROM customer;
