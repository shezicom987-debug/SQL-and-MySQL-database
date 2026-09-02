-- =========================================================
-- SQL LEARNING - SUBQUERIES
-- =========================================================

USE employee;

-- =========================================================
-- EMPLOYEES ABOVE AVERAGE SALARY
-- =========================================================

SELECT
    id,
    name,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- =========================================================
-- HIGHEST PAID EMPLOYEE
-- =========================================================

SELECT
    id,
    name,
    salary
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);

-- =========================================================
-- LOWEST PAID EMPLOYEE
-- =========================================================

SELECT
    id,
    name,
    salary
FROM employees
WHERE salary = (
    SELECT MIN(salary)
    FROM employees
);

-- =========================================================
-- SUBQUERY WITH IN
-- =========================================================

SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
);

-- =========================================================
-- CONCEPT
-- =========================================================
-- A subquery is a query inside another query.

-- Outer Query
--     ↓
-- Inner Query
--     ↓
-- Result used by outer query

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Find employees earning above average salary.

-- 2. Find employees earning below average salary.

-- 3. Find the employee with maximum salary.

-- 4. Find the second-highest salary.

-- 5. Find employees belonging to departments that exist
--    in the departments table.