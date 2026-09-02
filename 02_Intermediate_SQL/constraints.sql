-- =========================================================
-- SQL LEARNING - CONSTRAINTS
-- =========================================================

USE employee;

-- =========================================================
-- PRIMARY KEY
-- =========================================================

CREATE TABLE students_constraints (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Primary key cannot be duplicated.

INSERT INTO students_constraints
VALUES (1, 'Ali');

-- This will cause a duplicate primary key error:
-- INSERT INTO students_constraints
-- VALUES (1, 'Ahmed');

-- =========================================================
-- NOT NULL
-- =========================================================

CREATE TABLE employees_constraints (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- name is required.

-- =========================================================
-- UNIQUE
-- =========================================================

CREATE TABLE users_constraints (
    id INT PRIMARY KEY,
    username VARCHAR(100) UNIQUE
);

-- Duplicate usernames are not allowed.

-- =========================================================
-- FOREIGN KEY
-- =========================================================

CREATE TABLE departments_constraints (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees_fk (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,

    FOREIGN KEY (department_id)
    REFERENCES departments_constraints(department_id)
);

-- =========================================================
-- CHECK
-- =========================================================

CREATE TABLE students_check (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT CHECK (age >= 18)
);

-- =========================================================
-- COMMON CONSTRAINTS
-- =========================================================

-- PRIMARY KEY
-- UNIQUE
-- NOT NULL
-- FOREIGN KEY
-- CHECK
-- DEFAULT

-- =========================================================
-- PRACTICE
-- =========================================================

-- Create a bank_accounts table containing:
-- account_id -> PRIMARY KEY
-- account_holder -> NOT NULL
-- email -> UNIQUE
-- balance -> CHECK(balance >= 0)