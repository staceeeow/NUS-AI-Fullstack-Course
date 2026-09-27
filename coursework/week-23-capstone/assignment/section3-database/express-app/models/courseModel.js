const mongoose = require('mongoose');

const courseSchema = new mongoose.Schema({
  title: String,
  description: String,
  schoolId: { type: mongoose.Schema.Types.ObjectId, ref: 'School' }
});

module.exports = mongoose.model('Course', courseSchema);
