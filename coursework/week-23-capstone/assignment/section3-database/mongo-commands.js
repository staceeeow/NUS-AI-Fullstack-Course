// Section 3: MongoDB - AI-Powered LMS
// Run with: mongosh --eval "$(cat mongo-commands.js)"   (or paste into mongosh interactively)

db = db.getSiblingDB("lms");

// Create a new entry in the database
db.students.insertOne({
  name: "Cara Ong",
  email: "cara.ong@example.com",
  enrolledCourses: ["AI & Machine Learning"],
});

// Confirm it was saved
db.students.find();
