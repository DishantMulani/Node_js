const prompt = require("prompt-sync")();

function square_qube(n) {
    let square = [];
    let qube = [];
    for (let i = 0; i < n.length; i++) {
        square.push(n[i] * n[i]);
        qube.push(n[i] * n[i] * n[i]);
    }
    return [square, qube];
}

let a = parseInt(prompt("Enter Size Of Array : "));
let b = [];
for (let j = 0; j < a; j++) {
    b.push(parseInt(prompt("Enter value : ")));
}
console.log(square_qube(b));