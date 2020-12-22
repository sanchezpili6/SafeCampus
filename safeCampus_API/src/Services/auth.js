const User = require('../Schemas/userSchema');

exports.postUser = async ({body}, res)  => {

  const {correo, escuela, campus, nombre} = body;
  
  const newUsers = new User ({
    nombre,
    correo,
    escuela,
    campus
  });

  try {
    const savedUser = await newUsers.save();
      res.send(savedUser);
  } catch (e) {
      res.send(e.message)
  }
}

exports.getUser = async ({body}, res) => {


}


