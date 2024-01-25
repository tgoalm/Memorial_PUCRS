var a = []
a[0] = Math.random()
console.log(a.length)
for(let valor in a)
    console.log(` --> ${valor}`)

console.log("***************")

a.push(Math.random())
console.log(a.length)
for(let valor in a)
    console.log(` --> ${valor}`)

console.log("***************")

a[9] = Math.random()
console.log(a.length)
for(let valor in a)
    console.log(` --> ${valor}`)

console.log("***************")

for(let i = 0; i < a.length; i++)
    console.log(` --> ${i}: ${a[i]}`)