function primeiroTesteConst() {
    console.log("primeiroTesteConst")
    const const01 = "const 01"
    {
        const const02 = "const 02"
        console.log(`01a.${const01}`)
        console.log(`01b.${const02}`)
    }
    // const01 = "novo valor"
    console.log(`02a.${const01}`)
    // console.log(`02b.${const02}`) // -> Retornará erro pois variável não foi declarada no escopo de uso.
    console.log("*****************")
}

function segundoTesteConst() {
    console.log("segundoTesteConst")
    
    const const01 = {propriedade: "valor"}
    console.log(`01a.${const01.propriedade}`)

    const01.propriedade = "novo valor"
    console.log(`02a.${const01.propriedade}`)

    console.log("*****************")
}

function terceiroTesteConst() {
    console.log("terceiroTesteConst")
    
    const const01 = {propriedade: "valor"}
    console.log(`01a.${const01.propriedade}`)

    // const01 = {propriedade: "novo valor"}
    // console.log(`02a.${const01.propriedade}`) // -> Retornará erro por tentar alterar o obj.

    console.log("*****************")
}

primeiroTesteConst()
segundoTesteConst()
terceiroTesteConst()