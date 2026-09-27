# Module 16: Week 18: Required Assignment

| Due | Points | Submitting | Attempts | Allowed Attempts | Available |
|---|---|---|---|---|---|
| Aug 25 by 4:29pm | 20 | a file upload | 0 | 1 | after Aug 18 at 2:30am |

## Learning Outcomes Addressed

After completing this assignment, you should be able to:

- Integrate machine learning models into full stack applications
- Save and load trained models for reuse
- Serve models using REST APIs
- Consume model predictions in frontend and backend systems

## Task

To build hands-on skills in integrating, persisting, and serving machine learning models in full stack environments. This assignment will focus on saving/loading models, serving them via REST APIs, and consuming predictions in frontend and backend systems.

### 1. Model Persistence Techniques (4 Marks)

a) Identify and describe three different model persistence techniques used in machine learning.

b) Explain their use cases, supported model types and common pitfalls or compatibility issues when used across environments.

c) Compare these techniques in terms of serialisation speed, Cross-platform compatibility and Human readability.

d) Present your findings in a comparison table and describe when to use each.

### 2. Model Serving with RESTful APIs (4 Marks)

a) Explain the role of Flask + Connexion in serving models via REST APIs.

b) Discuss the advantages of using an OpenAPI specification in this context.

c) Compare REST API model serving with MLflow-based serving.

d) Include example tools for model deployment (e.g., Flask, FastAPI, MLflow).

### 3. Consuming ML APIs in Full Stack Applications (6 Marks)

You are provided with a deployed machine learning API with a /predict endpoint. The endpoint expects a POST request:

a) Describe how you would consume the /predict endpoint, considering API request structure.

b) Describe how you would consume the /predict endpoint, considering handling asynchronous responses.

c) Describe how you would consume the /predict endpoint, considering CORS and security implications.

d) Implement a basic request to the API using your chosen method (JavaScript, Python, Postman, etc.). Include code and sample input/output.

### 4. MLflow Model Serving (6 Marks)

a) Briefly describe what MLflow is and how it differs from custom Flask APIs.

b) Use MLflow to serve a saved model locally or via mlflow.models.serve.

c) Include the model signature and input/output schema.

d) Paste a working cURL/Postman request and MLflow response.

## Assessment Criteria

Your submission will be assessed based on the rubrics on this page.

## Submission Instructions

Complete each task:

- Task1 (Model Persistence Techniques)
- Task2 (Model Serving with RESTful APIs)
- Task3 (Consuming ML APIs in Full Stack Applications)
- Task4 (MLflow Model Serving)

- You may submit your work in any format that clearly shows completion of each task — e.g., code files, screenshots, or documentation — as long as all requirements in the rubric are covered.
- Make sure your files include all required elements as specified above.
- Once all required files are saved, zip the entire folder.
- The final zipped file should be named **Module 16_Week 18_Required Assignment_[Your last name]**

To submit your response:

- Click on the **Start Assignment** button at the top of this page to make your submission.
- Upload the file.
- Click on **Submit Assignment**.

Your submission will be considered complete when it meets these criteria:

- Includes all the critical elements outlined in the activity instructions and assessment criteria.
- Adheres to the submission length guidelines.
- Is submitted on time.

*This is a required activity and counts towards programme completion.*

---

## Module 16: Week 18: Rubric

| Criteria | Proficient | Developing | Below Expectation | Pts |
|---|---|---|---|---|
| Q1a | **1 to >0.5 pts**<br>All three techniques are named and described clearly. | **0.5 to >0.0 pts**<br>Fewer than 3 techniques or vague descriptions. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q1b | **1 to >0.5 pts**<br>Use cases and model compatibility explained clearly for each method. | **0.5 to >0.0 pts**<br>Explanation is too brief or unclear for one or more methods. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q1c | **1 to >0.5 pts**<br>Comparison covers all three criteria meaningfully. | **0.5 to >0.0 pts**<br>Missing one or more comparison aspects or poorly explained. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q1d | **1 to >0.5 pts**<br>Provides thoughtful recommendation with reasoning. | **0.5 to >0.0 pts**<br>Recommendation is generic or lacks justification. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q2a | **1 to >0.5 pts**<br>Correctly explains both tools and their integration. | **0.5 to >0.0 pts**<br>Explanation misses or misrepresents one of the tools. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q2b | **1 to >0.5 pts**<br>Mentions schema validation, documentation, and clarity benefits. | **0.5 to >0.0 pts**<br>Explanation is vague or misses key advantages. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q2c | **1 to >0.5 pts**<br>Clear comparison with at least two well-explained differences. | **0.5 to >0.0 pts**<br>Partial or vague comparison. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q2d | **2 to >1.0 pts**<br>Lists at least three tools and briefly explains each. | **1 to >0.0 pts**<br>Tools listed without explanation or fewer than three mentioned. | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3a | **1 to >0.5 pts**<br>Structure is well-defined and explained. | **0.5 to >0.0 pts**<br>Structure is mentioned but unclear or incomplete. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q3b | **1 to >0.5 pts**<br>Uses async approach. | **0.5 to >0.0 pts**<br>Mentions async but lacks implementation detail. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q3c | **1 to >0.5 pts**<br>Identifies at least one CORS and one security-related concern with solutions. | **0.5 to >0.0 pts**<br>Mentions only one or lacks a mitigation approach. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q3d | **2 to >1.0 pts**<br>Working code and correct input/output shown. | **1 to >0.0 pts**<br>Code is incomplete or missing input/output. | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q4a | **1 to >0.5 pts**<br>Clearly defines MLflow's purpose & distinguishes from custom APIs. | **0.5 to >0.0 pts**<br>One concept is missing or unclear. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q4b | **1 to >0.5 pts**<br>Demonstrates correct use of MLflow command to serve model. | **0.5 to >0.0 pts**<br>Attempt made but incorrect or incomplete command usage. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q4c | **1 to >0.5 pts**<br>Signature includes data types, and shape. | **0.5 to >0.0 pts**<br>Missing key schema info. | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q4d | **3 to >1.5 pts**<br>Request correctly formatted and results in a valid response. | **1.5 to >0.0 pts**<br>Request has syntax issues or doesn't reflect actual output. | **0 pts**<br>Incorrect submission OR No Submission | 3 pts |
| | | | **Total Points:** | **20** |
