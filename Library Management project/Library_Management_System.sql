-- LIBRARY MANAGEMENT SYSTEM
-- Database, table creation, sample data insertion, and verification
-- Execute this file in MySQL Workbench.

CREATE DATABASE IF NOT EXISTS librarydb;
USE librarydb;

-- 1. MEMBERS TABLE
CREATE TABLE IF NOT EXISTS members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    member_type ENUM('Student', 'Faculty') NOT NULL,
    joined_date DATE
);

INSERT INTO members (member_name, member_type, joined_date) VALUES
('Aarav Sharma', 'Student', '2025-06-15'),
('Priya Nair', 'Student', '2025-06-15'),
('Rohan Verma', 'Student', '2025-07-01'),
('Dr. Meera Iyer', 'Faculty', '2024-01-10'),
('Kiran Rao', 'Student', '2025-07-20'),
('Prof. Suresh Kumar', 'Faculty', '2023-08-05'),
('Sneha Patil', 'Student', '2025-08-10'),
('Arjun Reddy', 'Student', '2025-08-10'),
('Dr. Anita Desai', 'Faculty', '2024-03-18'),
('Vikram Singh', 'Student', '2025-09-01'),
('Divya Menon', 'Student', '2025-09-12'),
('Rahul Gupta', 'Student', '2025-09-12');

-- 2. BOOKS TABLE
CREATE TABLE IF NOT EXISTS books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10,2),
    copies_available INT DEFAULT 0
);

INSERT INTO books (title, author, category, price, copies_available) VALUES
('Let Us C', 'Yashavant Kanetkar', 'Programming', 350.00, 3),
('Python Crash Course', 'Eric Matthes', 'Programming', 599.00, 0),
('Java: The Complete Reference', 'Herbert Schildt', 'Programming', 750.00, 2),
('Database System Concepts', 'Silberschatz', 'Database', 850.00, 0),
('Fundamentals of Database Systems', 'Elmasri', 'Database', 799.00, 2),
('SQL in 10 Minutes', 'Ben Forta', 'Database', 299.00, 4),
('Computer Networks', 'Tanenbaum', 'Networking', 699.00, 1),
('Data Communications', 'Forouzan', 'Networking', 650.00, 0),
('Wings of Fire', 'APJ Abdul Kalam', 'Biography', 250.00, 5),
('The Alchemist', 'Paulo Coelho', 'Fiction', 199.00, 3),
('Malgudi Days', 'R.K. Narayan', 'Fiction', 220.00, 2),
('A Brief History of Time', 'Stephen Hawking', 'Science', 399.00, 0),
('Higher Engineering Mathematics', 'B.S. Grewal', 'Mathematics', 550.00, 3),
('Operating System Concepts', 'Galvin', 'Programming', 720.00, 1),
('Discrete Mathematics', 'Kenneth Rosen', 'Mathematics', 680.00, 2);

-- 3. ISSUES TABLE
CREATE TABLE IF NOT EXISTS issues (
    issue_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    issue_date DATE NOT NULL,
    due_date DATE NOT NULL,
    return_date DATE NULL,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

INSERT INTO issues (member_id, book_id, issue_date, due_date, return_date) VALUES
(1, 1, '2026-08-03', '2026-08-17', '2026-08-16'),
(1, 4, '2026-09-01', '2026-09-15', '2026-09-20'),
(1, 2, '2026-10-05', '2026-10-19', '2026-10-18'),
(1, 6, '2026-11-02', '2026-11-16', NULL),
(2, 1, '2026-08-10', '2026-08-24', '2026-08-29'),
(2, 3, '2026-09-07', '2026-09-21', '2026-09-21'),
(2, 4, '2026-10-12', '2026-10-26', '2026-11-02'),
(2, 2, '2026-10-30', '2026-11-13', NULL),
(3, 1, '2026-08-17', '2026-08-31', '2026-09-10'),
(3, 7, '2026-09-14', '2026-09-28', '2026-09-27'),
(3, 8, '2026-10-19', '2026-11-02', NULL),
(4, 5, '2026-08-05', '2026-09-04', '2026-09-02'),
(4, 12, '2026-09-10', '2026-10-10', '2026-10-08'),
(4, 4, '2026-10-15', '2026-11-14', NULL),
(5, 2, '2026-08-24', '2026-09-07', '2026-09-12'),
(5, 6, '2026-09-21', '2026-10-05', '2026-10-04'),
(5, 1, '2026-10-08', '2026-10-22', '2026-10-30'),
(5, 9, '2026-11-04', '2026-11-18', NULL),
(6, 3, '2026-08-12', '2026-09-11', '2026-09-09'),
(6, 7, '2026-09-18', '2026-10-18', '2026-10-16'),
(6, 14, '2026-10-20', '2026-11-19', NULL),
(7, 10, '2026-08-31', '2026-09-14', '2026-09-13'),
(7, 4, '2026-09-28', '2026-10-12', '2026-10-22'),
(7, 11, '2026-10-14', '2026-10-28', '2026-10-27'),
(7, 8, '2026-10-26', '2026-11-09', NULL),
(8, 2, '2026-09-02', '2026-09-16', '2026-09-14'),
(8, 1, '2026-09-23', '2026-10-07', '2026-10-07'),
(8, 6, '2026-10-13', '2026-10-27', '2026-11-05'),
(8, 13, '2026-11-05', '2026-11-19', NULL),
(10, 10, '2026-09-09', '2026-09-23', '2026-09-30'),
(10, 4, '2026-10-22', '2026-11-05', NULL),
(5, 7, '2026-11-03', '2026-11-17', NULL);

-- 4. VERIFY TABLES AND RECORDS
SHOW TABLES;
DESC members;
DESC books;
DESC issues;

SELECT * FROM members;
SELECT * FROM books;
SELECT * FROM issues;

-- Expected record counts: members = 12, books = 15, issues = 32.
