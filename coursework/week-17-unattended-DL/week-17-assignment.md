# Module 15: Week 17: Required Assignment

| Due | Points | Submitting | Attempts | Allowed Attempts | Available |
|---|---|---|---|---|---|
| Aug 18 by 4:29pm | 20 | a file upload | 0 | 1 | after Aug 11 at 2:30am |

## Learning Outcomes Addressed

After completing this assignment, you should be familiar with the following:

- How to implement machine learning and deep learning models using Keras and Scikit-learn?
- How to apply a classification model and assess its performance using accuracy and confusion matrix?

## Task

To provide hands-on experience in implementing machine learning and deep learning models using popular libraries like Keras and Scikit-learn. It focuses on preparing sequence data for text classification; it begins by leveraging embedding and LSTM (Long Short-Term Memory) layers in Keras. This involves structuring the data appropriately and utilising Keras' capabilities to implement and train an LSTM model specifically designed for multi-class text classification tasks. Finally, it is essential to evaluate the performance of the deep learning models using accuracy as a key metric to determine their effectiveness in classifying the text data accurately.

Additionally, the assignment involves working with Scikit-learn to load and preprocess the Iris dataset, applying a classification model, and evaluating its performance using metrics like accuracy and confusion matrix. Through this, you will gain practical skills in model implementation, evaluation, and interpretation of results.

### 1. Deep Learning vs. Traditional Machine Learning (2 Marks)

Explain the differences between deep learning and traditional machine learning models. Use the hints below:

- Deep learning excels at handling unstructured data like images and text.
- Traditional ML techniques often require more manual data preprocessing and feature extraction.
- Mention the higher computational cost of deep learning models.

### 2. LSTM Networks in NLP (2 Marks)

Explain how Long Short-Term Memory (LSTM) networks are used in NLP to capture long-range dependencies in sequence data. Describe how LSTMs overcome the limitations of traditional RNNs.

### 3. Newswire Classification using ANN (8 Marks)

Build, train, and evaluate a Long Short-Term Memory (LSTM) network for multi-class classification using the Reuters Newswire dataset. The task is to classify short news articles into one of 46 possible categories.

You will do the following:

a) Load and preprocess the Reuters dataset using keras.datasets.reuters

b) Apply padding to ensure all input sequences are of the same length

c) One-hot encode the target labels for multi-class classification

d) Build an LSTM-based model using Keras; train, validate, and evaluate the model on unseen test data.

This hands-on exercise will help you understand:

- How to prepare sequence data for text classification
- How to use Embedding and LSTM layers in Keras
- How to implement and train an LSTM model for multi-class text classification
- How to evaluate deep learning models using accuracy

**Model Requirements:**

- Use a Sequential() model in Keras.
- The first layer should be an Embedding layer with:
  - input_dim = 10000 (vocabulary size)
  - output_dim = 128 (embedding dimensions)
  - input_length = 200 (length of each padded sequence)
- Add one LSTM layer with 64 units.
- Add a Dense output layer with activation='softmax' for 46 output classes.

**Expected Output:**

- Print model summary showing the Embedding, LSTM, and Dense layers.
- Show test accuracy after evaluation.
- Your model should achieve reasonable accuracy (above ~60%) after a few epochs of training.

### 4. Scikit-learn for a Classification Task (8 Marks)

a) Write code to load a standard dataset (such as the Iris dataset) using Scikit-learn.

b) Evaluate the model using metrics like accuracy or confusion matrix. Explain the model's performance based on the evaluation results.

## Assessment Criteria

Your submission will be assessed based on the Rubrics on this page.

## Submission Instructions

Complete each task:

- Task1 (Deep Learning vs. Traditional Machine Learning)
- Task2 (LSTM Networks in NLP)
- Task3 (Newswire Classification using ANN)
- Task4 (Scikit-learn for a Classification Task)

- You may submit your work in any format that clearly shows completion of each task — e.g., code files, screenshots, or documentation — as long as all requirements in the rubric are covered.
- Make sure your files include all required elements as specified above.
- Once all required files are saved, zip the entire folder.
- The final zipped file should be named **Module 15_Week 17_Required Assignment_[Your last name]**

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

## Module 15: Week 17: Rubric

| Criteria | Proficient | Developing | Below Expectation | Pts |
|---|---|---|---|---|
| Q1 | **2 to >1.0 pts**<br>Accurate comparison across all aspects | **1 to >0.0 pts**<br>Unclear comparisons and explanations | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q2 | **2 to >1.0 pts**<br>Clear explanation of LSTM's role in sequence modeling and how it improves on traditional RNNs | **1 to >0.0 pts**<br>Explanation is missing technical details | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3a | **2 to >1.0 pts**<br>Dataset is loaded successfully and processed correctly | **1 to >0.0 pts**<br>Error in data processing | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3b | **2 to >1.0 pts**<br>All sequences are padded using appropriate method | **1 to >0.0 pts**<br>Padding applied but with incorrect length or mode | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3c | **2 to >1.0 pts**<br>Labels are one-hot encoded for 46 classes | **1 to >0.0 pts**<br>Labels are encoded but class count is incorrect or incomplete | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q3d | **2 to >1.0 pts**<br>Model is trained, evaluated on test data, and achieves ≥60% accuracy | **1 to >0.0 pts**<br>Model is trained but accuracy is below 60% or not reported | **0 pts**<br>Incorrect submission OR No Submission | 2 pts |
| Q4a | **4 to >2.0 pts**<br>Data Loading is performed correctly | **2 to >0.0 pts**<br>Error in data loading | **0 pts**<br>Incorrect submission OR No Submission | 4 pts |
| Q4b | **4 to >2.0 pts**<br>Model is evaluated correctly using accuracy and confusion matrix. Explanation for model performance is provided. | **2 to >0.0 pts**<br>Error in model evaluation. Explanation for model performance is missing. | **0 pts**<br>Incorrect submission OR No Submission | 4 pts |
| | | | **Total Points:** | **20** |
