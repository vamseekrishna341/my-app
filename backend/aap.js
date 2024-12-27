const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;

const db = mysql.createConnection({
  host: 'my-db-poc.cl668ku8y843.us-east-2.rds.amazonaws.com',
  user: 'admin',
  password: 'HSxm]<3f#gq6aLf<fjb2(z$3XQ)*',
  database: 'krishnadb',
});

db.connect((err) => {
  if (err) throw err;
  console.log('Connected to the database!');
});

app.get('/', (req, res) => {
  res.send('Hello World from Node.js API');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
