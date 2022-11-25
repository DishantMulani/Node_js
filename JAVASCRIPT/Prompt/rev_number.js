const prompt = require("prompt-sync")();
var rem;
var rev = 0;
var n;


function reverse(n) {
    console.log("Given Number =",n);
    while (n > 0) {
        rem = n % 10;
        rev = (rev * 10) + rem;
        n = Math.floor(n /= 10);
    }
    return rev;
}
n = parseInt(prompt("Enter Number : "));
console.log(reverse(n));

