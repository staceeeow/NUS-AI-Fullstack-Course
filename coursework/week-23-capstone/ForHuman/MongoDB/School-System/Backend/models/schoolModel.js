const mongoose = require('mongoose');

const schoolSchema = new mongoose.Schema({
  name: String,
  address: String,
  established: Number
});

module.exports = mongoose.model('School', schoolSchema);

