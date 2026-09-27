-- Section 3: MySQL - AI-Powered LMS
-- Run with: mysql -u root -p < mysql-queries.sql

CREATE DATABASE IF NOT EXISTS lms_db;
USE lms_db;

-- Step 4: Create and Use a Database
CREATE TABLE IF NOT EXISTS users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS courses (
  course_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100),
  description TEXT
);

CREATE TABLE IF NOT EXISTS enrollments (
  enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  course_id INT,
  enrollment_date DATE,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE IF NOT EXISTS assessments (
  assessment_id INT AUTO_INCREMENT PRIMARY KEY,
  course_id INT,
  title VARCHAR(100),
  max_score INT,
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Step 2: Insert Sample Data
INSERT INTO users (name, email, password) VALUES
  ('Alice Johnson', 'alice@example.com', 'alice123'),
  ('Bob Smith', 'bob@example.com', 'bob123'),
  ('Charlie Lee', 'charlie@example.com', 'charlie123');

INSERT INTO courses (course_name, description) VALUES
  ('HTML Basics', 'Introduction to HTML and web structure.'),
  ('CSS Design', 'Learn how to style websites using CSS.'),
  ('MySQL for Beginners', 'Basic concepts of relational databases.');

INSERT INTO enrollments (user_id, course_id, enrollment_date) VALUES
  (1, 1, '2024-01-10'),
  (1, 3, '2024-02-05'),
  (2, 2, '2024-02-15'),
  (3, 1, '2024-03-01');

INSERT INTO assessments (course_id, title, max_score) VALUES
  (1, 'HTML Quiz 1', 100),
  (2, 'CSS Midterm', 80),
  (3, 'MySQL Final Test', 90);

-- Step 3: CRUD Examples
SELECT * FROM users;

SELECT u.name, c.course_name
FROM enrollments e
JOIN users u ON e.user_id = u.user_id
JOIN courses c ON e.course_id = c.course_id
WHERE u.user_id = 1;

UPDATE users SET email = 'alice.new@example.com' WHERE user_id = 1;

DELETE FROM enrollments WHERE enrollment_id = 2;

-- ===== Now, perform the below tasks =====

-- Task 1: Create a new table named instructors
CREATE TABLE IF NOT EXISTS instructors (
  instructor_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

INSERT INTO instructors (name, email) VALUES
  ('Dr. Mei Lin', 'mei.lin@lms.edu'),
  ('Dr. Arun Kumar', 'arun.kumar@lms.edu'),
  ('Dr. Wei Zhang', 'wei.zhang@lms.edu');

SELECT * FROM instructors;

-- Task 2: Enroll new user Daniel Rose (daniel1@lms.com, password: daniel123) in "CSS Design"
INSERT INTO users (name, email, password) VALUES ('Daniel Rose', 'daniel1@lms.com', 'daniel123');

-- find the course_id for "CSS Design" and enroll Daniel with today's date
INSERT INTO enrollments (user_id, course_id, enrollment_date)
VALUES (
  (SELECT user_id FROM users WHERE email = 'daniel1@lms.com'),
  (SELECT course_id FROM courses WHERE course_name = 'CSS Design'),
  CURDATE()
);

-- Query: display all users enrolled in "CSS Design"
SELECT u.name, u.email, e.enrollment_date
FROM enrollments e
JOIN users u ON e.user_id = u.user_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'CSS Design';
