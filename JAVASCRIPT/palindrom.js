const prompt = require("prompt-sync")();
// var i = 0, b, a;
// function reverse(n) {
//     let b = n.length;
//     let c = Math.floor(n.length / 2);
//     console.log(b, c);
//     while (b > c) {
//         if (a[i] == a[length - 1]) {
//             i++;
//             length--;
//         }
//         else {
//             console.log("NOT")
//         }
//         b--;
//     }
// }
function reverse(n) {
    let j = n.length ;
    for (let i = 0; i < n.length; i++) {
        z[j] = n[i];
        j--;
        console.log(z[j], " - ", n[i]);
    }
    console.log(z);
    if("n[i]"=="z[j]")
    {
        console.log("n is Palindrome");
    }
    else
    {
        console.log("n is not Palindrome");
    }
}
let n = prompt("Enter Number : ");
var z = n;
reverse(n);

