// import the mongoose module
const mongoose = require("mongoose");

//define the scheme to hold structure of documents
const Schema = mongoose.Schema; 

// connect to the MongoDB database using the connection string from environment variables
const connectDB = async () => {
    const conn = await mongoose.connect(process.env.MONGO_URI);
    console.log(`MongoDB Connected: ${conn.connection.host}`);

    // await createUser("Jane Doe", "jane@example.com", "mypassword123");
    // await createUser("John Smith", "john@example.com", "mypassword456");
    // await listUsers();
    // await updateUser("Jane Doe", "Jenny Doe");
    // await listUsers();
}

// Define User Schema
const userSchema = new mongoose.Schema({
  name: {
    type: String,
    trim: true,
    required: "Name is required",
  },
  email: {
    type: String,
    trim: true,
    required: "Email is required",
    unique: "Email already exists",
    match: [/.+\@.+\..+/, "Please fill a valid email address"],
  },
  hashed_password: {
    type: String,
    required: "Password is required",
  },
  salt: String,
  updatedAt: Date,
  createdAt: {
    type: Date,
    default: Date.now,
  }
});

// compile User model from the schema
const User = mongoose.model("User", userSchema);

// Create
async function createUser(name, email, password) {
  const user = new User({ name: name, email: email, hashed_password: password });
  await user.save();
  console.log("New user: " + name + " Email: " + email);
}

// Read all
async function listUsers() {
  const users = await User.find({},{name:1,email:1,_id:0});
  console.log(users);
}

// Read one
async function getUserById(id) {
  const user = await User.findById(id);
  console.log(user);
}

// Update
async function updateUser(name, newname) {
  const user = await User.updateOne({ name: name }, {$set: { name: newname } });
  console.log("Updated user: " + name + " to: " + newname);
}

//Delete one
async function deleteUserById(id) {
  const user = await User.findByIdAndDelete(id);
  console.log("Deleted user with id: " + id);
}

// Delete
async function deleteUser() {
  await User.deleteMany();
  console.log("Deleted all users");
}

module.exports = connectDB;