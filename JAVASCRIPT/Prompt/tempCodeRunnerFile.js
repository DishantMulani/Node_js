function add(number, callback) {
//     return callback(number + 10, false);
// }
// function sub(number, callback) {
//     return callback(number - 5, false);
// }
// function mul(number, callback) {
//     return callback(number * 2, false);
// }
// function div(number, callback) {
//     return callback(number / 3, false);
// }
// add(10, (addres, error) => {
//     if (!error) {
//         console.log(addres);
//         sub(addres, (subres, error) => {
//             if (!error) {
//                 console.log(subres);
//                 mul(subres, (mulres, error) => {
//                     if (!error) {
//                         console.log(mulres);
//                         div(mulres, (divres, error) => {
//                             if (!error) {
//                                 console.log(divres);
//                             }
//                         })
//                     }
//                 })
//             }
//         })
//     }
// })