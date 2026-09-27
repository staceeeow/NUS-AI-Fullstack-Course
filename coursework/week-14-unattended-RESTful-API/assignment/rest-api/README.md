# Module 12 Week 14 - Required Assignment

Basic RESTful API for student records (Express.js, in-memory data).

```
npm install
node server.js
```

Server runs on http://localhost:3000.

| Method | Route | Success | Error |
|---|---|---|---|
| GET | /students | 200 + array | - |
| GET | /students/:id | 200 + student | 404 if not found |
| POST | /students | 201 + created student | 400 if name/email/program missing |
| PUT | /students/:id | 200 + updated student | 404 if not found, 400 if body invalid |
| DELETE | /students/:id | 200 + deleted student | 404 if not found |

`Student-API.postman_collection.json` — import into Postman (or run with `newman run Student-API.postman_collection.json` if newman is installed) to exercise every endpoint above, including the 404/400 error cases, with status-code assertions attached to each request.
