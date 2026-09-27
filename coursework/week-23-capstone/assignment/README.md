# Capstone - AI-Powered LMS

All 4 sections, matching the submission naming convention from the assignment page and the exact task specs revealed in the full accordion screenshots (see `../capstone-assignment.md`). Everything below was actually run and verified (not just written) before packaging.

## Section 1 - Frontend

- `section1-html-css-bootstrap/Capstone_Section1_HTML_YU.html` - nav bar + "Adaptive Courses" flexbox box (starter) plus the 2 required additions ("Progress Tracking", "Real-time Assessments"), and 2 Bootstrap cards ("HTML Module", "CSS Module") in a Bootstrap grid.
- `section1-javascript/Capstone_Section1_JS_YU.html` - the 4-section starter page (Enroll in Course, AI Suggestion Box, Validate Learner Email, Type Your Learning Goal) with `validateEmail()` (checks `@`, shows "Invalid email address"/"Email accepted!") and the live goal-input handler (`goalInput`/`goalOutput`) completed. Verified headlessly with jsdom - all 4 behaviours produce the exact expected strings.
- `Capstone_Section1_React_YU.zip` - Create React App project (`section1-react/client/`, via `npx create-react-app client` per the spec) with `PasswordStrength.js` (Check Strength button; <6 chars -> "Weak password"; 6+ chars with a digit -> "Strong password") and `CourseToggle.js` (Show/Hide Description toggle with the exact course description text and a label that updates). 4 React Testing Library tests pass (`npm test`).

## Section 2 - Backend

`Capstone_Section2_YU.zip` (`section2-express/`) - Express server with `GET /courses` (matches the reference output: React for Beginners / Intro to Data Science / AI Fundamentals) and `POST /enroll`. Verified with curl:

```
POST /enroll {"userId":123,"courseId":1}  -> {"message":"User 123 successfully enrolled in course 1."}
POST /enroll {"userId":123}               -> 400 {"error":"Missing userId or courseId in request."}
```

## Section 3 - Database

`Capstone_Section3_YU.zip` (`section3-database/express-app/`) - this is the **actual starter backend provided in `MongoDB.zip`** (not custom-built): Express + Mongoose REST API over `schools` / `courses` / `enrollments` collections, run for real against a local MongoDB instance.

- `Capstone_Section3_SQL_YU.pdf` - MySQL: `lms_db` database with the full `users`/`courses`/`enrollments`/`assessments` schema from the brief, then the 2 graded tasks - an `instructors` table (`AUTO_INCREMENT` PK, `UNIQUE` email, 3 inserts) and Daniel Rose added + enrolled in "CSS Design" with a JOIN query showing all enrolled users. Run against a real local MySQL 8.0.40 server; output in the PDF is the server's actual output.
- `Capstone_Section3_MongoDB_YU.pdf` - MongoDB: the required new `school` document (`_id`, `name`, `address`, `principal`) inserted via `mongosh` against a real local MongoDB 7.0.14 instance (`schoolSystem` database), plus the provided REST API (`/api/schools`, `/api/courses`, `/api/enrollments`) exercised against the same data.
- Source SQL/JS commands are in `section3-database/mysql-queries.sql` and `section3-database/mongodb-report.md` for reference.

## Section 4 - AI Features

`Capstone_Section4_YU.pdf` - the 3 Smart Search reflection questions, ~100-150 words each.

## Note on the database servers

MySQL and MongoDB aren't installed system-wide in this environment (no root access), so both were downloaded as portable/standalone binaries and run locally out of `/tmp` for verification, then shut down - they aren't part of this submission. To re-run the SQL/Mongo commands yourself, use your own local MySQL Workbench / MongoDB Compass install per the course's system requirements.
