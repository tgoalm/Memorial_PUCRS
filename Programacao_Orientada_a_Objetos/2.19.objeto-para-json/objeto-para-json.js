let estudante = {
    name: 'Pedro',
    age: 45,
    ehAdmnistrador: true,
    cursos: ['C#', 'Lua', 'PHP'],
    genero: null
};

let arquivoJson = JSON.stringify(estudante);
console.log(arquivoJson);