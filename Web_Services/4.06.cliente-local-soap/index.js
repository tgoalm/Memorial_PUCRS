var soap = require('soap');
var url = 'http://localhost:8001/calculadora?wsdl';
var prompt = require('prompt-sync')();

/**
 * Função para seleção da operação que deseja utilizar.
 */
function selecionaOperacao(operacao) {
    switch (operacao) {
        case '1':
            return 'somar';
        case '2':
            return 'multiplicar';
        default:
            console.log(`O valor ${operacao} é inválido. O programa será encerrado.`);
            process.exit(0);
    }
}

/**
 * Recebendo os valores de entrada para cálculo
 */
console.log('Selecione a operação desejada:\n1 - Adição\n2 - Multiplicação\n------------------------------\n');
var operacao = selecionaOperacao(prompt('-> '));

var valorA = parseInt(prompt('Digite o primeiro valor: '));
var valorB = parseInt(prompt('Digite o segundo valor: '));

soap.createClient(url, function(erro, cliente) {
    if (erro) throw erro;
    console.log(cliente.describe().ws.calc);

    if(operacao == 'multiplicar') {
        cliente.multiplicar({a: valorA, b: valorB},function(erro, resposta){
            if (erro) throw erro;
            console.log(resposta);
        });
    }
    if(operacao == 'somar') {
        cliente.somar({a: valorA, b: valorB},function(erro, resposta){
            if (erro) throw erro;
            console.log(resposta);
        });
    }
});