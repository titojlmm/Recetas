var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/testDB', function(req, res) {
  res.send('respond with a resource');
});

module.exports = router;

/*
var express = require('express');
var sqlite3 = require('sqlite3').verbose();

var router = express.Router();
var file = "db/recetas.db";
var db = new sqlite3.Database(file);

db.all("SELECT * FROM TB_RECETA_INGREDIENTES", function(err, rows) {
    rows.forEach(function (row) {
        console.log(row.STRNOMBRE, row.ID_TIPO);
    });
});
db.close();

router.get('/testDB', function(req, res) {
  res.render('testDB', { title: 'TEST_DB' });
});

module.exports = router;
*/