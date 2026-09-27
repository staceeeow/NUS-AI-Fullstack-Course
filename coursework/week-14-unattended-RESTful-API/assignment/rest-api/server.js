const express = require("express");

const app = express();
const PORT = 3000;

app.use(express.json());

// in-memory "database" of student records
let students = [
  { id: 1, name: "Alice Tan", email: "alice@example.com", program: "Computer Science" },
  { id: 2, name: "Ben Lim", email: "ben@example.com", program: "Data Science" },
];
let nextId = 3;

function findStudent(id) {
  return students.find((s) => s.id === Number(id));
}

function isValidStudentBody(body) {
  return (
    typeof body.name === "string" && body.name.trim() !== "" &&
    typeof body.email === "string" && body.email.trim() !== "" &&
    typeof body.program === "string" && body.program.trim() !== ""
  );
}

// GET /students - retrieve all students
app.get("/students", (req, res) => {
  res.status(200).json(students);
});

// GET /students/:id - retrieve a specific student
app.get("/students/:id", (req, res) => {
  const student = findStudent(req.params.id);
  if (!student) {
    return res.status(404).json({ error: "Student not found" });
  }
  res.status(200).json(student);
});

// POST /students - add a new student
app.post("/students", (req, res) => {
  if (!isValidStudentBody(req.body)) {
    return res.status(400).json({ error: "name, email and program are required" });
  }
  const student = { id: nextId++, name: req.body.name, email: req.body.email, program: req.body.program };
  students.push(student);
  res.status(201).json(student);
});

// PUT /students/:id - update an existing student
app.put("/students/:id", (req, res) => {
  const student = findStudent(req.params.id);
  if (!student) {
    return res.status(404).json({ error: "Student not found" });
  }
  if (!isValidStudentBody(req.body)) {
    return res.status(400).json({ error: "name, email and program are required" });
  }
  student.name = req.body.name;
  student.email = req.body.email;
  student.program = req.body.program;
  res.status(200).json(student);
});

// DELETE /students/:id - delete a student record
app.delete("/students/:id", (req, res) => {
  const index = students.findIndex((s) => s.id === Number(req.params.id));
  if (index === -1) {
    return res.status(404).json({ error: "Student not found" });
  }
  const [deleted] = students.splice(index, 1);
  res.status(200).json({ message: "Student deleted", student: deleted });
});

app.listen(PORT, () => console.log(`REST API listening on http://localhost:${PORT}`));
