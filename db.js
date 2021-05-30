const Pool = require("pg").Pool;

const pool = new Pool({
  host: "ec2-52-0-114-209.compute-1.amazonaws.com",
  user: "fafvdtaumasdvr",
  password: "6315522a082dd0ddab08b1216b177b8d1a609018868f82da5ade86dc30e3ea51",
  port: 5432,
  database: "dfkfe9e5kri9pp",
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
