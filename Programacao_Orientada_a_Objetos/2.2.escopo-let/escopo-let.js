function primeiroTesteLet() {
    console.log("primeiroTesteLet")
    let let01 = "let 01"
    {
        let let02 = "let 02"
        console.log(`01a.${let01}`)
        console.log(`01b.${let02}`)
    }
    console.log(`02a.${let01}`)
    console.log("*****************")
}

function segundoTesteLet() {
    console.log("segundoTesteLet")
    let let01 = "let 01"
    {
        let let02 = "let 02"
        console.log(`01a.${let01}`)
        console.log(`01b.${let02}`)
    }
    console.log(`02a.${let01}`)
    // console.log(`02b.${let02}`) // -> Retornará erro pois variável não foi declarada no escopo de uso.
    console.log("*****************")
}

function terceiroTesteLet() {
    console.log("terceiroTesteLet")
    let let01 = "let 01"
    {
        console.log(`01a.${let01}`)
        // let let01 = "let 02" // -> Retornará erro pois não posso redefinir a mesma variável.
        console.log(`02a.${let01}`)
    }
    console.log(`03a.${let01}`)
    console.log("*****************")
}

primeiroTesteLet()
segundoTesteLet()
terceiroTesteLet()