const prompt = require("prompt-sync")();
// let sumof = number => {
//     let sum = 0;
//     for (let i = 0; i <= number.length; i++)
//         sum = sum + number[i];
//     check(number);
// }

// let check = number => {
//     if (number < 9) {
//         console.log(number);
//     }
//     else {
//         sumof(number);
//     }
// }
// let total = (number, callback) => {
//     return callback(number);
// }

// let number = parseInt(prompt("Enter 10 Digit Number : "));
// console.log(total(number, sumof));





// let sumof = (n) => {
//     let sum = 0;
//     while (n != 0) {
//         sum = sum + n % 10;
//         n = parseInt(n / 10);
//     }
//     return sum;
// }

// let check = (value) => {
//     if (value >= 9) {
//         return value;
//     }
//     else {
//         return 0;
//     }
// }

// function contSum(number, callback) {
//     let n = callback(number)
//     if (n > 9) {
//         let nu = sumof(n);
//         return sumof(nu);
//     }
// }

// let number = parseInt(prompt("Enter 10 Digit Number : "));
// console.log(contSum(number, sumof));






// let conArr = number => {
//     let intarr = Array.from(String(number), Number)
//     console.log(intarr);
//     sumOf(intarr);
// }
// let sumOf = n => {
//     let sum = 0;
//     for (i = 0; i < n.length; i++) {
//         sum = sum + n[i];
//         console.log(sum);
//     }
//     if (sum > 10) {
//         return conArr(sum);
//     }
//     else {
//         return sum;
//     }
// }
// let val = parseInt(prompt("Enter 10 Digit Number : "));
// console.log(conArr(val));






// let sum = (number1) => {
//     let sum1 = 0;
//     console.log(number1);
//     while (number1 != 0) {
//         sum1 = sum1 + number1 % 10;
//         number1 = parseInt(number1 / 10);
//     }
//     return sum1;
// }

// let total = (number, callback) => {
//     let n = callback(number);
//     while (n > 9) {
//         return sum(n);
//     }
//     return n;
// }

// let number = 9999999999;
// console.log(total(number, sum));


// let sum = (number1) => {
//     let sum1 = 0;
//     console.log(number1);
//     while (number1 != 0) {
//         sum1 = sum1 + number1 % 10;
//         number1 = parseInt(number1 / 10);
//     }
//     if (sum1 > 9) {
//         return sum(sum1);
//     }
//     return sum1;
// }

// let total = (number, callback) => {
//     return callback(number);
// }
// console.log(total(9898989898, sum));
