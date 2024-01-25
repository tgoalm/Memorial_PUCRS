
const myFirstPromise = new Promise((resolve,reject) => {
    setTimeout(() => {
            resolve("Successo!");
        }, 2000);
    });

    let ifSucceed = (successMessage) => {
        console.log(`Finalizado! ${successMessage}`);
    }

    myFirstPromise
        .then(ifSucceed);
    console.log("Fim do programa")