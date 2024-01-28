/**
 * Cria o Web Service, necesário utilizar cliente para teste (4.06.cliente-local-soap).
 */

const express = require('express')
const soap = require('soap');
const fs = require('fs');
const app = express();
const porta = 8001;

var myservice = {
    ws: {
            calc: {
                somar : function(args) {
                var n = 1*args.a + 1*args.b;
                return { sumres : n };
            },
            multiplicar : function(args) {
                var n = args.a * args.b;
                return { mulres : n };
            }
        }
    }
};

var xml = require('fs').readFileSync('calculadora.wsdl', 'utf8');

app.listen(porta, function() {
    soap.listen(app, '/calculadora', myservice, xml, function(){
        console.log(`Servidor inicializado na porta ${porta}.`);
    });
});