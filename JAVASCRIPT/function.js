// <===== 1. Name Function =====>
// <-- ex : 1 -->
// function fun_one(arg1,arg2,arg3){
//     console.log(arg1,arg2,arg3);
// }
//       Input                        Output
// fun_one("A","B","C");    ------->  A B C
// fun_one("A","B");        ------->  A B undefined
// fun_one();               ------->  undefined undefined undefined
// fun_one(undefined,"A");  ------->  undefined A undefined
// fun_one(null,null,null); ------->  null null null
// fun_one(null,"  ",null); ------->  null      null
// fun_one((),{},[]);       ------->  () {} []

// <-- ex : 2 -->
//         Input
// function fun_one(){
//     console.log("inside fun_one()");
//     return "Hello";
// }
// function fun_two(){
//     console.log("inside fun_two()");
//     return fun_one();
// }
// console.log(fun_two());

//         Output
// inside fun_two()
// inside fun_one()
// hello

// <-- ex : 3 -->
//         Input
// function fun_one(){
//     return "Hello";
// }
// function fun_two(){
//     return fun_one;
// }
// console.log(fun_two()());

//         Output
// hello

// <-- ex : 4 -->
//         Input
// function fun_one(arg1,arg2,arg3){
//     console.log(arg1(),arg2(),arg3());
// }
// function fun_two(){
//     return "Hello_1";
// }
// function fun_three(){
//     return "Hello_2";
// }
// function fun_four(){
//     return "Hello_3";
// }
// fun_one(fun_two,fun_three,fun_four);

//         Output
// Hello_1 Hello_2 Hello_3
