const AuthService = require('../Services/auth')    

exports.postUser = async function ({body}, res) {
    // Validate request parameters, queries using express-validator

    try {
        const user = await AuthService.postUser({body},res)
        return res.status(200).json({ status: 200, data: user, message: "Succesfully" });
    } catch (e) {
        return res.status(400).json({ status: 400, message: e.message });
    }
}