-- =========================================================
-- SQL LEARNING - GROUP BY AND HAVING
-- =========================================================

USE employee;

-- Count employees in each department
SELECT department_id,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

-- Average salary of each department
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

-- Total salary of each department
SELECT department_id,
       SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- =========================================================
-- HAVING
-- =========================================================

-- Show departments having more than one employee
SELECT department_id,
       COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;

-- Departments whose average salary is greater than 55000
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- =========================================================
-- WHERE VS HAVING
-- =========================================================

-- WHERE filters individual rows
SELECT *
FROM employees
WHERE salary > 50000;

-- HAVING filters groups
SELECT department_id,
       AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 50000;

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Count employees in each city.

-- 2. Find average salary by city.

-- 3. Find total salary by department.

-- 4. Find departments having more than 2 employees.

-- 5. Find departments where average salary is above 60000.