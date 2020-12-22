const mongoose = require('mongoose');
const userSchema = require('./userSchema');

const chatSchema = new mongoose.Schema({
correo: {
    mensaje: [{
      date: {
        type: String,
        required: true,
      },
      message: {
        type: String,
        required: true,
      },
      rol: {
      type: mongoose.Schema.Types.ObjectId,
      ref: userSchema
      }
    }],
  inicio: {
     type: Date, 
     default: Date.now 
  },
  solicitaID: {
    type: mongoose.Schema.Types.ObjectId, 
    ref: userSchema
  },
  apoyaID: {
      type: mongoose.Schema.Types.ObjectId, 
      ref: userSchema
    }
}
});

module.exports = mongoose.model('Chat', chatSchema)