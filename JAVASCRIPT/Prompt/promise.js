// let is_shop_open = true;
// let order = (time, work) => {

//     return new Promise((resolve, reject) => {
//         if (is_shop_open) {
//             setTimeout(() => {
//                 resolve(work())
//             }, time)
//         }
//         else {
//             reject(console.log("Our shop is closed"))
//         }
//     })
// }
// order(2000, () => console.log(`${stocks.Fruits[0]} was selected`))
//     .then(() => {
//         return order(0000, () => console.log('production has started'))
//     })
//     .then(() => {
//         return order(2000, () => console.log("Fruit has been chopped"))
//     })
//     .then(() => {
//         return order(1000, () => console.log(`${stocks.liquid[0]} and ${stocks.liquid[1]} added`))
//     })
//     .then(() => {
//         return order(1000, () => console.log("start the machine"))
//     })
//     .then(() => {
//         return order(2000, () => console.log(`ice cream placed on ${stocks.holder[1]}`))
//     })
//     .then(() => {
//         return order(3000, () => console.log(`${stocks.toppings[0]} as toppings`))
//     })
//     .then(() => {
//         return order(2000, () => console.log("Serve Ice Cream"))
//     })

const prompt = require("prompt-sync")();
let sumof = (n) => {
    if (n <= 9) {
        return n;
    }
    else {
        let sum = 0;
        while (n != 0) {
            sum = sum + n % 10;
            n = parseInt(n / 10);
        }
        return sumof(sum);
    }
}
let value = (n, work) => {
    return new Promise((resolve, reject) => {
        if (n > 0) {
            resolve(console.log(work(n)));
        }
        else {
            reject(console.log(n));
        }
    })
}
let number = parseInt(prompt("Enter 10 Digit Number : "));
value(number, sumof);
