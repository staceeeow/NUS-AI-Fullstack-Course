# Capstone - AI-Powered LMS

All 4 sections, matching the submission naming convention from the assignment page. Everything below was actually run and verified (not just written) before packaging.

## Section 1 - Frontend

- `section1-html-css-bootstrap/Capstone_Section1_HTML_YU.html` - 2 flexbox feature boxes + 2 Bootstrap cards (title, text, button).
- `section1-javascript/Capstone_Section1_JS_YU.html` - email validation (checks `@`, updates the DOM, handles submit) + an input that updates a live preview as you type.
- `Capstone_Section1_React_YU.zip` - Vite React app (`section1-react/`) with a Password Strength Checker (length + digit check) and a Course Description Toggle. `npm run build` passes.

## Section 2 - Backend

`Capstone_Section2_YU.zip` (`section2-express/`) - Express server with `POST /enroll`. Verified with curl:

```
POST /enroll {"userId":123,"courseId":1}  -> {"message":"User 123 successfully enrolled in course 1."}
POST /enroll {"userId":123}               -> 400 {"error":"Missing userId or courseId in request."}
```

## Section 3 - Database

`Capstone_Section3_YU.zip` (`section3-database/express-app/`) - Express + Mongoose REST API (`GET /students`, `POST /students`) over the same MongoDB data below.

- `Capstone_Section3_SQL_YU.pdf` - MySQL: `instructors` table (`AUTO_INCREMENT` PK, `UNIQUE` email) with 3 inserts, plus a user+enroll+JOIN query. Run against a real local MySQL 8.0.40 server; output in the PDF is the server's actual output.
- `Capstone_Section3_MongoDB_YU.pdf` - MongoDB: a new `students` document inserted and read back via `mongosh` against a real local MongoDB 7.0.14 instance, plus the REST API exercising the same collection.
- Source SQL/JS commands are in `section3-database/mysql-queries.sql` and `section3-database/mongo-commands.js` for reference.

## Section 4 - AI Features

`Capstone_Section4_YU.pdf` - the 3 Smart Search reflection questions, ~100-150 words each.

## Note on the database servers

MySQL and MongoDB aren't installed system-wide in this environment (no root access), so both were downloaded as portable/standalone binaries and run locally out of `/tmp` for verification, then shut down - they aren't part of this submission. To re-run the SQL/Mongo commands yourself, use your own local MySQL Workbench / MongoDB Compass install per the course's system requirements.
