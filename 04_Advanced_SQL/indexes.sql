-- =========================================================
-- SQL LEARNING - INDEXES
-- =========================================================

USE employee;

-- =========================================================
-- CREATE INDEX
-- =========================================================

CREATE INDEX idx_employee_name
ON employees(name);

-- Create index on city
CREATE INDEX idx_employee_city
ON employees(city);

-- =========================================================
-- SHOW INDEXES
-- =========================================================

SHOW INDEX FROM employees;

-- =========================================================
-- DROP INDEX
-- =========================================================

-- DROP INDEX idx_employee_name
-- ON employees;

-- =========================================================
-- WHY INDEXES?
-- =========================================================
-- Indexes can make searching/filtering faster.
--
-- Example:
--
-- SELECT *
-- FROM employees
-- WHERE name = 'Ali';
--
-- An index on name can improve lookup performance,
-- especially when a table contains many rows.

-- =========================================================
-- IMPORTANT
-- =========================================================
-- Indexes are not always beneficial.
--
-- They consume storage and can add overhead to
-- INSERT, UPDATE and DELETE operations.

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Create an index on salary.

-- 2. Create an index on department_id.

-- 3. View all indexes.

-- 4. Remove an index.