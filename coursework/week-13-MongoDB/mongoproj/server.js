require("dotenv").config({ path: "./config/config.env" });
const express = require("express");
const connectDB = require("./config/db");

// setting up an express server and connecting to the MongoDB database
const app = express();
app.use(express.json());

connectDB();

app.get("/", (req, res) => {
  res.send("mongoproj server is running");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server listening on port ${PORT}`));
