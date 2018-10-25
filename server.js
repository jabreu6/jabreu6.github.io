var express = require('express');
var nodemailer = require('nodemailer');
const conn = require('./db');
//var config = require('./config.js');

var app = express();

app.use(express.static(__dirname + '/public'));

app.get('/', function (req, res) {
    res.sendfile('./public/index.html');
});

app.get('/send', function (req, res) {

    console.log()
    console.log()
    console.log()
    console.log()

    console.log(req.query.titulo)
    console.log(req.query.descripcion)
    console.log(req.query.ubicacion)
    console.log(req.query.estado)
    console.log(req.query.precio)
    

    conn.db.none('INSERT INTO public.propiedad (titulo, descripcion, ubicacion, estado, precio) '+
                'VALUES ($1, $2, $3, $4, $5) ', [req.query.titulo, req.query.descripcion, req.query.ubicacion, req.query.estado, req.query.precio])
    .then(function (data) {
      console.log('Hasta aqui 200');
      res.status(200).json({
        statusCode: 200,
        data: "data"
      });
    })
    .catch(function (err) {
      console.log(err);
      res.status(500).send(err);
    });
    
    
    //la consulta
    /*
    let v =  conn.db.any('SELECT * FROM public.propiedad')
    .then(function (data) {

        console.log("la dataaaaaaaa de hoy")
        console.log(data)
        res.status(200).json({
            statusCode: 200,
            data: data
        });
    })
    .catch(function (err) {
      res.status(500).send(err);
    });*/

});


app.get('/received', function (req, res) {

     
    let v =  conn.db.any('SELECT * FROM public.propiedad')
    .then(function (data) {

        console.log("la dataaaaaaaa de hoy")
        console.log(data)
        res.status(200).json({
            statusCode: 200,
            data: data
        });
    })
    .catch(function (err) {
      res.status(500).send(err);
    });

});

app.listen(8080, function (err) {
    if (err) {
        console.log(err);
    } else {
        console.log("Listening on port on 8080");
    }
});
