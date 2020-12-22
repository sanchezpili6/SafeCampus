const mongoose = require('mongoose');
require('mongoose-type-email');

const schoolSchema = new mongoose.Schema({

  nombre: {
    type: String,
    required: true,
    min: 4
  },
  campus: {
    type: String,
    required: true,
    min: 16
  },
  correos: {
    type: [{type: mongoose.SchemaTypes.Email}],
    required: true,
    match: [/.+\@.+\..+/]
  },

});

module.exports = mongoose.model('School', schoolSchema)