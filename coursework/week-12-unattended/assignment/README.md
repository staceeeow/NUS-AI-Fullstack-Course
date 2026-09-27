# Module 10 Week 12 - Required Assignment

Two small student-records apps, same data model (`id, name, email, program`), covering all 4 tasks.

## express-app (Task 1, 3a-b, 4b)

Express.js + Pug templates + session (`express-session`) + SQLite (`node:sqlite`, built into Node 22+).

```
cd express-app
npm install
node server.js
```

Visit http://localhost:3000 — lists students, add/edit/delete (full CRUD), and shows a session-based visit counter. `public/style.css` is served as a static asset.

## flask-app (Task 2, 3c-d, 4a)

Flask + Jinja2 templates + Flask session + SQLite (`sqlite3`, stdlib).

```
cd flask-app
pip install flask
python app.py
```

Visit http://localhost:5000 — same student CRUD + session visit counter, `static/style.css` served via Flask's static folder. `/students/new` and `/students/<id>/edit` handle both GET (show form) and POST (submit form).
