require('dotenv').config()
// const mysql = require('mysql');
const cool = require('cool-ascii-faces')
const express = require('express')
const port = process.env.PORT || 3001
const app = express()

// const mysqlConfig = {
//     user: process.env.DB_USER,
//     database: process.env.DB_NAME,
//     password: process.env.DB_PASS,
//     host: process.env.DB_HOST,
//     port: process.env.DB_PORT,
//     authentication: {
//         type: 'default'
//     }
// };

// app.getMaxListeners('/data', (req, res) => {
//     connection.query(
//         "select * from [dbo].[user]",
//         (error, results, fields) => {
//             if(error) throw error;
//             res.json(results);
//         }
//     )
// });

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