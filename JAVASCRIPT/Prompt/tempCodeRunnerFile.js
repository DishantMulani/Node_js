et sumof = (n) => {

    let sum = 0;
    while (n != 0) {
        sum = sum + n % 10;
        n = parseInt(n / 10);
    }
    return sum;
}

let check = (value) => {
    if (value >= 9) {
        return value;
    }
    else {
        return 0;
    }
}

function contSum(number, callback) {
    let n = callback(number)
    if (n > 9) {
        let nu = sumof(n);
        return sumof(nu);
    }
}

let number = parseInt(prompt("Enter 10 Digit Number : "));
console.log(cont