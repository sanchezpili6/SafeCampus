const MongoClient = require('mongodb').MongoClient;
const uri = `mongodb+srv://${process.env.DB_USER}:
            ${process.env.DB_PASS}@cluster0.5vqo1.mongodb.net/
            ${process.env.DB_NAME}?retryWrites=true&w=majority`;
const client = new MongoClient(uri, { useNewUrlParser: true });

module.exports = client;