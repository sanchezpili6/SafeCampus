const mongoose = require('mongoose');

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
      //user schema type
      }
    }],
  inicio: {
    
  },
  chatID: {
    
  },
  solicitaID: {
  
  },
  apoyaID: {
     
  }
}
});

module.exports = mongoose.model('Chat', chatSchema)