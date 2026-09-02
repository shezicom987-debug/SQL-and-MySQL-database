-- =========================================================
-- SQL LEARNING - SELF JOIN
-- =========================================================

USE employee;

-- Add manager_id to employees if it doesn't exist.

-- ALTER TABLE employees
-- ADD COLUMN manager_id INT;

-- =========================================================
-- SELF JOIN
-- =========================================================
-- A SELF JOIN joins a table with itself.

SELECT
    e.name AS employee,
    m.name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.id;

-- =========================================================
-- REAL-LIFE USE
-- =========================================================
-- Employee table:
--
-- Employee -> Manager
--
-- The manager is also an employee.
--
-- Therefore, the employees table can be joined
-- with itself.

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Display employee and manager names.

-- 2. Find employees who have no manager.

-- 3. Find employees working under a specific manager.