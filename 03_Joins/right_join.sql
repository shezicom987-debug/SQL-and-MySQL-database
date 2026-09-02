-- =========================================================
-- SQL LEARNING - RIGHT JOIN
-- =========================================================

USE employee;

SELECT
    e.name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

-- =========================================================
-- CONCEPT
-- =========================================================
-- RIGHT JOIN returns:
--
-- ALL records from the RIGHT table
-- + matching records from the LEFT table.

-- If there is no employee in a department,
-- employee columns will contain NULL.

-- =========================================================
-- FIND DEPARTMENTS WITHOUT EMPLOYEES
-- =========================================================

SELECT
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id
WHERE e.id IS NULL;

-- =========================================================
-- PRACTICE
-- =========================================================

-- Find all departments and their employees.

-- Find departments that currently have no employees.