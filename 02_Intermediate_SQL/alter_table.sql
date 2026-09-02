-- =========================================================
-- SQL LEARNING - ALTER TABLE
-- =========================================================

USE employee;

-- =========================================================
-- ADD COLUMN
-- =========================================================

ALTER TABLE employees
ADD COLUMN email VARCHAR(150);

-- Check structure
DESCRIBE employees;

-- =========================================================
-- MODIFY COLUMN
-- =========================================================

ALTER TABLE employees
MODIFY COLUMN name VARCHAR(100) NOT NULL;

-- =========================================================
-- RENAME COLUMN
-- =========================================================

ALTER TABLE employees
RENAME COLUMN email TO email_address;

-- =========================================================
-- DROP COLUMN
-- =========================================================

-- Uncomment only if you want to delete the column.

-- ALTER TABLE employees
-- DROP COLUMN email_address;

-- =========================================================
-- ADD DEFAULT VALUE
-- =========================================================

ALTER TABLE employees
ADD COLUMN status VARCHAR(20) DEFAULT 'Active';

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Add phone_number column.

-- 2. Add date_of_joining column.

-- 3. Modify city column.

-- 4. Rename salary column to monthly_salary.

-- 5. Add a default status of 'Active'.

-- =========================================================
-- IMPORTANT
-- =========================================================
-- ALTER TABLE changes the structure of an existing table.