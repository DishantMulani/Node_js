window.onload = function () {

    const text1 = document.getElementById("t1");
    const text2 = document.getElementById("t2");
    const button = document.getElementById("btn");
    const ans = document.getElementById("ans");
    button.addEventListener('click', () => {
        console.log("Button Clicks");
        console.log(`${text1} and ${text2}`)
        ans.value = (+text1.value + +text2.value)
    })
}
