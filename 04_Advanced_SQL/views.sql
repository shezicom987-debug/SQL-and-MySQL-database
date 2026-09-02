-- =========================================================
-- SQL LEARNING - VIEWS
-- =========================================================

USE employee;

-- =========================================================
-- CREATE VIEW
-- =========================================================

CREATE OR REPLACE VIEW employee_summary AS
SELECT
    e.id,
    e.name,
    e.salary,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;

-- =========================================================
-- USE VIEW
-- =========================================================

SELECT *
FROM employee_summary;

-- Filter the view
SELECT *
FROM employee_summary
WHERE salary > 55000;

-- =========================================================
-- SHOW VIEWS
-- =========================================================

SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

-- =========================================================
-- DELETE VIEW
-- =========================================================

-- DROP VIEW employee_summary;

-- =========================================================
-- CONCEPT
-- =========================================================
-- A VIEW is a virtual table based on a SQL query.
--
-- It does not normally store a separate copy of the data.
--
-- It can simplify complex queries.

-- =========================================================
-- PRACTICE
-- =========================================================

-- Create a view containing:
-- employee ID
-- employee name
-- city
-- salary

-- Then query that view.