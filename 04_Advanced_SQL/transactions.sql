-- =========================================================
-- SQL LEARNING - TRANSACTIONS
-- =========================================================

USE employee;

-- =========================================================
-- TRANSACTION
-- =========================================================
-- A transaction is a group of SQL operations treated
-- as one unit of work.

-- =========================================================
-- START TRANSACTION
-- =========================================================

START TRANSACTION;

UPDATE employees
SET salary = salary + 5000
WHERE id = 1;

-- Check the change
SELECT *
FROM employees
WHERE id = 1;

-- =========================================================
-- COMMIT
-- =========================================================

COMMIT;

-- COMMIT permanently saves the transaction.

-- =========================================================
-- ROLLBACK EXAMPLE
-- =========================================================

START TRANSACTION;

UPDATE employees
SET salary = salary + 10000
WHERE id = 2;

SELECT *
FROM employees
WHERE id = 2;

-- Undo the change
ROLLBACK;

-- Check again
SELECT *
FROM employees
WHERE id = 2;

-- =========================================================
-- REAL-LIFE EXAMPLE
-- =========================================================
-- Bank transfer:
--
-- Account A: -1000
-- Account B: +1000
--
-- Both operations should succeed.
-- If something goes wrong, the transaction can be
-- rolled back.

-- =========================================================
-- IMPORTANT COMMANDS
-- =========================================================
-- START TRANSACTION
-- COMMIT
-- ROLLBACK

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Increase one employee's salary and COMMIT it.

-- 2. Increase another employee's salary and ROLLBACK it.

-- 3. Observe the difference between COMMIT and ROLLBACK.