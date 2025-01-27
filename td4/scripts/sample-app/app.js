const express = require('express');

const app = express();

app.set('view engine', 'ejs');

const sanitizeHtml = require('sanitize-html');

app.get('/name/:name', (req, res) => {
  try {
    const rawName = req.params.name || '';
    
    // Nettoyer l'entrée utilisateur pour empêcher les scripts malveillants
    const sanitizedName = sanitizeHtml(rawName, {
      allowedTags: [], // Pas de tags HTML autorisés
      allowedAttributes: {} // Pas d'attributs autorisés
    });

    res.status(200).send(`Hello, ${sanitizedName}!`);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
});



module.exports = app;
