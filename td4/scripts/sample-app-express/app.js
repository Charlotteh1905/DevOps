const express = require('express');

const app = express();
const port = process.env.PORT || 8080;

// Route pour la page d'accueil
app.get('/', (req, res) => {
  res.send('Welcome to the homepage!');
});
app.get('/name/:name', (req, res) => {
  const name = req.params.name; // Récupération du paramètre "name" dans l'URL
  res.send(`Hello, ${name}!`);  // Utilisation de backticks pour insérer le paramètre
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});