# Capstone Section 3 - MongoDB

Commands below were run against a local MongoDB 7.0.14 instance via `mongosh`. Output is captured directly from the server, not simulated.

## Create a new entry in the database

```js
db = db.getSiblingDB("lms");

db.students.insertOne({
  name: "Cara Ong",
  email: "cara.ong@example.com",
  enrolledCourses: ["AI & Machine Learning"],
});

db.students.find();
```

Result:

```
Insert result:
{
  acknowledged: true,
  insertedId: ObjectId('6ab8908e85d6609cb0be0e68')
}

db.students.find():
{
  _id: ObjectId('6ab8908e85d6609cb0be0e68'),
  name: 'Cara Ong',
  email: 'cara.ong@example.com',
  enrolledCourses: [
    'AI & Machine Learning'
  ]
}
```

## RESTful API on top of this data (Express + Mongoose)

`express-app/server.js` exposes the same `students` collection through a small REST API:

- `GET /students` - list all students
- `POST /students` - add a new student (validates `name`/`email` are present)

Verified with curl against the running server:

```
$ curl -X POST -H "Content-Type: application/json" \
       -d '{"name":"Ben Lim","email":"ben@example.com","enrolledCourses":["Full Stack Web Development"]}' \
       http://localhost:4000/students

{"name":"Ben Lim","email":"ben@example.com","enrolledCourses":["Full Stack Web Development"],"_id":"6ab890afe1ffb776fa23aa74","__v":0}

$ curl http://localhost:4000/students

[
  {"_id":"6ab8908e85d6609cb0be0e68","name":"Cara Ong","email":"cara.ong@example.com","enrolledCourses":["AI & Machine Learning"]},
  {"_id":"6ab890afe1ffb776fa23aa74","name":"Ben Lim","email":"ben@example.com","enrolledCourses":["Full Stack Web Development"],"__v":0}
]
```
