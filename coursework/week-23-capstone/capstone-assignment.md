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

### HTML, CSS, BOOTSTRAP

**Objective:** This code helps you learn how to create flexible layouts using Flexbox and Bootstrap. It includes a menu bar and a section built with Flexbox. You'll also add more Flexbox and Bootstrap cards. This helps you understand modern CSS layouts and how to build user interfaces using components.

**Instructions – HTML, CSS, Bootstrap**

**Step 1: Create a Project Folder in VS Code**
- Open Visual Studio Code.
- Go to File > Open Folder and create or choose a folder (e.g., `ai-lms-ui-module3`).
- In that folder, make a new file and name it `index.html`.

**Step 2: Add Starter Code**
- Paste the given HTML code into `index.html`. To get this output, see [ForHuman/Section1_HTML_Step2.png](ForHuman/Section1_HTML_Step2.png) — a blue "AI-LMS" nav bar (Dashboard | Courses | Profile), a "Welcome to Your Learning Dashboard" heading, and one Flexbox feature box titled "Adaptive Courses".
- Save the file.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>AI LMS | Module 3-4</title>
  <!-- Bootstrap CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    /* Example Flexbox Layout */
    .feature-box {
      display: flex;
      justify-content: space-between;
      /* ...continues in the original; not fully captured */
    }
  </style>
</head>
```

The code includes: semantic HTML tags like `<main>`, `<section>`, `<nav>`; internal CSS with Flexbox for layout; Bootstrap 5 for responsive design and ready-made parts.

**Step 3: Run the Page**

**Now, perform the below tasks:**

1. **Add two more feature boxes using Flexbox.** In the section where the "Adaptive Courses" card is, add two more cards: one titled **"Progress Tracking"**, one titled **"Real-time Assessments"**.
2. **Add a new section below the feature boxes with two Bootstrap cards placed side by side:** one card should say **"HTML Module"**, the other **"CSS Module"**.

Hints:
- Start with a container structure using Bootstrap Grid:
  ```html
  <div class="row">
    <div class="col-md-6"> <!-- Card 1 --> </div>
    <div class="col-md-6"> <!-- Card 2 --> </div>
  </div>
  ```
- Inside each column, add a Bootstrap card using `class="card"`; inside that, add `card-body`, `card-title`, `card-text`, and a `btn btn-primary`.
- Wrap this layout inside a `<section>` tag to keep your structure semantic.

### JAVASCRIPT

**Objective:** This code helps you learn basic JavaScript skills like making buttons work, changing page content, checking form inputs, and handling user actions.

**Instructions – JavaScript**

**Step 1: Set Up Project Folder in Visual Studio Code** — create/open a folder (e.g., `ai-lms-js-module5`), add a new file named `Javascript.html`.

**Step 2: Add Starter Code** — copy and paste the provided HTML/CSS/JS into `Javascript.html`. To get this output, see [ForHuman/Section1_JAVASCRIPT_Step2.pdf](ForHuman/Section1_JAVASCRIPT_Step2.pdf). The reference output is a page titled "AI-Powered LMS: JavaScript Practice" with four sections already wired up as starter behaviour: **1. Enroll in Course** (a button that alerts `You have been enrolled in the 'JavaScript Essentials' course!`), **2. AI Suggestion Box** (a button that shows `We recommend: 'Responsive Web Design' next!`), **3. Validate Learner Email**, and **4. Type Your Learning Goal** — the last two are the parts you complete below.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>AI LMS - Module 5: JavaScript Interactivity</title>
  <style>
    body { font-family: 'Segoe UI', sans-serif; padding: 20px; background-color: #f5f7fa; }
    .section { background: white;
      /* ...continues: sections for "Enroll in Course", "AI Suggestion Box",
         "Validate Learner Email" (id="email", id="emailMessage") and
         "Type Your Learning Goal" (id="goalInput", id="goalOutput"). */
    }
  </style>
</head>
```

The project covers: basic JavaScript interactivity (button alerts); DOM manipulation; form validation logic; event handling for user input (keypress/input events); internal CSS styles within `<style>`.

**Step 4: Run the Code** — right-click `Javascript.html` and select "Open with Live Server", or double-click to open in your browser.

**Now, perform the below tasks:**

1. **Complete the Email Validation Function.** In the section titled "Validate Learner Email", complete the JavaScript function `validateEmail()` so it checks whether the user's input includes an `@` symbol.
   - If invalid (no `@`), display: `Invalid email address`
   - If valid, display: `Email accepted!`
   - Hints: use `document.getElementById("email").value`; use `includes("@")`; update via `document.getElementById("emailMessage").textContent = "..."`; use `return false` to stop submit if invalid.
