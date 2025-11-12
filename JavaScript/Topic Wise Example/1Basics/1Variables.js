// variables.js - Examples and notes
// var: function scoped (old), avoid for modern code
var oldVar = "I am var";
console.log("oldVar:", oldVar);

// let: block scoped - preferred for variables that can change
let count = 5;
console.log("count:", count);
count = count + 1;
console.log("updated count:", count);

// const: block scoped - read-only binding (value can be object which is mutable)
const PI = 3.14159;
console.log("PI:", PI);

// const object mutation allowed
const person = { name: "Akash" };
person.name = "Akash R.";
console.log("person:", person);

// redeclaration differences
// var x = 1; var x = 2; -> allowed
// let y = 1; let y = 2; -> error
