-- =========================================================
-- SQL LEARNING - UNION AND UNION ALL
-- =========================================================

USE employee;

-- =========================================================
-- UNION
-- =========================================================

SELECT name, city
FROM employees
WHERE city = 'Karachi'

UNION

SELECT name, city
FROM employees
WHERE city = 'Lahore';

-- UNION removes duplicate rows.

-- =========================================================
-- UNION ALL
-- =========================================================

SELECT name, city
FROM employees
WHERE city = 'Karachi'

UNION ALL

SELECT name, city
FROM employees
WHERE city = 'Karachi';

-- UNION ALL keeps duplicate rows.

-- =========================================================
-- IMPORTANT
-- =========================================================
-- Both SELECT statements should return:
-- 1. Same number of columns
-- 2. Compatible data types
--
-- =========================================================
-- UNION
-- Removes duplicates
--
-- UNION ALL
-- Keeps duplicates

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Combine employees from Karachi and Hyderabad.

-- 2. Use UNION ALL and observe the difference.

-- 3. Combine two SELECT queries containing id and name.