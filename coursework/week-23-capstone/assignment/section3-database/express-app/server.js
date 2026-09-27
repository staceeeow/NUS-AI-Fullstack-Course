const express = require("express");
const mongoose = require("mongoose");

const app = express();
const PORT = 4000;

app.use(express.json());

mongoose.connect("mongodb://127.0.0.1:27017/lms");

const studentSchema = new mongoose.Schema({
  name: { type: String, required: true },
  email: { type: String, required: true },
  enrolledCourses: [String],
});

const Student = mongoose.model("Student", studentSchema);

// GET /students - retrieve all students
app.get("/students", async (req, res) => {
  const students = await Student.find();
  res.json(students);
});

// POST /students - create a new student (school management system CRUD)
app.post("/students", async (req, res) => {
  const { name, email, enrolledCourses } = req.body;
  if (!name || !email) {
    return res.status(400).json({ error: "name and email are required" });
  }
  const student = await Student.create({ name, email, enrolledCourses });
  res.status(201).json(student);
});

app.listen(PORT, () => console.log(`Express + MongoDB API listening on http://localhost:${PORT}`));
