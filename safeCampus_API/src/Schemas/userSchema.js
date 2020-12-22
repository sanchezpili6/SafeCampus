const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
  nombre: {
    type: String,
    required: true,
    min: 4
  },
  escuelaID: {
    type: ObjectID,
    required: true,
    ref: 'School'
  },
  campus: {
    type: String,
    required: true,
    min: 16
  },
  correo: {
    type: String,
    required: true,
    match: [/.+\@.+\..+/, 'Please fill a valid email address']
  },
  roles: {
      type: [{
          type: String,
          enum: ['user', 'temporal']
      }],
      default: ['user']
  }
});

module.exports = mongoose.model('User', userSchema)