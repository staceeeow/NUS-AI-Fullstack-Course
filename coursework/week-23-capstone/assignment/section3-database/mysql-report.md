# Capstone Section 3 - MySQL

All commands below were run against a local MySQL 8.0.40 server (`mysql -u root < mysql-queries.sql`). Output is captured directly from the server, not simulated.

## Create instructors table & insert records

```sql
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
```

Result:

```
+----+----------------+--------------------+-------------------------+
| id | name           | email              | department              |
+----+----------------+--------------------+-------------------------+
|  1 | Dr. Mei Lin    | mei.lin@lms.edu    | Computer Science        |
|  2 | Dr. Arun Kumar | arun.kumar@lms.edu | Data Science            |
|  3 | Dr. Wei Zhang  | wei.zhang@lms.edu  | Artificial Intelligence |
+----+----------------+--------------------+-------------------------+
```

## Add User + Enroll + JOIN Query

```sql
-- 1. Add a new user
INSERT INTO users (name, email) VALUES ('Cara Ong', 'cara.ong@example.com');

-- 2. Enroll that user in a course
INSERT INTO enrollments (user_id, course_id)
VALUES (
    (SELECT id FROM users WHERE email = 'cara.ong@example.com'),
    (SELECT id FROM courses WHERE title = 'AI & Machine Learning')
);

-- 3. JOIN query showing the enrolled user with their course and instructor
SELECT
    users.name          AS student_name,
    courses.title        AS course_title,
    instructors.name     AS instructor_name,
    enrollments.enrolled_at
FROM enrollments
JOIN users       ON enrollments.user_id = users.id
JOIN courses      ON enrollments.course_id = courses.id
JOIN instructors  ON courses.instructor_id = instructors.id;
```

Result:

```
+--------------+-----------------------+-----------------+---------------------+
| student_name | course_title          | instructor_name | enrolled_at         |
+--------------+-----------------------+-----------------+---------------------+
| Cara Ong     | AI & Machine Learning | Dr. Wei Zhang   | 2026-09-27 11:41:33 |
+--------------+-----------------------+-----------------+---------------------+
```

The `instructors`, `users`, `courses` and `enrollments` schema (with `AUTO_INCREMENT` primary keys, a `UNIQUE` constraint on `instructors.email`, and foreign keys linking enrollments back to users/courses) is in `mysql-queries.sql`.
