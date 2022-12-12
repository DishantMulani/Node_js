let count = 1;
let jsonData = [
    {
        "key": 1,
        "value": "apple",
    }
]
let object = {}


window.onload = function () {
    let arr = [];
    const text1 = document.getElementById("t1");
    const button = document.getElementById("btn");
    button.addEventListener('click', () => {
        object.key = count++;
        object.value = text1.value
        jsonData.push(object)
        console.log(jsonData);
        ans.value = (jsonData)
    })
}