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
// function reverse(n) {
//     let j = n.length;
//     for (let i = 0; i < n.length; i++) {
//          a[j] = n[i];
//         j--;
//         console.log(a[j], " - ", n[i]);
//     }
//     for (j = 0; j < n.length; j++) {
//         console.log(z[j]);
//     }
//     if ("n[i]" == "z[j]") {
//         console.log("n is Palindrome");
//     }
//     else {
//         console.log("n is not Palindrome");
//     }
// }
// let n = prompt("Enter Number : ");
// var z = n;
// let a;
// reverse(n);

function checkPalindrome(string) {
    const len = string.length;
    for (let i = 0; i < len / 2; i++) {
        if (string[i] !== string[len - 1 - i]) {
            return 'It is not a palindrome';
        }
    }
    return 'It is a palindrome';
}

const string = prompt('Enter a string: ');
const value = checkPalindrome(string);

console.log(value);




