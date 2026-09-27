# Capstone Section 3 - MongoDB

`express-app/` is the actual starter backend provided in the assignment (`MongoDB.zip`: `server.js`, `models/`, `routes/`, `public/`) - not custom-built. It connects to a local MongoDB 7.0.14 instance, database `schoolSystem`, and was run for real to produce the output below.

## Setup

```
cd express-app
npm install
node server.js
```

Console output:

```
School API running at http://localhost:3001
 Connected to MongoDB: schoolSystem
```

Seeded `schools`, `courses` and `enrollments` in MongoDB Compass / via `mongosh` with the sample data from the assignment brief (Greenwood High School, Riverside Public School, plus their courses and two student enrollments).

## Task: create a new entry in `school`

Inserted via `mongosh` (equivalent to MongoDB Compass's "ADD DATA"), with the required fields `_id`, `name`, `address`, `principal`:

```js
db = db.getSiblingDB("schoolSystem");
db.schools.insertOne({
  _id: ObjectId("665f1fa4a7d3f1a0aabc1003"),
  name: "Lakeside Academy",
  address: "789 Birch Lane, Lakeview",
  principal: "Dr. Maria Gomez"
});
```

Result:

```
Insert result:
{
  acknowledged: true,
  insertedId: ObjectId('665f1fa4a7d3f1a0aabc1003')
}

db.schools.find():
{
  _id: ObjectId('665f1fa4a7d3f1a0aabc1001'),
  name: 'Greenwood High School',
  address: '123 Maple Street, Springfield',
  principal: 'Mr. John Adams'
}
{
  _id: ObjectId('665f1fa4a7d3f1a0aabc1002'),
  name: 'Riverside Public School',
  address: '456 Oak Avenue, Riverdale',
  principal: 'Ms. Linda Carter'
}
{
  _id: ObjectId('665f1fa4a7d3f1a0aabc1003'),
  name: 'Lakeside Academy',
  address: '789 Birch Lane, Lakeview',
  principal: 'Dr. Maria Gomez'
}
```

## RESTful API (from the provided `express-app`)

Verified against the running server:

```
$ curl http://localhost:3001/api/schools
[
  {"_id":"665f1fa4a7d3f1a0aabc1001","name":"Greenwood High School","address":"123 Maple Street, Springfield","principal":"Mr. John Adams"},
  {"_id":"665f1fa4a7d3f1a0aabc1002","name":"Riverside Public School","address":"456 Oak Avenue, Riverdale","principal":"Ms. Linda Carter"},
  {"_id":"665f1fa4a7d3f1a0aabc1003","name":"Lakeside Academy","address":"789 Birch Lane, Lakeview","principal":"Dr. Maria Gomez"}
]

$ curl http://localhost:3001/api/courses
[
  {"_id":"665f1fa4a7d3f1a0aabc2001","name":"Mathematics","description":"Algebra, Geometry and Trigonometry","schoolId":{"_id":"665f1fa4a7d3f1a0aabc1001","name":"Greenwood High School", ...}},
  {"_id":"665f1fa4a7d3f1a0aabc2002","name":"Biology","description":"Study of living organisms","schoolId":{...}},
  {"_id":"665f1fa4a7d3f1a0aabc2003","name":"History","description":"World and Indian history overview","schoolId":{...}}
]

$ curl http://localhost:3001/api/enrollments
[
  {"_id":"665f1fa4a7d3f1a0aabc3001","studentName":"Alice Johnson","courseId":{...,"name":"Mathematics"},"enrollmentDate":"2025-06-01T00:00:00.000Z"},
  {"_id":"665f1fa4a7d3f1a0aabc3002","studentName":"Bob Williams","courseId":{...,"name":"History"},"enrollmentDate":"2025-06-04T00:00:00.000Z"}
]
```

Note: the provided `server.js` runs on port **3001** (not 5000) and mounts routes at `/api/schools`, `/api/courses`, `/api/enrollments` (there is no `/api/users` route) — this is the actual behaviour of the provided starter code, which differs slightly from the port/route example mentioned in the narrative instructions text.
