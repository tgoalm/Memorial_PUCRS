function decidir(questao, ok, cancelar) {
    if(questao == "OK") ok()
    else cancelar();
}
function mostreOk() { console.log( "Você confirmou."); }
function mostreCancelar() { console.log( "Você cancelou a execução."); }

decidir("OK" , mostreOk, mostreCancelar);
decidir("Cancel", mostreOk, mostreCancelar);