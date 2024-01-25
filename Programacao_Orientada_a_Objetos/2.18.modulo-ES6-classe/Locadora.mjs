import {CarroComPlaca} from "./CarroComPlaca.mjs"

export class Locadora {
    #_carros

    constructor() {
        this.#_carros = []
    }

    adicionaCarro(umCarro) {
        this.#_carros.push(umCarro)
        console.log(this.#_carros.length)
    }

    consultaCarros() {
        this.#_carros.forEach((carro) =>console.log(`Carro placa: ${carro.placa};\n tq: ${carro.tanque}\n`))
    }

    abasteceCarro(index, quantidade) {
        if(index >= 0 && index < this.#_carros.length)
            this.#_carros[index].tanque = quantidade
    }
}