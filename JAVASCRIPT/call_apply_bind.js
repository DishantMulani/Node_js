let student1 = {
    name: "dishant",
    age: "20",
    course: "Fullstack"
}
let student2 = {
    name: "gautam",
    age: "19",
    course: "node js"
}
let student3 = {
    name: "Harsh",
    age: "undefine",
    course: "navri bazar"
}
let getStudentsName = function (city,state) {
    console.log(this.name," - ",city," - ",state);
}
// call
getStudentsName.call(student1,"surat","gujarat");

//apply
getStudentsName.apply(student1,["surat","gujarat"]);

//bind
let useAfter = getStudentsName.bind(student1,"surat","gujarat");
useAfter();