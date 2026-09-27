# Module 17: Week 19: Required Assignment

| Due | Points | Submitting | Attempts | Allowed Attempts | Available |
|---|---|---|---|---|---|
| Sep 1 by 4:29pm | 20 | a file upload | 0 | 1 | after Aug 25 at 2:30am |

## Learning Outcomes Addressed

After completing this assignment, you should be familiar with the following:

- How to implement collaborative filtering techniques, including user-based and item-based approaches?
- How to handle sparsity in user-item matrices and improve recommendation quality using matrix factorisation?
- How to evaluate recommender system performance using metrics like Mean Squared Error (MSE) or Root Mean Squared Error (RMSE)?
- How to apply machine learning techniques, such as k-nearest neighbours, for personalised recommendations?
- How to address cold-start problems for new users?

## Task

To explore and implement collaborative filtering techniques, including user-based and item-based approaches, to build a recommendation system for movies. It involves addressing challenges such as sparsity in user-item matrices, using matrix factorisation techniques to improve recommendation quality, and evaluating the performance of recommender systems using metrics like Mean Squared Error (MSE) or Root Mean Squared Error (RMSE). The assignment also aims to apply machine learning techniques, such as k-nearest neighbours, to provide personalised recommendations and address issues like cold-start problems for new users.

### 1. Collaborative Filtering: User-Based vs. Item-Based (4 Marks)

a) Compare and contrast user-based collaborative filtering with item-based collaborative filtering.

b) Discuss which approaches are more efficient in a large-scale system like Netflix.

### 2. Sparsity and Matrix Factorisation (2 Marks)

a) Discuss matrix sparsity in collaborative filtering.

b) Explain how matrix factorisation helps address the sparsity issue.

### 3. Collaborative Filtering: User-Item Matrix and K-Nearest Neighbours (7 Marks)

You are provided with a dataset containing user ratings for movies (columns: user_id, movie_id, rating). [ratings.csv]

a) Build a user-item matrix (utility matrix) where each row represents a user, and each column represents a movie.

b) Calculate the sparsity of the user-item matrix and explain the results.

c) Use the k-nearest neighbours algorithm to recommend movies based on user ratings. Implement a function to recommend the top 5 movies for a given user based on their rating history.

d) Handle the cold-start problem for new users by using item-based collaborative filtering to recommend movies similar to those the user has already rated.

### 4. Evaluation of Recommender System (7 Marks)

a) Evaluate the performance of your content-based and collaborative filtering recommender systems using a metric such as Mean Squared Error (MSE) or Root Mean Squared Error (RMSE).

b) Test the performance on a subset of the movie dataset and analyse how well the system is performing.

c) Provide the code and analysis of the recommender system's performance.

## Assessment Criteria

Your submission will be assessed based on the Rubrics on this page.

## Submission Instructions

Complete each task:

- Task1 (Collaborative Filtering: User-Based vs. Item-Based)
- Task2 (Sparsity and Matrix Factorisation)
- Task3 (Collaborative Filtering: User-Item Matrix and K-Nearest Neighbours)
- Task4 (Evaluation of Recommender System)

- You may submit your work in any format that clearly shows completion of each task — e.g., code files, screenshots, or documentation — as long as all requirements in the rubric are covered.
- Make sure your files include all required elements as specified above.
- Once all required files are saved, zip the entire folder.
- The final zipped file should be named **Module 17_Week 19_Required Assignment_[Your last name]**

To submit your response:

- Click on the **Start Assignment** button at the top of this page to make your submission.
- Upload the files.
- Click on **Submit Assignment**.

Your submission will be considered complete when it meets these criteria:

- Includes all the critical elements outlined in the activity instructions and assessment criteria.
- Adheres to the submission length guidelines.
- Is submitted on time.

*This is a required activity and counts towards programme completion.*

---

## Module 17: Week 19: Rubric

| Criteria | Proficient | Developing | Below Expectation | Pts |
|---|---|---|---|---|
| Q1a | **2 to >1.0 pts**<br>Clear definitions with key differences explained | **1 to >0.0 pts**<br>Definitions and comparisons are unclear or lack depth | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q1b | **2 to >1.0 pts**<br>Correctly identifies which approach is more efficient and why | **1 to >0.0 pts**<br>Comparison is vague or reasoning is weak | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q2a | **1 to >0.5 pts**<br>Explains the concept of sparse matrices and why they affect recommendations | **0.5 to >0.0 pts**<br>Definition present but lacks examples or clarity | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q2b | **1 to >0.5 pts**<br>Discusses how matrix factorisation addresses the sparsity issue | **0.5 to >0.0 pts**<br>Mentions factorisation but lacks explanation or technique names | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q3a | **2 to >1.0 pts**<br>Matrix is correctly built with users as rows, movies as columns | **1 to >0.0 pts**<br>Matrix is incorrect or missing rows/columns | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3b | **2 to >1.0 pts**<br>Correct calculation and meaningful interpretation of sparsity | **1 to >0.0 pts**<br>Calculation present but interpretation is weak or missing | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3c | **2 to >1.0 pts**<br>Recommender correctly identifies neighbors and recommends top items | **1 to >0.0 pts**<br>KNN model is incomplete or incorrect usage | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3d | **1 to >0.5 pts**<br>Strategy for cold-start is implemented with fallback options or similarity-based filtering | **0.5 to >0.0 pts**<br>Strategy is discussed but not correctly implemented | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| Q4a | **3 to >1.5 pts**<br>Proper metric chosen and computed using standard libraries | **1.5 to >0.0 pts**<br>Metric used incorrectly or unclear calculation | **0 pts**<br>Incorrect submission OR No Submission | 3 pts |
| Q4b | **3 to >1.5 pts**<br>Both models tested on test data and performance compared | **1.5 to >0.0 pts**<br>Only one model evaluated or lacks meaningful comparison | **0 pts**<br>Incorrect submission OR No Submission | 3 pts |
| Q4c | **1 to >0.5 pts**<br>All code runs and supports written analysis | **0.5 to >0.0 pts**<br>Code is present but has errors or does not align with analysis | **0 pts**<br>Incorrect submission OR No Submission | 1 pts |
| | | | **Total Points:** | **20** |
