const prompt = require("prompt-sync")();

function prime(n) {
    let count=0;
    for (let i = 1; i <= n; i++) {
        if (n % i == 0) {
            count++;
        }
    }
    if (count == 2)
        console.log("your given number ", n, "is prime");
    else
        console.log("your given number ", n, "is not prime");
}

let n = parseInt(prompt("Enter Number : "));
prime(n);

