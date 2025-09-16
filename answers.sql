-- Assignment: Database Indexing and Optimization
-- File: answers.sql

-- Question 1: Drop an index
-- Remove the index named 'IdxPhone' from the 'customers' table.
-- Before dropping, ensure it is non-primary and not required by foreign keys.
DROP INDEX IdxPhone ON customers;

-- Question 2: Create user
-- Create a user 'bob'@'localhost' with password 'S$cu3r3!'.
-- Restrict login to 'localhost' only, following principle of least privilege.
CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';

-- Question 3: Grant privilege
-- Grant the INSERT privilege on the entire 'salesDB' database to 'bob'.
-- This allows bob to insert rows into any table in salesDB, but not other operations.
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';

-- Question 4: Change user password
-- Change the password for existing user 'bob'@'localhost' to 'P$55!23'.
-- Uses ALTER USER statement, which is preferred over deprecated SET PASSWORD.
ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';