2. **Add Keypress (Input) Event for Goal Typing.** In the section "Type Your Learning Goal", make the text below the input box dynamically update as the learner types their goal.
   - Hints: `let goalInput = document.getElementById("goalInput");`; use `addEventListener('input', function() {...})`; get text via `goalInput.value`; update via `document.getElementById("goalOutput").textContent = "Your goal: " + ...`

### REACT.JS

**Objective:** Learn key React.js skills like using components, writing JSX, managing data with `useState`, passing data with props, and moving between pages.

**Instructions**

**Step 1: Set Up the Project Folder in VS Code** — `mkdir ai-lms`, `cd ai-lms`.

**Step 2: Set Up the Frontend (React.js)** — this uses Create React App, not Vite:
```
npx create-react-app client
cd client
npm start
```
This opens the default React page at `http://localhost:3000`.

**Step 3: Add Starter Code** — copy the code below to get this output, see [ForHuman/Section1_REACT_Step3.pdf](ForHuman/Section1_REACT_Step3.pdf). Replace the contents of `client/src/` with:

`App.js`:
```jsx
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './pages/Home';
import Login from './pages/Login';
import Courses from './pages/Courses';
import Chatbot from './pages/Chatbot';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={} />
        <Route path="/login" element={} />
        <Route path="/courses" element={} />
        <Route path="/chatbot" element={} />
      </Routes>
    </Router>
  );
}
export default App;
```

`index.js`:
```jsx
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render();
```

**Step 4: Understand code components**

| File/Folder | Purpose |
|---|---|
| `App.js` | Defines routes for the LMS (home, login, courses, chatbot) |
| `pages/` | Contains different pages |
| `components/` | Future reusable UI components (e.g., NavBar, CourseCard) |
| `assets/` | Images, icons |
| `public/` | Static HTML assets |
| `index.js` | Entry point to load the React app |

**Sample Code — `Login.js` and `CourseRecommender.js`** *(teaches: components, useState, event handling, form validation, conditional rendering, user interaction)*

```jsx
import React, { useState } from 'react';

// Login Component
function Login() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [message, setMessage] = useState('');
  const handleLogin = (e) => {
    e.preventDefault();
    if (email === '' || password === '') {
      setMessage('Please fill in all fields.');
    } else if (!email.includes('@')) {
      setMessage('Invalid email format.');
    } else {
      setMessage('Login successful!');
      // You can add API call or redirection here
    }
  };
  return (
    <div style={{ padding: '20px' }}>
      <h2>Login to LMS</h2>
      <form onSubmit={handleLogin}>
        <input type="text" placeholder="Email" value={email} onChange={(e) => setEmail(e.target.value)} style={{ marginBottom: '10px', display: 'block' }} />
        <input type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} style={{ marginBottom: '10px', display: 'block' }} />
        <button type="submit">Login</button>
      </form>
      {message && <p>{message}</p>}
    </div>
  );
}

// Course Recommender Component
function CourseRecommender() {
  const [interest, setInterest] = useState('');
  const [recommended, setRecommended] = useState('');
  const recommendCourse = () => {
    if (interest.toLowerCase().includes('web')) {
      setRecommended('We recommend: React.js for Beginners');
    } else if (interest.toLowerCase().includes('data')) {
      setRecommended('We recommend: Intro to Data Science with Python');
    } else if (interest.toLowerCase().includes('ai')) {
      setRecommended('We recommend: Machine Learning with Scikit-Learn');
    } else {
      setRecommended('Please enter a valid interest (e.g., AI, Web, Data)');
    }
  };
  return (
    <div style={{ padding: '20px' }}>
      <h2>AI Course Recommender</h2>
      <input type="text" placeholder="Enter your interest (e.g., AI, Web, Data)" value={interest} onChange={(e) => setInterest(e.target.value)} style={{ marginBottom: '10px', display: 'block' }} />
      <button onClick={recommendCourse}>Get Recommendation</button>
      {recommended && <p style={{ marginTop: '10px' }}>{recommended}</p>}
    </div>
  );
}

// Export both components
export { Login, CourseRecommender };
```

`App.js` (integration):
```jsx
import React from 'react';
import { Login, CourseRecommender } from './components/LMSComponents'; // adjust path if needed
function App() {
  return (
    <div>
      <Login />
      <hr />
      <CourseRecommender />
    </div>
  );
}
export default App;
```

**Now, perform the below tasks:**

