const express = require('express');
const app = express();
const db = require('./models/db');

// Basic route to test the server
app.get('/', (req, res) => {
  res.send('Recipe Site Home');
});

// database test - route to fetch all ingredients
app.get('/ingredients', (req, res) => {
  db.query('SELECT * FROM ingredients', (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});


app.listen(3000, () => {
  console.log('Server running on port 3000');
});