const prompt = require("prompt-sync")();
// ======  9  ======
// let fun_type = (a, b, c) => {

//     console.log(typeof (a));
// }

// let type;
// let arr = [1, 2, 3, 4, 5];
// let qb = {};
// let ud = undefined;
// fun_type(arr, qb, ud);

// ======  10  =======
// let arr = [];
// let identity = (r, c) => {
//     if (r == c) {
//         for (let i = 0; i < r; i++) {
//             arr.push([]);
//             for (let j = 0; j < c; j++) {
//                 if (i == j) {
//                     arr[i].push(1);
//                 }
//                 else {
//                     arr[i].push(0);
//                 }
//             }
//         }
//         return arr;
//     }
//     else {
//         return "Enter Same Size Of Row And Column";
//     }
// }

// let row = parseInt(prompt("Enter row : "));
// let col = parseInt(prompt("Enter column : "));
// console.log(identity(row, col));


// ======  11  ======
// let arr = [];
// let perfect = n => {
//     for (let i = 1; i < n; i++) {
//         if (n % i == 0) {
//             arr.push(i);
//         }
//     }
//     const initialValue = 0;
//     const sum = arr.reduce(
//         (accumulator, currentValue) => accumulator + currentValue,
//         initialValue
//     );
//     if ((sum + n) / 2 == n)
//         return "Your Given Number Is Perfect";
//     else
//         return "Your Given Number Is Not Perfect";
// }
// let number = parseInt(prompt("Enter Number : "));
// console.log(perfect(number));



// ======  12  ======
// let arr = [];
// let factors = n => {
//     for (let i = 1; i <= n; i++) {
//         if (n % i == 0) {
//             arr.push(i);
//         }
//     }
//     return arr;
// }
// let number = parseInt(prompt("Enter Number : "));
// console.log(factors(number));


// ======  13  ======
// let com = (m, n) => {
//     sum = 1;
//     for (let i = 1; i <= n; i++) {
//         sum = sum * m;
//     }
//     console.log(sum);
// }

// let hii;
// com(2, 2);


// let check = (a, b) => {
//     c = 0;
//     console.log(a.length);
//     for (let i = 0; i < a.length; i++) {
//         if (a[i] == b) {
//             c++;
//         }
//     }
//     console.log(b, c);
// }

// let a = "hello";
// let c = "l";
// check(a, c)


// 24
// let new_arr = [];
// let bubble = arr => {
//     for (let i = 0; i < arr.length; i++) {
//         for (let j = 0; j < arr.length; j++) {
//             if (arr[j] < arr[j + 1]) {
//                 let temp = arr[j];
//                 arr[j] = arr[j + 1];
//                 arr[j + 1] = temp;
//             }
//         }
//     }
//     for (let i = 0; i < arr.length; i++) {
//         new_arr.push(arr[i]);
//     }
//     return new_arr;
// }

// let arr = [12, 345, 4, 546, 122, 84, 98, 64, 9, 1, 3223, 455, 23, 234, 213]
// console.log(bubble(arr));


// let new_arr = [];
// let Sub = a => {
//     b = -1;
//     for (let i = 0; i < a.length; i++) {
//         for (let j = i; j < a.length; j++) {
//             new_arr.push(a[j]);
//         }
//         b++;
//     }
//     return new_arr;
// }

// let arr = [1, 2, 3];
// console.log(Sub(arr));








// let arr = "my name is dishant";

// let a = arr.split(" ");
// console.log(a);
// let b = 0;
// for (let i = 0; i < a.length; i++) {
//     if (b < a[i].length) {
//         b = a[i].length;
//         console.log(b);
//     }
// }

// let r = [];
// let hii = arr => {
//     for (let i = 0; i < arr.length; i++) {
//         let ca = arr[i];
//         var cv = 0;
//         for (let j = 0; j < ca.length; j++) {
//             if (cv < ca[j]) {
//                 cv = ca[j];
//             }
//         }
//         r.push(cv);
//     }
//     return r;
// }

// let arr = [[1, 2, 3, 4], [4, 5, 6], [10, 100, 9], [10, 20, 30]]
// console.log(hii(arr));


// let r = [];
// let hii = arr => {
//     for (let i = 0; i < arr.length; i++) {
//         // console.log(arr[i]);
//         let c = Math.max(arr);
//         console.log(c);
//     }
// }

// let arr = [[1, 2, 3, 4], [4, 5, 6], [10, 100, 9], [10, 20, 30]]
// console.log(hii(arr));