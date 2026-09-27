# Capstone Section 3 - MySQL

All commands below were run against a local MySQL 8.0.40 server (`mysql -u root -p < mysql-queries.sql`). Output is captured directly from the server, not simulated. Full script: `mysql-queries.sql`.

## Setup: `lms_db` database

```sql
CREATE DATABASE lms_db;
USE lms_db;

CREATE TABLE users ( user_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100) UNIQUE, password VARCHAR(255) );
CREATE TABLE courses ( course_id INT AUTO_INCREMENT PRIMARY KEY, course_name VARCHAR(100), description TEXT );
CREATE TABLE enrollments ( enrollment_id INT AUTO_INCREMENT PRIMARY KEY, user_id INT, course_id INT, enrollment_date DATE, FOREIGN KEY (user_id) REFERENCES users(user_id), FOREIGN KEY (course_id) REFERENCES courses(course_id) );
CREATE TABLE assessments ( assessment_id INT AUTO_INCREMENT PRIMARY KEY, course_id INT, title VARCHAR(100), max_score INT, FOREIGN KEY (course_id) REFERENCES courses(course_id) );
```

Seeded with the sample users, courses, enrollments and assessments from the assignment brief (Alice Johnson / Bob Smith / Charlie Lee; HTML Basics / CSS Design / MySQL for Beginners, etc).

## Task 1: Create `instructors` table & insert records

```sql
CREATE TABLE instructors (
  instructor_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

INSERT INTO instructors (name, email) VALUES
  ('Dr. Mei Lin', 'mei.lin@lms.edu'),
  ('Dr. Arun Kumar', 'arun.kumar@lms.edu'),
  ('Dr. Wei Zhang', 'wei.zhang@lms.edu');

SELECT * FROM instructors;
```

Result:

```
+---------------+----------------+--------------------+
| instructor_id | name           | email              |
+---------------+----------------+--------------------+
|             1 | Dr. Mei Lin    | mei.lin@lms.edu    |
|             2 | Dr. Arun Kumar | arun.kumar@lms.edu |
|             3 | Dr. Wei Zhang  | wei.zhang@lms.edu  |
+---------------+----------------+--------------------+
```

## Task 2: Enroll Daniel Rose in "CSS Design"

```sql
INSERT INTO users (name, email, password) VALUES ('Daniel Rose', 'daniel1@lms.com', 'daniel123');

INSERT INTO enrollments (user_id, course_id, enrollment_date)
VALUES (
  (SELECT user_id FROM users WHERE email = 'daniel1@lms.com'),
  (SELECT course_id FROM courses WHERE course_name = 'CSS Design'),
  CURDATE()
);

SELECT u.name, u.email, e.enrollment_date
FROM enrollments e
JOIN users u ON e.user_id = u.user_id
JOIN courses c ON e.course_id = c.course_id
WHERE c.course_name = 'CSS Design';
```

Result (Bob Smith was already enrolled in CSS Design from the sample data; Daniel Rose is the newly added enrollment, dated today):

```
+-------------+-----------------+-----------------+
| name        | email           | enrollment_date |
+-------------+-----------------+-----------------+
| Bob Smith   | bob@example.com | 2024-02-15      |
| Daniel Rose | daniel1@lms.com | 2026-09-27      |
+-------------+-----------------+-----------------+
```
