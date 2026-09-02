-- =========================================================
-- SQL LEARNING - INNER JOIN
-- =========================================================

USE employee;

-- View both tables
SELECT * FROM employees;
SELECT * FROM departments;

-- INNER JOIN
SELECT
    e.id,
    e.name,
    e.salary,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

-- =========================================================
-- UNDERSTANDING
-- =========================================================
-- INNER JOIN returns only matching records
-- from both tables.

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Display employee name and department name.

-- 2. Display employee salary and department name.

-- 3. Find employees belonging to a particular department.

SELECT
    e.name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;