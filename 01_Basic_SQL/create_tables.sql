-- =========================================================
-- SQL LEARNING - CREATE TABLE
-- Purpose: Learn how to create tables and define columns
-- =========================================================

USE employee;

-- Create employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT
);

-- Show all tables
SHOW TABLES;

-- Show table structure
DESCRIBE employees;

-- Alternative command
SHOW COLUMNS FROM employees;

-- =========================================================
-- UNDERSTANDING DATA TYPES
-- =========================================================

-- INT
-- Used for whole numbers

-- VARCHAR
-- Used for variable-length text

-- DECIMAL
-- Used for accurate decimal values such as salary

-- =========================================================
-- PRACTICE
-- =========================================================

-- Create a students table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50),
    marks INT
);

-- Check the structure
DESCRIBE students;

-- Create a departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- Check tables
SHOW TABLES;

-- =========================================================
-- LEARNING NOTES
-- =========================================================
-- PRIMARY KEY -> Uniquely identifies each row
-- NOT NULL -> Value cannot be empty
-- VARCHAR -> Stores text
-- INT -> Stores integers
-- DECIMAL -> Stores decimal numbers