1. **Password Strength Checker.** Create a React component `PasswordStrength.js`. Allow the user to enter a password. When they click **Check Strength**:
   - If shorter than 6 characters → Show: **Weak password**
   - If 6+ characters and contains a number → Show: **Strong password**
   - Hints: `useState()` to track password and result message; check length with `.length`; use regex `/\d/` to detect numbers; show result in a paragraph below the input.
2. **Toggle Course Description.** In a component named `CourseToggle.js`, create a button labelled "Show Description". When clicked: display the course description *"This course covers React fundamentals including components, JSX, and props."*; when clicked again, hide it.
   - Hints: `useState()` to toggle between show/hide; boolean state variable (e.g., `isVisible`); button click event changes the state; use `{isVisible && <p>...</p>}` to conditionally show content.

---

## Section 2: Backend Development

Next, the backend is added using `Express.js` and `Node.js`. Students create REST APIs to manage data, logins, and app rules. The frontend from Section 1 uses these APIs to register users, log in, show courses, and track progress. This makes the website active and responsive to users. The backend also keeps the data safe and connects the user interface to the database.

### Express.js (Node.js)

`Express.js` is a simple and fast tool that helps you build backend APIs using Node.js. Node.js lets you run JavaScript on the server (not just in the browser) and can handle things like web requests, files, and networks. But using only Node.js can be tricky and time-consuming. Express makes it easier by giving a clear and easy way to build web servers and APIs. It works on top of Node.js and helps you build backend features quickly and in an organised way.

**1. Manage Courses and Learners**
- `GET /courses` → Fetch all available courses (see [ForHuman/Section2_Sample_Output.png](ForHuman/Section2_Sample_Output.png) for the expected JSON — React for Beginners, Intro to Data Science, AI Fundamentals)
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
- The output should resemble the reference image: [ForHuman/Section2_Task1.png](ForHuman/Section2_Task1.png)

**2. Add error handling for missing fields in the `/enroll` `POST` request**

Improve the `/enroll` route so that if `userId` or `courseId` is missing from the request body, it responds with status code `400` and message:

```
Missing userId or courseId in request.
```

Hints:
- Check if `req.body.userId` and `req.body.courseId` exist
- Use `res.status(400).json({ error: '...' })` to send error response
- Otherwise, proceed with the enrollment confirmation
- The output should resemble the reference image: [ForHuman/Section2_Task2.png](ForHuman/Section2_Task2.png)

---

## Section 3: Database

This section aims to equip students with practical skills in working with two popular databases: MySQL and MongoDB. Using MySQL through the Command Prompt, students will learn to create databases, design relational tables, insert sample data, and perform CRUD operations in a Learning Management System (LMS) context. With MongoDB, students will use MongoDB Compass and Express.js to design schemas, insert and retrieve data, and build RESTful APIs for a school management system. This hands-on approach builds foundational knowledge in both SQL-based and NoSQL database systems.

### MySQL

**Objective:** guides users through MySQL database operations using Command Prompt — creating a database, creating tables, inserting sample data, and performing basic CRUD operations, plus tasks such as adding instructors and enrolling new users.

**Step 1: Access Command Prompt** — `Windows + R` → `cmd` → Enter, or Start Menu → search "Command Prompt" → open as administrator.

**Step 2: Navigate to MySQL Bin Folder** — `cd "C:\Program Files\MySQL\MySQL Server 8.0\bin"` (adjust path as needed).

**Step 3: Log Into MySQL** — `mysql -u root -p`, then enter the root password.

**Step 4: Create and Use a Database**
```sql
CREATE DATABASE lms_db;
USE lms_db;

CREATE TABLE users ( user_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100) UNIQUE, password VARCHAR(255) );
CREATE TABLE courses ( course_id INT AUTO_INCREMENT PRIMARY KEY, course_name VARCHAR(100), description TEXT );
CREATE TABLE enrollments ( enrollment_id INT AUTO_INCREMENT PRIMARY KEY, user_id INT, course_id INT, enrollment_date DATE, FOREIGN KEY (user_id) REFERENCES users(user_id), FOREIGN KEY (course_id) REFERENCES courses(course_id) );
CREATE TABLE assessments ( assessment_id INT AUTO_INCREMENT PRIMARY KEY, course_id INT, title VARCHAR(100), max_score INT, FOREIGN KEY (course_id) REFERENCES courses(course_id) );
```

