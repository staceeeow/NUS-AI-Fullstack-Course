# Module 12: Week 14: Required Assignment

| Due | Points | Submitting | Attempts | Allowed Attempts | Available |
|---|---|---|---|---|---|
| Jul 28 by 4:29pm | 20 | a file upload | 0 | 1 | after Jul 14 at 2:30am |

## Learning Outcomes Addressed

After completing this assignment, you should be able to:

- Create a Basic RESTful API
- Test the API with Postman
- Understand Error Handling in API

## Task

To develop and test a basic RESTful API using Express.js for managing student records, implementing standard CRUD operations. You'll also implement error handling and validate user input, and use Postman for testing.

### 1. Create a Basic RESTful API (10 Marks)

Use Express.js to implement the following endpoints for managing student records

a) GET /students: Retrieve a list of all students.

b) GET /students/:id: Retrieve a specific student by its ID.

c) POST /students: Add a new student.

d) PUT /students/:id: Update an existing student.

e) DELETE /students/:id: Delete a student record.

Each student should have the following attributes:

- id: Integer (Student identifier)
- name: String (Student name)
- email: String (Student email)
- program: String (Student program)

### 2. Test the API with Postman (5 Marks)

a) Verify correct HTTP methods and request formats.

b) Ensure proper **status codes**: 200 OK, 201 Created, 404 Not Found, 400 Bad Request.

c) Inspect **JSON** responses for structure and accuracy. Optionally include **Postman test scripts** (e.g., status code checks, array length assertions).

### 3. Error Handling and Input Validation (5 Marks)

a) If a student record is not found in the GET, PUT, or DELETE requests, return a 404 Not Found response.

b) If invalid data is sent in the POST or PUT requests, return a 400 Bad Request response.

## Assessment Criteria

Your submission will be assessed based on the rubrics on this page.

## Submission Instructions

Complete each task:

- Task1 (Create a Basic RESTful API)
- Task2 (Test the API with Postman)
- Task3 (Error Handling and Input Validation)

- You may submit your work in any format that clearly shows completion of each task — e.g., code files, screenshots, or documentation — as long as all requirements in the rubric are covered.
- Once all required files are saved, zip the entire folder.
- The final zipped file should be named as **Module 12_Week 14_Required Assignment_[Your last name]**
- Make sure your files include all required elements as specified above.

To submit your response:

- Click on the **Start Assignment** button at the top of this page to make your submission.
- Upload the files.
- Click on **Submit Assignment**.

Your submission will be considered complete when it meets these criteria:

- Includes all the critical elements outlined in the activity instructions and assessment criteria.
- Adheres to the submission guidelines.
- Is submitted on time.

*This is a required activity and counts towards programme completion.*

---

## Module 12: Week 14: Rubric

| Criteria | Proficient | Developing | Below Expectation | Pts |
|---|---|---|---|---|
| Q1a | **3 to >1.5 pts**<br>All endpoints are functional with correct HTTP methods | **1.5 to >0.0 pts**<br>One or more endpoints missing or not working properly | **0 pts**<br>Incorrect submission OR No Submission | 3 pts |
| Q1b | **2 to >1.0 pts**<br>Retrieves a single student by ID and returns it in JSON format. | **1 to >0.0 pts**<br>Returns incorrect information or fails due to invalid student ID. | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q1c | **2 to >1.0 pts**<br>Successfully adds new student information | **1 to >0.0 pts**<br>Student information is added with missing validation | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q1d | **1 to >0.5 pts**<br>Updates an existing student information and returns the updated data in JSON. | **0.5 to >0.0 pts**<br>Updates student information but has issues with validation or response format. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q1e | **2 to >1.0 pts**<br>Deletes student record and returns response. | **1 to >0.0 pts**<br>Deletion is attempted but fails. | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q2a | **2 to >1.0 pts**<br>Demonstrates full coverage of endpoints using appropriate requests | **1 to >0.0 pts**<br>One or more HTTP methods not tested | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q2b | **2 to >1.0 pts**<br>Status codes match the operation | **1 to >0.0 pts**<br>Codes are incorrect or inconsistently used | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q2c | **1 to >0.5 pts**<br>JSON responses contain correct and expected fields | **0.5 to >0.0 pts**<br>Structure is inconsistent or values missing | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q3a | **3 to >1.5 pts**<br>Returns 404 Not Found if student record does not exist. | **1.5 to >0.0 pts**<br>Returns an incorrect error code or lacks validation. | **0 pts**<br>Incorrect submission OR No Submission | 3 pts |
| Q3b | **2 to >1.0 pts**<br>Returns 400 Bad Request when incorrect or missing data is sent in POST/PUT requests. | **1 to >0.0 pts**<br>Error handling is present but fails for some invalid inputs. | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| | | | **Total Points:** | **20** |
