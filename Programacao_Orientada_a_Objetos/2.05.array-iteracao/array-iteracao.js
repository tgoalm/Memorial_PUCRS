var a = []
a[0] = Math.random()
a[1] = Math.random()
a[9] = Math.random()

console.log(" -for .. in- ")
console.log("***********************\n")
for(let valor in a)
    console.log(` --> ${valor}\n`)

console.log(" -for .. of- ")
console.log("***********************\n")
for(let valor of a)
    console.log(` --> ${valor}\n`)

console.log(" -for (;;) ")
console.log("***********************\n")
for(let i = 0; i < a.length; i++)
    console.log(` --> ${i}: ${a[i]}\n`)