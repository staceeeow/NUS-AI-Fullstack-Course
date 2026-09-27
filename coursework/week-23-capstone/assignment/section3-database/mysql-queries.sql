-- Section 3: MySQL - AI-Powered LMS
-- Run with: mysql -u root < mysql-queries.sql

CREATE DATABASE IF NOT EXISTS lms;
USE lms;

-- Create instructors table & insert records
CREATE TABLE IF NOT EXISTS instructors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    department VARCHAR(100)
);

INSERT INTO instructors (name, email, department) VALUES
    ('Dr. Mei Lin',    'mei.lin@lms.edu',    'Computer Science'),
    ('Dr. Arun Kumar', 'arun.kumar@lms.edu', 'Data Science'),
    ('Dr. Wei Zhang',  'wei.zhang@lms.edu',  'Artificial Intelligence');

SELECT * FROM instructors;

-- Supporting tables for the "Add User + Enroll + JOIN Query" task
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES instructors(id)
);

CREATE TABLE IF NOT EXISTS enrollments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    course_id INT NOT NULL,
    enrolled_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO courses (title, instructor_id) VALUES
    ('Full Stack Web Development', 1),
    ('AI & Machine Learning', 3);

-- 1. Add a new user
INSERT INTO users (name, email) VALUES ('Cara Ong', 'cara.ong@example.com');

-- 2. Enroll that user in a course
INSERT INTO enrollments (user_id, course_id)
VALUES (
    (SELECT id FROM users WHERE email = 'cara.ong@example.com'),
    (SELECT id FROM courses WHERE title = 'AI & Machine Learning')
);

-- 3. JOIN query showing the enrolled user, alongside their course and instructor
SELECT
    users.name          AS student_name,
    courses.title        AS course_title,
    instructors.name     AS instructor_name,
    enrollments.enrolled_at
FROM enrollments
JOIN users       ON enrollments.user_id = users.id
JOIN courses      ON enrollments.course_id = courses.id
JOIN instructors  ON courses.instructor_id = instructors.id;
