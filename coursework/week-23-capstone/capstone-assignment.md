# Capstone Details

AI-Powered Learning Management System (LMS) — Capstone Project

| Due | Points | Submitting | File Types | Attempts | Allowed Attempts | Available |
|---|---|---|---|---|---|---|
| Oct 6 by 4:29pm | 70 | a file upload | zip, pdf, and html | 0 | 1 | after Sep 22 at 2:30am |

## Introduction

As you near the completion of the programme, dive into an engaging capstone project on an AI-Powered Learning Management System (LMS). The project is divided into four main sections that test your knowledge, from frontend to backend to understanding AI features.

Please note this capstone does not aim to deliver a fully integrated, production-ready website or unified UI and aims to test your understanding of the topics covered in the programme. While real-world applications require adherence to security best practices, this capstone is a prototype. Therefore, comprehensive security and compliance measures are not enforced or assessed as part of the submission.

## Learning Outcomes

- Build responsive UIs using HTML, CSS, and Bootstrap.
- Add interactivity with JavaScript and manage UI state with React.
- Develop RESTful APIs using Express.js.
- Data validation, and API integration with the frontend.
- Design, manage, and query relational and non-relational databases by building full-stack applications using MySQL and MongoDB.
- Understand the concept and architecture of Smart Search in a full-stack AI-powered LMS.

## Section wise Submission Instructions

**Section 1 submission instructions:**

i) HTML, CSS, Bootstrap
- upload `index.html` rename file as "Capstone_Section1_HTML_[Your Last Name].html"

ii) JavaScript
- upload `Javascript.html` rename file as "Capstone_Section1_JS_[Your Last Name].html"

iii) React
- remove the "node_modules" folder
- zip up entire react project folder
- upload the zip file as "Capstone_Section1_React_[Your Last Name]"

**Section 2 submission instructions:**
- remove the "node_modules" folder
- zip up the entire express project folder
- upload the zip file as "Capstone_Section2_[Your last name]"

**Section 3 submission instructions:**
- remove the "node_modules" folder
- zip up the entire express project folder
- upload the zip file as "Capstone_Section3_[Your last name]"
- Submit a PDF file containing screenshots and commands for MongoDB. Name the PDF file as: Capstone_Section3_MongoDB_[Your last name]"
- Submit a PDF file containing all MySQL queries. Name the PDF file as: Capstone_Section3_SQL_[Your last name]"

**Section 4 submission instructions:**
- upload the pdf file as "Capstone_Section4_[Your last name]"

## Submission Instructions

- Click on the **Start Assignment** button at the top of this page to make your submission.
- Upload all the files. (Use the checklist to ensure you have uploaded all files for each section.)
- Click on **Submit Assignment**.

Your submission will be considered complete when it meets these criteria:

- Includes all the critical elements outlined in the instructions.
- It will be graded as per the rubric available on this page.
- Adheres to the submission guidelines.
- Is submitted on time.

*This is a required activity and counts towards programme completion.*

---

## System Requirements and Set up

Before beginning the Capstone Project, it is essential to have all the required tools installed and configured on your system.

To ensure a smooth experience, please refer to the Installation Guide. It includes step-by-step instructions for installing the following:

- **Visual Studio Code** — for editing and managing your code
- **Node.js and npm** — required for both frontend (React) and backend (Express)
- **MySQL & MySQL Workbench** — for working with relational databases
- **MongoDB Shell** — for NoSQL data handling and AI integration
- **Command Prompt/Terminal setup** — for executing scripts and running local servers

---

## Section 1: Frontend Development

Students build the look and feel of the LMS using HTML, CSS, Bootstrap, JavaScript, and React.js. This includes pages like login, course list, enrollment, and performance tracking. At first, these pages don't connect to real data, but they are set up to work with the backend later.

- ▶ **HTML, CSS, BOOTSTRAP** *(click tab to reveal details — not expanded in source screenshot)*
- ▶ **JAVASCRIPT** *(click tab to reveal details — not expanded in source screenshot)*
- ▶ **REACT.JS** *(click tab to reveal details — not expanded in source screenshot)*

---

## Section 2: Backend Development

Next, the backend is added using `Express.js` and `Node.js`. Students create REST APIs to manage data, logins, and app rules. The frontend from Section 1 uses these APIs to register users, log in, show courses, and track progress. This makes the website active and responsive to users. The backend also keeps the data safe and connects the user interface to the database.

