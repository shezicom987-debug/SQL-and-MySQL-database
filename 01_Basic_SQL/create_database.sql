-- =========================================================
-- SQL LEARNING - CREATE DATABASE
-- Purpose: Learn how to create and select a database
-- =========================================================

-- Show all databases
SHOW DATABASES;

-- Create a database
CREATE DATABASE employee;

-- Create database only if it does not already exist
CREATE DATABASE IF NOT EXISTS employee;

-- Select the database
USE employee;

-- Check which database is currently selected
SELECT DATABASE();

-- =========================================================
-- PRACTICE
-- =========================================================

-- 1. Create a database named company_db
CREATE DATABASE company_db;

-- 2. Select company_db
USE company_db;

-- 3. Check the selected database
SELECT DATABASE();

-- 4. Show all databases
SHOW DATABASES;

-- =========================================================
-- LEARNING NOTES
-- =========================================================
-- CREATE DATABASE -> Creates a new database
-- USE -> Selects a database
-- SHOW DATABASES -> Shows available databases
-- SELECT DATABASE() -> Shows the currently selected database