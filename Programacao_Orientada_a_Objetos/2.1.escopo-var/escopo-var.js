function primeiroTesteVar() {
    console.log("primeiroTesteVar")
    var var01 = "var 01"
    {
        var var02 = "var 02"
        console.log(`01a.${var01}`)
        console.log(`01b.${var02}`)
    }
    console.log(`02a.${var01}`)
    console.log(`02b.${var02}`)
    console.log("*****************")
}

function segundoTesteVar() {
    console.log("segundoTesteVar")
    var var01 = "var 01"
    if(1 == 0) {
        var var02 = "var 02"
        console.log(`01a.${var01}`)
        console.log(`01b.${var02}`)
    }
    console.log(`02a.${var01}`)
    console.log(`02b.${var02}`)
    console.log("*****************")
}

function terceiroTesteVar() {
    console.log("terceiroTesteVar")
    var var01 = "var 01"
    {
        console.log(`01a.${var01}`)
        var var01 = "var 02"
        console.log(`02a.${var01}`)
    }
    var var01 = "var 03"
    console.log(`03a.${var01}`)
    console.log("*****************")
}

primeiroTesteVar()
segundoTesteVar()
terceiroTesteVar()