import sqlite3
from pathlib import Path

from flask import Flask, render_template, request, redirect, url_for, session

# Task 2a: Flask web application with Jinja2 (Flask uses Jinja2 by default)
app = Flask(__name__)
app.secret_key = "week12-secret"

DB_PATH = Path(__file__).parent / "students.db"


def get_db():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn


def init_db():
    conn = get_db()
    conn.execute(
        """
        CREATE TABLE IF NOT EXISTS students (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT NOT NULL,
            program TEXT NOT NULL
        )
        """
    )
    count = conn.execute("SELECT COUNT(*) AS n FROM students").fetchone()["n"]
    if count == 0:
        conn.execute("INSERT INTO students (name, email, program) VALUES (?, ?, ?)", ("Alice Tan", "alice@example.com", "Computer Science"))
        conn.execute("INSERT INTO students (name, email, program) VALUES (?, ?, ?)", ("Ben Lim", "ben@example.com", "Data Science"))
        conn.commit()
    conn.close()


# Task 2b / Task 3d: dynamic content rendering with Jinja2 + session management
@app.route("/")
def index():
    session["visits"] = session.get("visits", 0) + 1
    conn = get_db()
    students = conn.execute("SELECT * FROM students ORDER BY id").fetchall()
    conn.close()
    return render_template("index.html", students=students, visits=session["visits"])


# Task 4a: CRUD - Create
@app.route("/students/new", methods=["GET", "POST"])
def new_student():
    # Task 2c: handle both GET (show form) and POST (submit form)
    if request.method == "POST":
        name = request.form.get("name", "").strip()
        email = request.form.get("email", "").strip()
        program = request.form.get("program", "").strip()
        conn = get_db()
        conn.execute("INSERT INTO students (name, email, program) VALUES (?, ?, ?)", (name, email, program))
        conn.commit()
        conn.close()
        return redirect(url_for("index"))
    return render_template("form.html", student=None)


# Task 4a: CRUD - Update
@app.route("/students/<int:student_id>/edit", methods=["GET", "POST"])
def edit_student(student_id):
    conn = get_db()
    if request.method == "POST":
        name = request.form.get("name", "").strip()
        email = request.form.get("email", "").strip()
        program = request.form.get("program", "").strip()
        conn.execute(
            "UPDATE students SET name = ?, email = ?, program = ? WHERE id = ?",
            (name, email, program, student_id),
        )
        conn.commit()
        conn.close()
        return redirect(url_for("index"))

    student = conn.execute("SELECT * FROM students WHERE id = ?", (student_id,)).fetchone()
    conn.close()
    if student is None:
        return "Student not found", 404
    return render_template("form.html", student=student)


# Task 4a: CRUD - Delete
@app.route("/students/<int:student_id>/delete", methods=["POST"])
def delete_student(student_id):
    conn = get_db()
    conn.execute("DELETE FROM students WHERE id = ?", (student_id,))
    conn.commit()
    conn.close()
    return redirect(url_for("index"))


if __name__ == "__main__":
    init_db()
    app.run(port=5000, debug=True)
