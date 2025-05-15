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

    db.query('SELECT * FROM recipes WHERE protein_type = "Pork"', (err, porkRecipes) => {
      if (err) throw err;

      db.query('SELECT * FROM recipes WHERE protein_type = "Beef"', (err, beefRecipes) => {
        if (err) throw err;
        
        db.query('SELECT * FROM recipes WHERE protein_type = "Tofu"', (err, tofuRecipes) => {
          if (err) throw err;

          res.render('recipes', {
            chickenRecipes,
            porkRecipes,
            beefRecipes,
            tofuRecipes
          });
        });
      });
    });
  });
});

// individual recipe page
app.get('/recipe/:id', (req, res) => {
  const recipeId = req.params.id;

  // fetch the recipe details by ID
  db.query('SELECT * FROM recipes WHERE id = ?', [recipeId], (err, results) => {
    if (err) throw err;

    const recipe = results[0];

    // fetch ingredients for this recipe
    db.query(`
      SELECT ingredients.*
      FROM ingredients
      JOIN recipe_ingredients ON ingredients.id = recipe_ingredients.ingredient_id
      WHERE recipe_ingredients.recipe_id = ?
    `, [recipeId], (err, ingredients) => {
      if (err) throw err;

      res.render('recipe', {
        recipe: { ...recipe, ingredients }
      });
    });
  });
});

// get-route fetches all ingredients from database and renders form
app.get('/addRecipe', (req, res) => {
  db.query('SELECT * FROM ingredients', (err, results) => {
    if (err) {
      console.error('Error fetching ingredients: ' + err.stack);
      return res.status(500).send('Server error');
    }
    res.render('addRecipe', { ingredients: results });
  });
});


// post-route inserts new recipe into recipes table and associates the
// selected ingredients using join table recipe_ingredients
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: true }));

app.post('/addRecipe', (req, res) => {
  const { name, protein_type, ingredients, instructions } = req.body;

  db.query('INSERT INTO recipes (name, protein_type, instructions) VALUES (?, ?, ?)', [name, protein_type, instructions], (err, result) => {
    if (err) {
      console.error('Error inserting recipe: ' + err.stack);
      return res.status(500).send('Server error');
    }

    const recipeId = result.insertId;

    ingredients.forEach(ingredientId => {
      db.query('INSERT INTO recipe_ingredients (recipe_id, ingredient_id) VALUES (?, ?)', [recipeId, ingredientId], (err) => {
        if (err) {
          console.error('Error inserting recipe-ingredient relation: ' + err.stack);
        }
      });
    });

    res.redirect('/recipes');
  });
});



app.listen(3000, () => {
  console.log('Server running on port 3000');
});