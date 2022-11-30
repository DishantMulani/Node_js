
let sumof = number => {
    sum = 0
    i = 0; i <= number.length; i++
    sum = sum + number[i];
    check(number);
}

let check = number => {
    if (number < 9) {
        console.log(number);
    }
    else {
        sumof(number);
    }
}
let total = (number, callback) => {
    return callback(number);
}