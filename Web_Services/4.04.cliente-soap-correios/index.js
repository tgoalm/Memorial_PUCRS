var prompt = require('prompt-sync')();
const soap = require('soap');
const url = 'https://apps.correios.com.br/SigepMasterJPA/AtendeClienteService/AtendeCliente?wsdl';
console.log('Digite o CEP.\nApenas números!')
var cep = prompt("-> ")

soap.createClient(url, function(erro, cliente) {
    //console.log('Descreve o WSDL -> ', resultado.describe().AtendeClienteService.AtendeClientePort);
    cliente.consultaCEP({cep: cep}, function(erro, resultado) {
        if(erro) 
            console.log(erro);
        else
            console.log(resultado);
    })
})