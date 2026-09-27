// Import the express module
const express = require('express');

// Create an Express application
const app = express();

// Define the port number to run the server on
const PORT = 5000;

// 1. Middleware to parse JSON bodies in requests
app.use(express.json());

app.get('/courses', (req, res) => {
  res.json([
    { id: 1, name: 'React for Beginners' },
    { id: 2, name: 'Intro to Data Science' },
    { id: 3, name: 'AI Fundamentals' },
  ]);
});

// Task 1: POST /enroll - enroll a user in a course
// Task 2: error handling for missing fields
app.post('/enroll', (req, res) => {
  const { userId, courseId } = req.body;

  if (!userId || !courseId) {
    return res.status(400).json({ error: 'Missing userId or courseId in request.' });
  }

  res.json({ message: `User ${userId} successfully enrolled in course ${courseId}.` });
});

app.listen(PORT, () => console.log(`LMS backend listening on http://localhost:${PORT}`));