### Express.js (Node.js)

`Express.js` is a simple and fast tool that helps you build backend APIs using Node.js. Node.js lets you run JavaScript on the server (not just in the browser) and can handle things like web requests, files, and networks. But using only Node.js can be tricky and time-consuming. Express makes it easier by giving a clear and easy way to build web servers and APIs. It works on top of Node.js and helps you build backend features quickly and in an organised way.

**1. Manage Courses and Learners**
- `GET /courses` → Fetch all available courses
- `POST /enroll` → Enroll a user in a course
- `GET /user/:id/courses` → View user progress

**2. Serve AI-Based Recommendations**
- Endpoint like `GET /recommend?interest=ai` → return smart suggestions
- In future, integrate Python ML model using `child_process` or via `Flask` microservice

**3. Track Performance**
- Store progress like quiz scores, time spent, completed modules, etc.
- Route example: `POST /track-progress`

### Instructions

**Step 1: Setup Backend with Express.js**

1. Open a new terminal window (or tab)
2. Navigate to your projects folder (parallel to your React.js app)

```
cd path/to/your/projects/folder
```

3. Create a backend folder:

```
mkdir lms-backend
cd lms-backend
```

4. Initialise a Node.js project (creates `package.json`)

```
npm init -y
```

5. Install Express.js

```
npm install express
```

6. Install `nodemon` for auto-reloading backend on code change (optional)

```
npm install --save-dev nodemon
```

7. Create `server.js` file inside `lms-backend` folder with basic Express Server
8. Run backend server:

```
npm run dev
```

or

```
node server.js
```

**Sample Code:** *(the visible portion from the source page — the code block continues past this point in the original)*

```js
// Import the express module
const express = require('express');

// Create an Express application
const app = express();

// Define the port number to run the server on
const PORT = 5000;

// 1. Middleware to parse JSON bodies in requests
// ...(code block continues below this point in the source page)
```

### Now, perform the below tasks:

**1. Add a `POST` route `/enroll` to enroll a user in a course**

Create a new `POST` endpoint `/enroll` that accepts a JSON body with `userId` and `courseId`. It should respond with a confirmation message like:

```
User 123 successfully enrolled in course 1.
```

Hints:
- Use `app.post('/enroll', (req, res) => { ... })`
- Access data via `req.body.userId` and `req.body.courseId`
- Use `res.json()` to send a JSON response
- Don't forget to use `express.json()` middleware (already included above)
- The output should resemble the reference image linked on the assignment page.

**2. Add error handling for missing fields in the `/enroll` `POST` request**

Improve the `/enroll` route so that if `userId` or `courseId` is missing from the request body, it responds with status code `400` and message:

```
Missing userId or courseId in request.
```

Hints:
- Check if `req.body.userId` and `req.body.courseId` exist
- Use `res.status(400).json({ error: '...' })` to send error response
- Otherwise, proceed with the enrollment confirmation
- The output should resemble the reference image linked on the assignment page.

---

## Section 3: Database

This section aims to equip students with practical skills in working with two popular databases: MySQL and MongoDB. Using MySQL through the Command Prompt, students will learn to create databases, design relational tables, insert sample data, and perform CRUD operations in a Learning Management System (LMS) context. With MongoDB, students will use MongoDB Compass and Express.js to design schemas, insert and retrieve data, and build RESTful APIs for a school management system. This hands-on approach builds foundational knowledge in both SQL-based and NoSQL database systems.

- ▶ **MySQL** *(click tab to reveal details — not expanded in source screenshot)*
- ▶ **Mongo DB** *(click tab to reveal details — not expanded in source screenshot)*

---

## Section 4: AI Features

**Objective:**

In this section, learners will explore the concept of Smart Search and understand how it functions within a full-stack AI-powered Learning Management System (LMS). The objective of this task is to give learners an overview of how the Smart Search AI feature works on a webpage — from user interaction to backend processing — without diving into the actual code implementation. Learners will gain a conceptual understanding of the components involved and how they connect to create a responsive, intelligent search experience in an LMS.

### Smart Search

Is an intelligent feature that goes beyond basic keyword matching to help users find relevant content more efficiently. Unlike traditional search bars that require exact matches, Smart Search can interpret variations of a user's query using keyword recognition, partial matches, and even synonyms. For example, if a user types "learn web design", the system can intelligently suggest HTML, CSS, or layout-related courses, even if those exact words weren't used in the course titles.

