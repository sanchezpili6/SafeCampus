const mongoose = require('mongoose');

const User = new mongoose.Schema({
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
    // Regex con el atributo match
  }
}
});