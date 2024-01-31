const axios = require('axios');

const funcoes = {
    somarDoisValores: (valorUm, valorDois) => valorUm + valorDois,
    sempreNulo: () => null,
    codigoValido: function (codigo) {
        if(codigo >= 100 && codigo <= 999)
            return true;
        else
            return false; 
    },
    inverterString: str => str
    .split('')
    .reverse('')
    .join(''),
    funcaoNaoTestada: (v) => v + 1,
    buscarUsuario1: () => axios.get('https://jsonplaceholder.typicode.com/users/1')
        .then(resultado => resultado.data)
        .catch(err => 'erro ao recuperar usuário')
}
module.exports = funcoes;