**Step 2: Insert Sample Data**
```sql
INSERT INTO users (name, email, password) VALUES ('Alice Johnson', 'alice@example.com', 'alice123'), ('Bob Smith', 'bob@example.com', 'bob123'), ('Charlie Lee', 'charlie@example.com', 'charlie123');
INSERT INTO courses (course_name, description) VALUES ('HTML Basics', 'Introduction to HTML and web structure.'), ('CSS Design', 'Learn how to style websites using CSS.'), ('MySQL for Beginners', 'Basic concepts of relational databases.');
INSERT INTO enrollments (user_id, course_id, enrollment_date) VALUES (1, 1, '2024-01-10'), (1, 3, '2024-02-05'), (2, 2, '2024-02-15'), (3, 1, '2024-03-01');
INSERT INTO assessments (course_id, title, max_score) VALUES (1, 'HTML Quiz 1', 100), (2, 'CSS Midterm', 80), (3, 'MySQL Final Test', 90);
```

**Step 3: CRUD Examples**
```sql
SELECT * FROM users;
SELECT u.name, c.course_name FROM enrollments e JOIN users u ON e.user_id = u.user_id JOIN courses c ON e.course_id = c.course_id WHERE u.user_id = 1;
UPDATE users SET email = 'alice.new@example.com' WHERE user_id = 1;
DELETE FROM enrollments WHERE enrollment_id = 2;
```

**Now, perform the below tasks:**

1. **Create a new table named `instructors`:** `instructor_id` (Primary Key, auto-increment), `name` (varchar), `email` (unique).
   - Hint: use `CREATE TABLE` with `AUTO_INCREMENT` and `UNIQUE`; use `INSERT INTO` to add entries.
2. **Enroll new user Daniel Rose** (`daniel1@lms.com`, password: `daniel123`) **in "CSS Design"** — add this user to the `users` table, enroll him in "CSS Design" with today's date, and write a query to display all users enrolled in "CSS Design".
   - Hint: find the `course_id` for "CSS Design" from the courses table; use `INSERT INTO enrollments` with the correct `user_id`/`course_id`; use `JOIN` to link users, enrollments and courses.

### Mongo DB

**Objective:** understand how to use MongoDB as a NoSQL database to design and manage a backend for a School Information System, modelling schools, courses, and enrollments with Mongoose schemas, ObjectId references, and RESTful APIs with Express.js.

**Instructions and Installation:** MongoDB Compass from [https://www.mongodb.com/try/download/compass](https://www.mongodb.com/try/download/compass) → choose OS + "Stable" edition → install → launch → connect to `mongodb://localhost:27017`.

**Steps for integrating MongoDB with backend**

```
cd Section3_Mongodb
cd Back_end
npm init -y
npm install express mongoose cors
```

File structure:
```
FULLSTACK/
└── backend/
    ├── server.js          # Main Express server
    ├── models/
    │   ├── schoolModel.js
    │   ├── courseModel.js
    │   └── enrollmentModel.js
    ├── routes/
    │   ├── schoolRoutes.js
    │   ├── courseRoutes.js
    │   └── enrollmentRoutes.js
    └── package.json
```

**Setup Instructions:**

1. Download & unzip `MongoDB.zip` (now extracted at [ForHuman/MongoDB/School-System/Backend/](ForHuman/MongoDB/School-System/Backend/)) — the full starter backend (`server.js`, `models/`, `routes/`, `public/`), connecting to `mongodb://localhost:27017/schoolSystem`, with API routes mounted at `/api/schools`, `/api/courses`, `/api/enrollments`.
2. Paste school data in MongoDB Compass — School Collection (`schoolsystem.schools`):
   ```json
   { "_id": { "$oid": "665f1fa4a7d3f1a0aabc1001" }, "name": "Greenwood High School", "address": "123 Maple Street, Springfield", "principal": "Mr. John Adams" }
   { "_id": { "$oid": "665f1fa4a7d3f1a0aabc1002" }, "name": "Riverside Public School", "address": "456 Oak Avenue, Riverdale", "principal": "Ms. Linda Carter" }
   ```
3. Add Course and Enrollment data the same way in MongoDB Compass.
4. Create the server: `npm init -y && npm install express mongoose`, then `node server.js`.
   - **YOU MUST SEE** — see [ForHuman/MongoDB_Output.pdf](ForHuman/MongoDB_Output.pdf) for the full reference screenshots: `MongoDB connected` / `Server running on port 5000`.
   - To view all users: `curl http://localhost:5000/api/users`

**Now perform the below task:**

1. Create a new entry in `school` in the MongoDB database and insert a document with the parameters: `_id`, `name`, `address`, `principal`.
   - Hint: use MongoDB Compass → "ADD DATA".

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
