const express = require('express');
const app = express();
const porta = 3010;

app.use(express.json());
app.use(express, express.urlencoded({extended: true}));

app.listen(porta, function() {
    console.log(`Porta ${porta} incializada.`)
});

require('./src/routes/index')(app)