require('dotenv').config()
const cool = require('cool-ascii-faces')
const express = require('express')
const port = process.env.PORT || 3001
const app = express()

app.get('/', (req, res) => {
    console.log('New feature.');
});

app.get('/feature2', (req, res) => {
    console.log('New feature2');
});

app.get('/', (req, res) => {
    console.log('New feature3');
});

app.get('/cool', (req, res) => {
    res.send(cool());
});

app.listen(port, () => {
    console.log(`Start listening ${port}.`);
});