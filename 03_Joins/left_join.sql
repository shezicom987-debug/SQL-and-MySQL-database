-- =========================================================
-- SQL LEARNING - LEFT JOIN
-- =========================================================

USE employee;

SELECT
    e.id,
    e.name,
    e.city,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- =========================================================
-- CONCEPT
-- =========================================================
-- LEFT JOIN returns:
--
-- ALL records from the LEFT table
-- + matching records from the RIGHT table.
--
-- If there is no match, NULL is returned.

-- =========================================================
-- FIND EMPLOYEES WITHOUT A DEPARTMENT
-- =========================================================

SELECT
    e.id,
    e.name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Display all employees with department names.

-- 2. Find employees who don't have a matching department.

-- 3. Display employee city along with department name.