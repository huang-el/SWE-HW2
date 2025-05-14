const express = require('express');
const app = express();
const db = require('./models/db');

app.set('view engine', 'ejs');

// // Basic route to test the server
// app.get('/', (req, res) => {
//   res.send('Recipe Site Home');
// });

// database test - route to fetch all ingredients
app.get('/ingredients', (req, res) => {
  db.query('SELECT * FROM ingredients', (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

// render home.ejs when visiting root url
app.get('/', (req, res) => {
  res.render('home');
});

// query database & categorize recipes by protein type + render page
app.get('/recipes', (req, res) => {
  db.query('SELECT * FROM recipes WHERE protein_type = "Chicken"', (err, chickenRecipes) => {
    if (err) throw err;

    db.query('SELECT * FROM recipes WHERE protein_type = "Beef"', (err, beefRecipes) => {
      if (err) throw err;

      db.query('SELECT * FROM recipes WHERE protein_type = "Tofu"', (err, tofuRecipes) => {
        if (err) throw err;
        
        res.render('recipes', {
          chickenRecipes,
          beefRecipes,
          tofuRecipes
        });
      });
    });
  });
});



app.listen(3000, () => {
  console.log('Server running on port 3000');
});