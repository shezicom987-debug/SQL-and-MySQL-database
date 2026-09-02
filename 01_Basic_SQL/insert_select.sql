-- =========================================================
-- SQL LEARNING - INSERT AND SELECT
-- =========================================================

USE employee;

-- =========================================================
-- INSERT DATA
-- =========================================================

INSERT INTO employees
(id, name, city, salary, department_id)
VALUES
(1, 'Ali', 'Karachi', 50000, 101),
(2, 'Ahmed', 'Hyderabad', 60000, 102),
(3, 'Hamza', 'Jamshoro', 55000, 101),
(4, 'Usman', 'Lahore', 70000, 103);

-- =========================================================
-- SELECT
-- =========================================================

-- Select everything
SELECT * FROM employees;

-- Select specific columns
SELECT id, name
FROM employees;

-- Select name and salary
SELECT name, salary
FROM employees;

-- =========================================================
-- WHERE
-- =========================================================

SELECT *
FROM employees
WHERE salary > 55000;

SELECT *
FROM employees
WHERE city = 'Karachi';

-- Multiple conditions
SELECT *
FROM employees
WHERE salary > 50000
AND city = 'Hyderabad';

-- OR
SELECT *
FROM employees
WHERE city = 'Karachi'
OR city = 'Lahore';

-- =========================================================
-- DISTINCT
-- =========================================================

SELECT DISTINCT city
FROM employees;

SELECT DISTINCT department_id
FROM employees;

-- =========================================================
-- ORDER BY
-- =========================================================

-- Lowest salary first
SELECT *
FROM employees
ORDER BY salary ASC;

-- Highest salary first
SELECT *
FROM employees
ORDER BY salary DESC;

-- =========================================================
-- LIMIT
-- =========================================================

SELECT *
FROM employees
LIMIT 2;

-- =========================================================
-- UPDATE
-- =========================================================

UPDATE employees
SET salary = 65000
WHERE id = 2;

-- Check updated record
SELECT *
FROM employees
WHERE id = 2;

-- =========================================================
-- DELETE
-- =========================================================

DELETE FROM employees
WHERE id = 4;

SELECT * FROM employees;

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Find employees earning more than 60000.

-- 2. Find employees from Karachi.

-- 3. Display employees from highest salary to lowest.

-- 4. Display only name and city.

-- 5. Display unique cities.

-- 6. Update Ali's salary.

-- 7. Delete an employee using their ID.

-- =========================================================
-- IMPORTANT
-- =========================================================
-- Always use WHERE with UPDATE and DELETE when you
-- want to affect specific records.