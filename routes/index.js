var express = require('express');
var router = express.Router();

/* GET home page. */

router.get('/', function(req, res) {
  res.render('recetas', { title: 'EL MUNDO DE LAS RECETAS DE ANITA' });
});

module.exports = router;
