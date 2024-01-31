const funcoes = require('./funcoes')

test('Dois mais dois deverá ser quatro', () => {
    expect(funcoes.somarDoisValores(2, 2))
    .toBe(4);
});

test('Deve ser null', () => {
    expect(funcoes.sempreNulo())
    .toBe(null);
});

test('Código 100 deve ser permitido', () => {
    expect(funcoes.codigoValido(100))
    .toBeTruthy();
});

test('Código 101 deve ser permitido', () => {
    expect(funcoes.codigoValido(101))
    .toBeTruthy();
});

test('Código -1 não deve ser permitido', () => {
    expect(funcoes.codigoValido(-1))
    .toBeFalsy();
});

test('Deve inverter uma String.', () => {
    expect(funcoes.inverterString('Java'))
    .toEqual('avaJ');
});

const casosInversaoString = [['DANIEL', 'LEINAD'], ['ANA', 'ANA'], ['Jest', 'tseJ']];
describe('Inversão de Strings', () => {
    test.each(casosInversaoString)(
        'inversão de %p -> %p',
        (original, inversaoEsperada) => {
            const resultado = funcoes.inverterString(original);
            expect(resultado).toEqual(inversaoEsperada);
        }
    )
});

test('[Promisse] Deve carregar o primeiro usuário de teste -> Leanne Graham', () => {
    expect.assertions(1);
    return funcoes.buscarUsuario1().then(dados => {
        expect(dados.name).toEqual('Leanne Graham');
    })
});

test('[AsyncAwait] Deve carregar o primeiro usuário de teste -> Leanne Graham', async () => {
    expect.assertions(1);
    const dados = await funcoes.buscarUsuario1();
    expect(dados.name).toEqual('Leanne Graham');
});