In the context of a full-stack LMS project, Smart Search plays a critical role in enhancing user experience by quickly guiding learners to the resources they need. On the frontend, technologies like JavaScript or React capture the user's input in real-time. This input is then sent via an API to the backend, where a server (built using Node.js with Express or Python with Flask) processes the query. The backend performs keyword-based matching against stored data in a database (such as MySQL or MongoDB) and returns the most relevant results. These results are then dynamically displayed on the webpage, allowing the user to see suggestions instantly. Optionally, simple NLP or ML logic can be introduced to enhance the matching process, such as recognising synonyms or correcting spelling errors. This setup ensures that the LMS is not only user-friendly but also responsive and intelligent.

**Now, answer the below reflection questions in 100 to 150 words:**

1. How does Smart Search enhance the learning experience in an LMS compared to a regular search bar?
2. Explain the role of frontend, backend, and database in making Smart Search work in a full-stack LMS project?
3. What challenges might developers face when implementing Smart Search, and how can these be addressed conceptually?

---

## Capstone: Rubric

| Criteria | Proficient | Developing | Below Expectation | Pts |
|---|---|---|---|---|
| Add 2 Flexbox Feature Boxes | **5 to >3.0 pts**<br>Both boxes present, correct titles & structured | **3 to >0.0 pts**<br>One box added or incorrect HTML structure | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Add 2 Bootstrap Cards | **5 to >3.0 pts**<br>Uses Bootstrap grid, each card includes title, text & button | **3 to >0.0 pts**<br>Layout/semantics are incorrect or one card is missing | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| JS Email Validation | **5 to >3.0 pts**<br>Fully functional validation: checks "@", updates DOM, handles submit | **3 to >0.0 pts**<br>Logic errors, missing message update or submit handling | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| JS Input Event Handling | **5 to >3.0 pts**<br>Updates dynamically as user types using event listener | **3 to >0.0 pts**<br>Text updates incorrectly or on wrong event | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Password Strength Checker (React) | **5 to >3.0 pts**<br>Checks length & number, shows message accordingly | **3 to >0.0 pts**<br>No regex, improper condition, or no message display | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Course Description Toggle (React) | **5 to >3.0 pts**<br>Toggles description with button label updates | **3 to >0.0 pts**<br>Partially working or no conditional rendering | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| POST /enroll API | **5 to >3.0 pts**<br>Accepts JSON, returns correct response | **3 to >0.0 pts**<br>Response or request handling is incorrect | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Error Handling for Missing Fields | **5 to >3.0 pts**<br>Returns 400 error & message when userId or courseId is missing | **3 to >0.0 pts**<br>Only partial check or incorrect status/message | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Create instructors Table & Insert Records | **5 to >3.0 pts**<br>Correct SQL syntax: AUTO_INCREMENT, UNIQUE, 3 valid inserts | **3 to >0.0 pts**<br>Missing constraints or partial inserts | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Add User + Enroll + JOIN Query | **5 to >3.0 pts**<br>Executes all 3 SQL steps correctly, shows enrolled user | **3 to >0.0 pts**<br>Only some parts completed or join query incorrect | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Create a new entry in MongoDB database | **5 to >3.0 pts**<br>Data is inserted correctly using the appropriate commands | **3 to >0.0 pts**<br>Data added is incomplete | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Explain how Smart Search enhances user experience compared to a standard search bar | **5 to >3.0 pts**<br>Clear comparison with practical insights and examples related to learning experiences | **3 to >0.0 pts**<br>Basic explanation with limited comparison or unclear LMS context | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Describe how frontend, backend, and database components contribute to Smart Search | **5 to >3.0 pts**<br>Clear explanation of each layer's role and how they interact in a full-stack LMS | **3 to >0.0 pts**<br>Some roles unclear or missing, or lacks clarity on interactions | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| Identify potential challenges and conceptually discuss solutions | **5 to >3.0 pts**<br>Well-reasoned challenges with thoughtful suggestions or strategies | **3 to >0.0 pts**<br>Vague or generic mention of challenges; solutions not well developed | **0 pts**<br>Incorrect submission OR No Submission | 5 pts |
| | | | **Total Points:** | **70** |
