/**
 * Definição das varriáveis
 */
var prompt = require('prompt-sync')();
var soap = require('soap');
var urlCalculator = 'http://www.dneonline.com/calculator.asmx?wsdl';

/**
 * Função para seleção da operação que deseja utilizar.
 */
function selecionaOperacao(operacao) {
    switch (operacao) {
        case '1':
            return 'Add';
        case '2':
            return 'Subtract';
        case '3':
            return 'Multiply';
        case '4':
            return 'Divide';
        default:
            console.log(`O valor ${operacao} é inválido. O programa será encerrado.`);
            process.exit(0);
    }
}

/**
 * Recebendo os valores de entrada para cálculo
 */
console.log('Selecione a operação desejada:\n1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n------------------------------\n');
var operacao = selecionaOperacao(prompt('-> '));

var intA = parseInt(prompt('Digite o primeiro valor: '));
var intB = parseInt(prompt('Digite o segundo valor: '));
/**
 * Criação do cliente SOAP e solicitação da descrição do Web Service.
 */
soap.createClient(urlCalculator, function(erro, cliente) {
    // console.log('Descreve o WSDL -> ', cliente.describe().Calculator.CalculatorSoap)

    if(operacao == 'Add') {
        cliente.Add({intA, intB}, function(erro, resultado) {
            if(erro) 
                console.log(erro);
            else
                console.log("A soma é " + resultado.AddResult);
        })
    }
    if(operacao == 'Subtract') {
        cliente.Subtract({intA, intB}, function(erro, resultado) {
            if(erro) 
                console.log(erro);
            else
                console.log("A subtração é " + resultado.SubtractResult);
        })
    }
    if(operacao == 'Multiply') {
        cliente.Multiply({intA, intB}, function(erro, resultado) {
            if(erro) 
                console.log(erro);
            else
                console.log("A multiplicação é " + resultado.MultiplyResult);
        })
    }
    if(operacao == 'Divide') {
        cliente.Divide({intA, intB}, function(erro, resultado) {
            if(erro) 
                console.log(erro);
            else
                console.log("A divisão é " + resultado.DivideResult);
        })
    }
})