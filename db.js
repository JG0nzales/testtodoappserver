const Pool = require("pg").Pool;

const pool = new Pool({
  host: "ec2-54-197-100-79.compute-1.amazonaws.com",
  user: "blbghqlicdaaxo",
  password: "70d16df703e224d562b719b731fcfdcd0e20641d9418a7c2d1daf4693a138b07",
  port: 5432,
  database: "dfgc0vahfidjji",
  ssl: {
    rejectUnauthorized: false
  }
});

// "bcrypt": "^4.0.0",
// "cors": "^2.8.5",
// "dotenv": "^8.2.0",
// "express": "^4.17.1",
// "express-validator": "^6.4.0",
// "jsonwebtoken": "^8.5.1",
// "pg": "^7.18.2"

module.exports = pool;
