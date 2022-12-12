
window.onload = function () {
    let arr = [];
    const text1 = document.getElementById("t1");
    const button = document.getElementById("btn");
    const ans = document.getElementById("pg1");
    button.addEventListener('click', () => {
        arr.push(text1.value);
        console.log(arr);
        ans.value = ("[" + arr + "]");
    })
}
