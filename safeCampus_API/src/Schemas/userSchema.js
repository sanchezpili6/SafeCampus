const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
correo: {
  nombre: {
    type: String,
    required: true,
    min: 4
  },
  escuela: {
    type: String,
    required: true,
    min: 10
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
}
});

module.exports = mongoose.model('User', userSchema)