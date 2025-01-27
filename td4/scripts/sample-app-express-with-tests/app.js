const express = require('express');

const app = express();

app.set('view engine', 'ejs');

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

app.get('/name/:name', (req, res) => {

  res.render('hello', {name: req.params.name});
});

app.get('/add/:a/:b', (req, res) => {
  try {
    const a = parseFloat(req.params.a);
    const b = parseFloat(req.params.b);

    // Vérification des entrées
    if (isNaN(a) || isNaN(b)) {
      return res.status(400).send('Invalid input. Both parameters must be numbers.');
    }

    const sum = a + b;
    res.status(200).send(`The sum is ${sum}`);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
});

module.exports = app;
