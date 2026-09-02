-- =========================================================
-- SQL LEARNING - AGGREGATE FUNCTIONS
-- =========================================================

USE employee;

-- COUNT
SELECT COUNT(*) AS total_employees
FROM employees;

-- SUM
SELECT SUM(salary) AS total_salary
FROM employees;

-- AVG
SELECT AVG(salary) AS average_salary
FROM employees;

-- MIN
SELECT MIN(salary) AS minimum_salary
FROM employees;

-- MAX
SELECT MAX(salary) AS maximum_salary
FROM employees;

-- =========================================================
-- USING MULTIPLE FUNCTIONS
-- =========================================================

SELECT
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MIN(salary) AS minimum_salary,
    MAX(salary) AS maximum_salary
FROM employees;

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Find total number of employees.

-- 2. Find total salary.

-- 3. Find average salary.

-- 4. Find highest salary.

-- 5. Find lowest salary.

-- 6. Find the difference between maximum and minimum salary.

SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;