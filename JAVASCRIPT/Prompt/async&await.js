function add(number) {
    return new Promise((resolve, reject) => {
        resolve(number + 5);
    })
}
function sub(number) {
    return new Promise((resolve, reject) => {
        resolve(number - 3);
    })
}
function mul(number) {
    return new Promise((resolve, reject) => {
        resolve(number * 2);
    })
}
function div(number) {
    return new Promise((resolve, reject) => {
        resolve(number / 2 - 2);
    })
}
async function consume() {
    let addRes = await add(5);
    let subRes = await sub(addRes);
    let mulRes = await sub(subRes);
    let divRes = await sub(mulRes);
    console.log(addRes, subRes, mulRes, divRes);
};
consume();
