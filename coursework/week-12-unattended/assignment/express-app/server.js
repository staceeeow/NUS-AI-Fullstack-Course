const express = require("express");
const session = require("express-session");
const path = require("path");
const { DatabaseSync } = require("node:sqlite");

const app = express();
const PORT = 3000;

// Task 1a: Express.js with Pug template engine
app.set("view engine", "pug");
app.set("views", path.join(__dirname, "views"));
app.use(express.urlencoded({ extended: true }));

// Task 3a: serve static assets (CSS) from /public
app.use(express.static(path.join(__dirname, "public")));

// Task 3b: session management
app.use(
  session({
    secret: "week12-secret",
    resave: false,
    saveUninitialized: true,
  })
);

// Task 1c / Task 4b: SQLite database integration + CRUD
const db = new DatabaseSync(path.join(__dirname, "students.db"));
db.exec(`
  CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    program TEXT NOT NULL
  )
`);

// seed a couple of rows the first time the table is empty
const count = db.prepare("SELECT COUNT(*) AS n FROM students").get().n;
if (count === 0) {
  const insert = db.prepare("INSERT INTO students (name, email, program) VALUES (?, ?, ?)");
  insert.run("Alice Tan", "alice@example.com", "Computer Science");
  insert.run("Ben Lim", "ben@example.com", "Data Science");
}

// Task 3b: track visits in the session, Task 1b: dynamic content rendering with Pug
app.get("/", (req, res) => {
  req.session.visits = (req.session.visits || 0) + 1;
  const students = db.prepare("SELECT * FROM students ORDER BY id").all();
  res.render("index", { students, visits: req.session.visits });
});

// Task 4b: Create
app.get("/students/new", (req, res) => {
  res.render("form", { student: null });
});

app.post("/students", (req, res) => {
  const { name, email, program } = req.body;
  db.prepare("INSERT INTO students (name, email, program) VALUES (?, ?, ?)").run(name, email, program);
  res.redirect("/");
});

// Task 4b: Update
app.get("/students/:id/edit", (req, res) => {
  const student = db.prepare("SELECT * FROM students WHERE id = ?").get(req.params.id);
  if (!student) return res.status(404).send("Student not found");
  res.render("form", { student });
});

app.post("/students/:id", (req, res) => {
  const { name, email, program } = req.body;
  db.prepare("UPDATE students SET name = ?, email = ?, program = ? WHERE id = ?").run(
    name,
    email,
    program,
    req.params.id
  );
  res.redirect("/");
});

// Task 4b: Delete
app.post("/students/:id/delete", (req, res) => {
  db.prepare("DELETE FROM students WHERE id = ?").run(req.params.id);
  res.redirect("/");
});

app.listen(PORT, () => console.log(`Express + Pug app listening on http://localhost:${PORT}`));
